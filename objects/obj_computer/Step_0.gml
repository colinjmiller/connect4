/// @description Insert description here
// You can write your code in this editor

if (!global.winner) {
	hovering_board = mouse_x > obj_board.x && mouse_x < obj_board.x + obj_board.sprite_width && mouse_y > obj_board.y && mouse_y < obj_board.y + obj_board.sprite_height;
	if (hovering_board) {
		row = floor((mouse_x - obj_board.x) / ROW_WIDTH);	
	}
}
