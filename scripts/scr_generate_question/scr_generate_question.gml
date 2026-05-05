function scr_generate_question(){
	//Carta correta
	var correct_card = scr_get_random_card();
	
	//Distratores calculados
	var distractors = scr_select_distractors(correct_card);
	
	//opções do jogador
	var options = [];
	
	array_push(options, correct_card);
	
	for (var i = 0; i < array_length(distractors); i++) {
		array_push(options, distractors[i]);
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
	
	return {
		prompt: correct_card.meaning,
		options: options,
		correct_index: correct_index,
		correct_card: correct_card
	};
}