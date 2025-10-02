% Tic Tac Toe by Joshua Pandullo
clc; clear; 
% Welcome message
% Display the welcome message
uiwait(msgbox('Hello! Welcome to Tic-Tac-Toe! Would you like to get started? If so, press "OK".'));

% Creates the game board
board = zeros(3, 3); 

% Displays the current game board
disp(board);

% Outer while loop for restarting the game after user has said 'y' to
% playing again 
while true
    % resets the game board
    board = zeros(3, 3); 
    disp(board)
    %Player 1 starts
    player = 1; 

    % Main game loop
    while true
        % Get player input in the format of a value
        row = input('Enter row (1-3): ');
        col = input('Enter column (1-3): ');

        % Validation to make sure the input from user is within the matrix 
        if row < 1 || row > 3 || col < 1 || col > 3
              disp('Invalid input. Please enter a number between 1 and 3.');
              continue
        end
        % Update the board with the player's move
        if board(row, col) == 0
            board(row, col) = player;
            disp(board);
        else
         % Make sure there is not already a move there also that the number
         % chose
            disp('Invalid move, try again.');
        end
        % Check for win conditions
        if any(all(board == player, 1)) || ... % Check columns
           any(all(board == player, 2)) || ... % Check rows
           all(diag(board) == player) || ...    % Check main diagonal
           all(diag(flipud(board)) == player)   % Check anti-diagonal
            disp('Player 1 wins!');
            break;
        end
      
         % Computer move
         computerturn = 2;
         computerMove = find(board(:) == 0);
         % Randomly select a position for the computer move
         computerIndex = randi(length(computerMove));
         board(computerMove(computerIndex)) = 2; % Player 2 is the computer
         disp(board);
         % concepts for extra credit (did not get to)


        % Check for a draw condition
        if all(board(:) ~= 0)
            disp('The game is a draw!');
            break;
        end
                % Check for win conditions after computer move
        if any(all(board == 2, 1)) || ... % Check columns for computer
           any(all(board == 2, 2)) || ... % Check rows for computer
           all(diag(board) == 2) || ...    % Check main diagonal for computer
           all(diag(flipud(board)) == 2)   % Check anti-diagonal for computer
            disp('Computer wins! Sorry Patrick');
            break;
        end
    end
% This goes back to the or
answer = input('Would you like to play again? (y/n): ','s');
if lower(answer) == 'y'
            board = zeros(3, 3);
            disp(board);
            else
            disp('Thank you for playing!');
            break;
end
end


        

% Troubleshooting issues I encountered were win both the computer and
% player win at the same time, then the computer would still win even if
% the player went first. I thought about rearranging where the win
% conditions go but I was unsure.


