class Board
  attr_reader :board
  def initialize()
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display_board
    [" #{board[0]} | #{board[1]} | #{board[2]} ",
     '-----------',
     " #{board[3]} | #{board[4]} | #{board[5]} ",
     '-----------',
     " #{board[6]} | #{board[7]} | #{board[8]} "]
  end

  def update_board(avatar, index)
    @board[index] = avatar
    @board
  end
end
