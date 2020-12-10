class Game
  attr_reader :player1, :player2, :win_comb

  def initialize(player1, player2)
    @chosen_numbers = []
    @win_comb = [[1, 4, 7], [1, 2, 3], [1, 5, 9], [2, 5, 8], [3, 5, 7], [3, 6, 9], [4, 5, 6], [7, 8, 9]]
    @player1 = player1
    @player2 = player2
  end

  def avatar(player)
    avatar_sign = player.name == player1.name ? 'X' : 'O'
    avatar_sign
  end

  def chosen(num)
    !@chosen_numbers.include?(num) && num != '' && (1..9).include?(num) ? true : false
  end

  def get_chosen_number(num)
    @chosen_numbers << num
  end

  def game_result(player)
    flag = false
    @win_comb.each do |combination|
      result = (player.my_num.length >= 3) && (combination - player.my_num == []) ? true : false
      flag = true if result == true
    end
    flag
  end
end
