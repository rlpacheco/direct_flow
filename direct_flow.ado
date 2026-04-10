/* 
direct_flow
Fluxograma para RS - programa bilingue
v12 (refatorado)
10/04/2026

Rafael Leite Pacheco
rleitepacheco@hotmail.com 

Modelos disponíveis:
  1  = RS com completed/ongoing + síntese qualitativa/quantitativa
  2  = como 1, com caixa "após duplicatas"
  3  = como 2, com awaiting classification
  4  = como 1, com awaiting classification
  5  = RS simples com awaiting (sem completed/ongoing, sem síntese)
  6  = RS simples (sem awaiting, sem completed/ongoing, sem síntese)
  7  = RS com completed/ongoing, sem síntese
  8  = RS com "contribuíram para análise de desfechos"
  overview_1 = Overview simples
  overview_2 = Overview com caixa "após duplicatas"
  overview_3 = Overview com "após duplicatas" + awaiting
  overview_4 = Overview com awaiting

Idiomas: pt, en

Exemplo de uso:
  direct_flow, model(1) language(pt) ///
    n_databases(1205) n_other_sources(12) n_duplicates(350) ///
    n_first_phase(867) n_excluded_first_phase(790) ///
    n_second_phase(77) n_excluded_second_phase(65) ///
    n_included_studies(10) n_included_reports(12) ///
    n_included_completed(8) n_included_ongoing(2) ///
    n_included_qualitative(10) n_included_quantitative(7)
*/

capture program drop direct_flow

program define direct_flow

	syntax , model(string) language(string) ///
		n_databases(string) n_other_sources(string) n_duplicates(string) ///
		n_first_phase(string) n_excluded_first_phase(string) ///
		n_second_phase(string) n_excluded_second_phase(string) ///
		n_included_studies(string) n_included_reports(string) ///
		[ n_after_duplicates(string) n_awaiting_classification(string) ///
		n_included_completed(string) n_included_ongoing(string) ///
		n_included_with_results(string) ///
		n_included_qualitative(string) n_included_quantitative(string) ]

	* ---------------------------------------------------------------
	* 1. Validação
	* ---------------------------------------------------------------
	local valid_models "1 2 3 4 5 6 7 8 overview_1 overview_2 overview_3 overview_4"
	local model_ok = 0
	foreach m of local valid_models {
		if "`model'" == "`m'" local model_ok = 1
	}
	if `model_ok' == 0 {
		display as error "model() invalido: `model'"
		display as error "Opcoes: `valid_models'"
		exit 198
	}
	if !inlist("`language'", "pt", "en") {
		display as error "language() deve ser pt ou en"
		exit 198
	}

	* ---------------------------------------------------------------
	* 2. Flags do modelo
	* ---------------------------------------------------------------
	local is_overview  = (strpos("`model'", "overview") > 0)
	local show_box4    = inlist("`model'", "2", "3", "overview_2", "overview_3")
	local show_await   = inlist("`model'", "3", "4", "5", "overview_3", "overview_4")
	local show_complet = inlist("`model'", "1", "2", "3", "4", "7", "8")
	local show_synth   = inlist("`model'", "1", "2", "3", "4")
	local show_wresult = ("`model'" == "8")

	* Validação condicional
	if `show_box4' & "`n_after_duplicates'" == "" {
		di as error "model(`model') exige n_after_duplicates()"
		exit 198
	}
	if `show_await' & "`n_awaiting_classification'" == "" {
		di as error "model(`model') exige n_awaiting_classification()"
		exit 198
	}
	if `show_complet' & ("`n_included_completed'" == "" | "`n_included_ongoing'" == "") {
		di as error "model(`model') exige n_included_completed() e n_included_ongoing()"
		exit 198
	}
	if `show_synth' & ("`n_included_qualitative'" == "" | "`n_included_quantitative'" == "") {
		di as error "model(`model') exige n_included_qualitative() e n_included_quantitative()"
		exit 198
	}
	if `show_wresult' & "`n_included_with_results'" == "" {
		di as error "model(`model') exige n_included_with_results()"
		exit 198
	}

	* ---------------------------------------------------------------
	* 3. Salvar fonte e aplicar Times New Roman
	* ---------------------------------------------------------------
	local prev_font "$S_GXFONT"
	graph set window fontface "Times New Roman"

	* ---------------------------------------------------------------
	* 4. Atalho idioma
	* ---------------------------------------------------------------
	local pt = ("`language'" == "pt")

	* ---------------------------------------------------------------
	* 5. Textos das caixas
	* ---------------------------------------------------------------

	** Caixas 1-2: fontes
	if `pt' {
		local t1 `""Referências identificadas" "pelas estratégias de busca" "(n = `n_databases')""'
		local t2 `""Referências identificadas" "em outras fontes" "(n = `n_other_sources')""'
	}
	else {
		local t1 `""Records identified" "from search strategies" "(n = `n_databases')""'
		local t2 `""Records identified" "from other sources" "(n = `n_other_sources')""'
	}

	** Caixa 3: duplicatas
	if `pt' {
		local t3 `""Duplicatas eliminadas" "(n = `n_duplicates')""'
	}
	else {
		local t3 `""Duplicates eliminated" "(n = `n_duplicates')""'
	}

	** Caixa 4: após duplicatas
	if `show_box4' {
		if `pt' {
			local t4 `""Referências após eliminar duplicatas" "(n = `n_after_duplicates')""'
		}
		else {
			local t4 `""Records after removing duplicates" "(n = `n_after_duplicates')""'
		}
	}

	** Caixa 5: primeira fase
	if `pt' {
		local t5 `""Referências avaliadas pelo título/resumo" "(n = `n_first_phase')""'
	}
	else {
		local t5 `""Records evaluated by title/abstract" "(n = `n_first_phase')""'
	}

	** Caixa 6: excluídos fase 1
	if `pt' {
		local t6 `""Referências eliminadas" "(n = `n_excluded_first_phase')""'
	}
	else {
		local t6 `""Records eliminated" "(n = `n_excluded_first_phase')""'
	}

	** Caixa 7: segunda fase
	if `pt' {
		local t7 `""Referências avaliadas em texto completo" "(n = `n_second_phase')""'
	}
	else {
		local t7 `""Records evaluated in full-text" "(n = `n_second_phase')""'
	}

	** Caixa 8: excluídos fase 2 (± awaiting)
	if `pt' {
		local t8 `""Referências excluídas" "com razões" "(n = `n_excluded_second_phase')""'
		if `show_await' {
			local t8 `"`t8' "Referências aguardando" "classificação" "(n = `n_awaiting_classification')""'
		}
	}
	else {
		local t8 `""Records excluded" "with reasons" "(n = `n_excluded_second_phase')""'
		if `show_await' {
			local t8 `"`t8' "Records awaiting" "classification" "(n = `n_awaiting_classification')""'
		}
	}

	** Caixa 9: incluídos
	if `is_overview' {
		if `pt' {
			local t9 `""Referências de revisões incluídas" "(n = `n_included_reports')" "Revisões incluídas" "(n = `n_included_studies')""'
		}
		else {
			local t9 `""Reports of included reviews" "(n = `n_included_reports')" "Reviews included" "(n = `n_included_studies')""'
		}
	}
	else if `show_wresult' {
		if `pt' {
			local t9 `""Referências de estudos incluídos (n = `n_included_reports')" "Estudos incluídos na revisão (n = `n_included_studies')" "Estudos que contribuíram para análise de desfechos (n = `n_included_with_results')""'
		}
		else {
			local t9 `""Reports of included studies (n = `n_included_reports')" "Studies included in the review (n = `n_included_studies')" "(`n_included_completed' completed / `n_included_ongoing' ongoing)""'
		}
	}
	else if `show_complet' {
		if `pt' {
			local plural "finalizados"
			if "`n_included_completed'" == "1" local plural "finalizado"
			local t9 `""Referências de estudos incluídos (n = `n_included_reports')" "Estudos incluídos na revisão (n = `n_included_studies')" "(`n_included_completed' `plural' / `n_included_ongoing' em andamento)""'
		}
		else {
			local t9 `""Reports of included studies (n = `n_included_reports')" "Studies included in the review (n = `n_included_studies')" "(`n_included_completed' completed / `n_included_ongoing' ongoing)""'
		}
	}
	else {
		if `pt' {
			local t9 `""Referências de estudos incluídos (n = `n_included_reports')" "Estudos incluídos na revisão (n = `n_included_studies')""'
		}
		else {
			local t9 `""Reports of included studies (n = `n_included_reports')" "Studies included in the review (n = `n_included_studies')""'
		}
	}

	** Caixa 10: síntese
	if `show_synth' {
		if `pt' {
			local t10 `""Estudos incluídos na síntese qualitativa (n = `n_included_qualitative')" "Estudos incluídos na síntese quantitativa (n = `n_included_quantitative')""'
		}
		else {
			local t10 `""Studies included in qualitative synthesis (n = `n_included_qualitative')" "Studies included in quantitative synthesis (n = `n_included_quantitative')""'
		}
	}

	* ---------------------------------------------------------------
	* 6. Coordenadas verticais
	* ---------------------------------------------------------------
	local y_top    = 3.8
	local y_phase1 = 2.5
	local y_excl1  = 2.05
	local y_phase2 = 1.7
	local y_box4   = 3.0

	** Destino da primeira seta vertical (topo → box4 ou phase1)
	if `show_box4' {
		local y_arrow1_end = 3.15
	}
	else {
		local y_arrow1_end = 2.65
	}

	** Posição da caixa de duplicatas (3 à direita)
	** Em modelos sem síntese e sem awaiting, sobe para 3.15
	if `show_synth' | `show_await' {
		local y_dup = 3.35
	}
	else {
		local y_dup = 3.15
	}

	** Posição da caixa 8 (excluídos fase 2 à direita)
	if `show_synth' {
		local y_excl2 = 1.25
	}
	else if `show_await' {
		if inlist("`model'", "4") {
			local y_excl2 = 1.25
		}
		else {
			local y_excl2 = 1.14
			if inlist("`model'", "5") local y_excl2 = 1.15
		}
	}
	else {
		local y_excl2 = 1.15
	}

	** Posição da caixa 9 (incluídos) e destino da seta fase2→incluídos
	if `show_synth' {
		local y_incl  = 0.7
		local y_synth = 0.3
		local y_arrow_p2_end = 0.90
	}
	else if `is_overview' {
		local y_incl = 0.4
		local y_arrow_p2_end = 0.63
	}
	else if `show_complet' | `show_wresult' {
		local y_incl = 0.4
		local y_arrow_p2_end = 0.60
	}
	else {
		local y_incl = 0.4
		local y_arrow_p2_end = 0.55
	}

	** Offsets horizontais das setas para a direita
	if `pt' {
		local x_dup   = 3.49
		local x_excl1 = 3.47
		if `show_await' {
			local x_excl2 = 3.43
		}
		else {
			local x_excl2 = 3.50
		}
		* Modelos sem síntese e sem awaiting: ajustar excl1 e excl2
		if !`show_synth' & !`show_await' {
			local x_excl1 = 3.45
			local x_excl2 = 3.50
		}
	}
	else {
		local x_dup   = 3.50
		local x_excl1 = 3.60
		local x_excl2 = 3.65
	}

	* ---------------------------------------------------------------
	* 7. Estilos
	* ---------------------------------------------------------------
	local S_box  ", box margin(small) size(small) bcolor(bluishgray) lcolor(black)"
	local S_line ", lwidth(thin) lcolor(black)"
	local S_arr  ", lwidth(thin) lcolor(black) mlcolor(black) mlwidth(thin) msize(medlarge)"

	* ---------------------------------------------------------------
	* 8. Montar o gráfico
	* ---------------------------------------------------------------

	** Conectores verticais
	local vc ""
	local vc `"`vc' || pcarrowi `y_top' 3 `y_arrow1_end' 3 `S_arr'"'
	if `show_box4' {
		local vc `"`vc' || pcarrowi `y_box4' 3 2.65 3 `S_arr'"'
	}
	local vc `"`vc' || pcarrowi `y_phase1' 3 1.85 3 `S_arr'"'
	local vc `"`vc' || pcarrowi `y_phase2' 3 `y_arrow_p2_end' 3 `S_arr'"'
	if `show_synth' {
		local vc `"`vc' || pci `y_incl' 3 `y_synth' 3 `S_line'"'
	}

	** Conectores horizontais
	local hc ""
	local hc `"`hc' || pci `y_top' 1.5 `y_top' 4.5 `S_line'"'
	local hc `"`hc' || pcarrowi `y_dup' 3 `y_dup' `x_dup' `S_arr'"'
	local hc `"`hc' || pcarrowi `y_excl1' 3 `y_excl1' `x_excl1' `S_arr'"'
	local hc `"`hc' || pcarrowi `y_excl2' 3 `y_excl2' `x_excl2' `S_arr'"'

	** Textos
	local tx ""
	local tx `"`tx' text(`y_top' 1.5 `t1' `S_box')"'
	local tx `"`tx' text(`y_top' 4.5 `t2' `S_box')"'
	local tx `"`tx' text(`y_dup' 4.5 `t3' `S_box')"'
	if `show_box4' {
		local tx `"`tx' text(`y_box4' 3 `t4' `S_box')"'
	}
	local tx `"`tx' text(`y_phase1' 3 `t5' `S_box')"'
	local tx `"`tx' text(`y_excl1' 4.5 `t6' `S_box')"'
	local tx `"`tx' text(`y_phase2' 3 `t7' `S_box')"'
	local tx `"`tx' text(`y_excl2' 4.5 `t8' `S_box')"'
	local tx `"`tx' text(`y_incl' 3 `t9' `S_box')"'
	if `show_synth' {
		local tx `"`tx' text(`y_synth' 3 `t10' `S_box')"'
	}

	** Desenhar
	twoway ///
		pci 4.2 0 4.2 6 `S_line' || pci 4.2 6 0 6 `S_line' || ///
		pci 0 6 0 0 `S_line' || pci 0 0 4.2 0 `S_line' ///
		`vc' ///
		`hc' ///
		, ///
		`tx' ///
		xlabel("") ylabel("") xtitle("") ytitle("") ///
		xscale(range(0 6) noline) ///
		yscale(noline) ///
		xsize(2) ysize(3) ///
		graphregion(color(white)) plotregion(lcolor(black)) ///
		title("") legend(off)

	* ---------------------------------------------------------------
	* 9. Restaurar fonte
	* ---------------------------------------------------------------
	if "`prev_font'" != "" {
		graph set window fontface "`prev_font'"
	}

end
