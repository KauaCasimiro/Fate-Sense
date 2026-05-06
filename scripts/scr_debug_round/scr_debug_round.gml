// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_debug_round(current_round, result_list, distractors){
	show_debug_message(" ");
	show_debug_message("=================================");
	show_debug_message("========== NOVA RODADA ==========");
	show_debug_message("=================================");

	// =========================
	// CARTA CORRETA
	// =========================
	show_debug_message(
		"Carta correta: " + current_round.correct_card.name
	);

	show_debug_message(
		"Prompt: " + current_round.prompt
	);

	show_debug_message(" ");

	// =========================
	// OPTIONS FINAIS
	// =========================
	show_debug_message("Opções finais:");

	for (var i = 0; i < array_length(current_round.options); i++) {

		var option = current_round.options[i];

		var marker = "";

		if (i == current_round.correct_index) {
			marker = " <-- CORRETA";
		}

		show_debug_message(
			"[" + string(i) + "] " +
			option.name +
			marker
		);
	}

	show_debug_message(" ");

	// =========================
	// SCORE DOS CANDIDATOS
	// =========================
	show_debug_message("Ranking de distratores:");

	for (var i = 0; i < array_length(result_list); i++) {

		var entry = result_list[i];

		show_debug_message(
			entry.card.name +
			" | SCORE: " + string(entry.__score)
		);
	}

	show_debug_message(" ");

	// =========================
	// DISTRATORES ESCOLHIDOS
	// =========================
	show_debug_message("Distratores escolhidos:");

	for (var i = 0; i < array_length(distractors); i++) {

		show_debug_message(
			"- " + distractors[i].name
		);
	}

	show_debug_message(" ");
	show_debug_message("=================================");
	show_debug_message(" ");
}