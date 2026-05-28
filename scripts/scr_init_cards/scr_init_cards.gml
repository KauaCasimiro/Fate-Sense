function scr_init_cards(){
	global.cards = [];
	
	array_push(global.cards, scr_create_card(
	    "Cavaleiro",
	    "Movimento rápido, ação e chegada de notícias",
	    ["comunicacao", "acao", "mudanca"],
	    ["comunicacao", "acao"],
		spr_button_1
	));

	array_push(global.cards, scr_create_card(
	    "Trevo",
	    "Pequenos desafios que podem ser superados com sorte",
	    ["conflito", "sorte", "superacao"],
	    ["conflito"],
		spr_button_2
	));

	array_push(global.cards, scr_create_card(
	    "Navio",
	    "Mudanças que levam ao crescimento e reflexão",
	    ["mudanca", "crescimento", "reflexao"],
	    ["mudanca", "crescimento"],
		spr_button_3
	));

	array_push(global.cards, scr_create_card(
	    "Casa",
	    "Segurança, estabilidade e estrutura familiar",
	    ["estabilidade", "seguranca", "familia"],
	    ["estabilidade"],
		spr_button_4
	));

	array_push(global.cards, scr_create_card(
	    "Arvore",
	    "Crescimento contínuo, estabilidade e saúde",
	    ["crescimento", "estabilidade", "saude"],
	    ["crescimento", "estabilidade"],
		spr_button_5
	));

	array_push(global.cards, scr_create_card(
	    "Nuvens",
	    "Confusão emocional e instabilidade",
	    ["conflito", "emocao", "instabilidade"],
	    ["conflito", "emocao"],
		spr_button_6
	));

	array_push(global.cards, scr_create_card(
	    "Cobra",
	    "Transformações com presença de conflito e astúcia",
	    ["transformacao", "conflito", "astucia"],
	    ["mudanca", "conflito"],
		spr_button_7
	));

	array_push(global.cards, scr_create_card(
	    "Caixao",
	    "Fim de ciclo e transformação profunda",
	    ["mudanca", "transformacao", "ciclo"],
	    ["mudanca"],
		spr_button_8
	));

	array_push(global.cards, scr_create_card(
	    "Ramalhete",
	    "Momentos de alegria, emoção e conexão",
	    ["emocao", "felicidade", "relacionamento"],
	    ["emocao", "relacionamento"],
		spr_button_9
	));

	array_push(global.cards, scr_create_card(
	    "Foice",
	    "Decisão brusca que gera ruptura e mudança",
	    ["mudanca", "conflito", "decisao"],
	    ["mudanca", "conflito", "acao"],
		spr_button_10
	));
}