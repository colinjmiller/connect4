board = argument[0];

/*
 * Check for horizontal victories, e.g.
 *
 * 0 0 0 0 0 0 0
 * 0 0 0 0 0 0 0
 * 0 0 0 0 0 0 0
 * 0 0 0 0 0 0 0
 * 0 1 1 1 1 0 0
 */
for (var i = 0; i < array_height_2d(board); i++) {
	for (var j = 0; j < array_length_2d(board, i) - 3; j++) {
		if (board[i, j] == 0) {
			continue;	
		}
		if (board[i, j] == board[i, j + 1] && board[i, j] == board[i, j + 2] && board[i, j] == board[i, j + 3]) {
			return true;
		}
	}
}

/*
 * Check for vertical victories, e.g.
 *
 * 0 0 0 0 0 0 0
 * 0 1 0 0 0 0 0
 * 0 1 0 0 0 0 0
 * 0 1 0 0 0 0 0
 * 0 1 0 0 0 0 0
 */
for (var i = 0; i < array_height_2d(board) - 3; i++) {
	for (var j = 0; j < array_length_2d(board, i); j++) {
		if (board[i, j] == 0) {
			continue;
		}
		if (board[i, j] == board[i + 1, j] && board[i, j] == board[i + 2, j] && board[i, j] == board[i + 3, j]) {
			return true;	
		}
	}
}

/*
 * Check for diagonal descending victories, e.g.
 *
 * 0 0 0 0 0 0 0
 * 0 1 0 0 0 0 0
 * 0 0 1 0 0 0 0
 * 0 0 0 1 0 0 0
 * 0 0 0 0 1 0 0
 */
for (var i = 0; i < array_height_2d(board) - 3; i++) {
	for (var j = 0; j < array_length_2d(board, i) - 3; j++) {
		if (board[i, j] == 0) {
			continue;
		}
		if (board[i, j] == board[i + 1, j + 1] && board[i, j] == board[i + 2, j + 2] && board[i, j] == board[i + 3, j + 3]) {
			return true;	
		}
	}
}

/*
 * Check for diagonal ascending victories, e.g.
 *
 * 0 0 0 0 0 0 0
 * 0 0 0 0 1 0 0
 * 0 0 0 1 0 0 0
 * 0 0 1 0 0 0 0
 * 0 1 0 0 0 0 0
 */
for (var i = 3; i < array_height_2d(board); i++) {
	for (var j = 0; j < array_length_2d(board, i) - 3; j++) {
		if (board[i, j] == 0) {
			continue;
		}
		if (board[i, j] == board[i - 1, j + 1] && board[i, j] == board[i - 2, j + 2] && board[i, j] == board[i - 3, j + 3]) {
			return true;	
		}
	}
}

return false;