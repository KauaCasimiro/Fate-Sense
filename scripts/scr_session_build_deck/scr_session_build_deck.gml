function scr_session_build_deck(session_size) {
	
	
	var all_cards = scr_get_all_cards();
	var deck = [];
	
	for (var i = 0; i < array_length(all_cards); i++) {
		array_push(deck, all_cards[i]);
	}
	
	deck = array_shuffle(deck);
	
	var final_deck = [];
	
	var _max = min(session_size, array_length(deck));
	
	for (var i = 0; i < _max; i++) {
		array_push(final_deck, deck[i]);
	}
	
	return final_deck;
}