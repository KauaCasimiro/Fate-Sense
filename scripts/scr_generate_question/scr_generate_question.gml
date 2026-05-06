function scr_generate_question(deck, index){
	//Carta correta
	var correct_card = deck[index];
	
	var pool = scr_get_pool_cards(correct_card);
	//Distratores calculados
	var distractors_data = scr_select_distractors(pool, correct_card, 3);
	
	var distractors = distractors_data._distractors;
	var r = distractors_data._result_list;
	
	//opções do jogador
	var options = [];
	
	array_push(options, correct_card);
	
	for (var i = 0; i < array_length(distractors); i++) {
		array_push(options, distractors[i]);
		scr_cooldown_register(distractors[i])
	}
	
	//Embaralhamendo de opções
	options = array_shuffle(options);
	
	//busca do indice da carta correta
	
	var correct_index = -1;
	
	for (var i = 0; i < array_length(options); i++) {
		if (options[i] == correct_card) {
			correct_index = i;	
			break;
		}	
	}
	
	var return_struct = {
		prompt: correct_card.meaning,
		options: options,
		correct_index: correct_index,
		correct_card: correct_card
	};
	
	scr_debug_round(return_struct, r, distractors);
	
	return return_struct
}