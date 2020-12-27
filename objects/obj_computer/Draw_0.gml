/// @description Insert description here
// You can write your code in this editor

if (global.winner) {
	if (global.turn == 0) {
		draw_set_color(c_red);
	} else {
		draw_set_color(c_yellow);
	}
	draw_set_halign(fa_center);
	draw_text_transformed(room_width / 2, 32, "Player " + string(global.turn + 1) + " is the winner!", 2, 2, 0);
	draw_sprite(spr_success, winner_index, room_width / 2, room_height / 2);
	return;
}

// Draw pieces dropped into the board
for (var i = 0; i < array_height_2d(board); i++) {
	for (var j = 0; j < array_length_2d(board, i); j++) {
		if (board[i, j] != 0) {
			var x_position = obj_board.x + ROW_WIDTH / 2 + j * ROW_WIDTH;
			var y_position = obj_board.y + i * ROW_WIDTH + ROW_WIDTH / 2;
			if (board[i, j] == 1) {
				draw_sprite(spr_red_piece, 0, x_position, y_position);
			} else {
				draw_sprite(spr_yellow_piece, 0, x_position, y_position);
			}
		}
	}
}

if (hovering_board) {
	draw_sprite(spr_drop_arrow, global.turn, obj_board.x + ROW_WIDTH / 2 + row * ROW_WIDTH, obj_board.y - sprite_get_height(spr_drop_arrow));
}