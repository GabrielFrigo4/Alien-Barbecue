switch(typeUFO){
	case PlayerType.Single:
	draw_self();
		break;
	case PlayerType.Multi1:
	draw_self_color(COLOR_PLAYER1);
		break;
	case PlayerType.Multi2:
	draw_self_color(COLOR_PLAYER2);
		break;
}