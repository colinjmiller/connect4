/// @description Insert description here
// You can write your code in this editor

if (hovering_board) {
	for (var i = array_length_1d(board) - 1; i >= 0; i--) {
		if (board[i, row] == 0) {
			board[i, row] = global.turn + 1;	
			break;
		}
	}
	if (scr_check_for_win(board)) {
		global.winner = true;
		instance_destroy(obj_board);
		instance_create_depth(room_width / 2, room_height - 128, 0, obj_again);
	} else {
		global.turn = (global.turn + 1) % 2;
	}	
}
