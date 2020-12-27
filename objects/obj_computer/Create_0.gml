/// @description Insert description here
// You can write your code in this editor

global.turn = 0;
global.winner = false;

// Create empty board state
var BOARD_SIZE = 7;

for (var i = 0; i < BOARD_SIZE; i++) {
	for (var j = 0; j < BOARD_SIZE; j++) {
		board[i, j] = 0;
	}
}

//board[0, 2] = 1;
//board[6, 6] = 1;

// Create calculations for which row is being hovered on
ROW_WIDTH = obj_board.sprite_width / BOARD_SIZE;
hovering_board = false;

// Which image will be the winner image?
winner_index = floor(random(sprite_get_number(spr_success)));