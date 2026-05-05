function scr_get_all_cards() {
	return global.cards
}

function scr_get_random_card() {
	var cards = scr_get_all_cards();
	
	return cards[irandom(array_length(cards) - 1)];
}

function scr_get_pool_cards(correct_card) {
	var cards = scr_get_all_cards();
	
	var pool = [];
	
	for (var i = 0; i < array_length(cards); i++) {
		if (cards[i] != correct_card) {
			array_push(pool, cards[i]);
		}
	}
	
	return pool;
}