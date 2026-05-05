function scr_init_cards(){
	global.cards = [];
	
	array_push(global.cards, scr_create_card(
	    "Cavaleiro",
	    "Movimento rápido, ação e chegada de notícias",
	    ["comunicacao", "acao", "mudanca"],
	    ["comunicacao", "acao"]
	));

	array_push(global.cards, scr_create_card(
	    "Trevo",
	    "Pequenos desafios que podem ser superados com sorte",
	    ["conflito", "sorte", "superacao"],
	    ["conflito"]
	));

	array_push(global.cards, scr_create_card(
	    "Navio",
	    "Mudanças que levam ao crescimento e reflexão",
	    ["mudanca", "crescimento", "reflexao"],
	    ["mudanca", "crescimento"]
	));

	array_push(global.cards, scr_create_card(
	    "Casa",
	    "Segurança, estabilidade e estrutura familiar",
	    ["estabilidade", "seguranca", "familia"],
	    ["estabilidade"]
	));

	array_push(global.cards, scr_create_card(
	    "Arvore",
	    "Crescimento contínuo, estabilidade e saúde",
	    ["crescimento", "estabilidade", "saude"],
	    ["crescimento", "estabilidade"]
	));

	array_push(global.cards, scr_create_card(
	    "Nuvens",
	    "Confusão emocional e instabilidade",
	    ["conflito", "emocao", "instabilidade"],
	    ["conflito", "emocao"]
	));

	array_push(global.cards, scr_create_card(
	    "Cobra",
	    "Transformações com presença de conflito e astúcia",
	    ["transformacao", "conflito", "astucia"],
	    ["mudanca", "conflito"]
	));

	array_push(global.cards, scr_create_card(
	    "Caixao",
	    "Fim de ciclo e transformação profunda",
	    ["mudanca", "transformacao", "ciclo"],
	    ["mudanca"]
	));

	array_push(global.cards, scr_create_card(
	    "Ramalhete",
	    "Momentos de alegria, emoção e conexão",
	    ["emocao", "felicidade", "relacionamento"],
	    ["emocao", "relacionamento"]
	));

	array_push(global.cards, scr_create_card(
	    "Foice",
	    "Decisão brusca que gera ruptura e mudança",
	    ["mudanca", "conflito", "decisao"],
	    ["mudanca", "conflito", "acao"]
	));
}