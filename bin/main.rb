#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

puts 'Welcome to tic tac toe'
puts ''
puts 'Please input name for player 1'
name1 = gets.chomp
player1 = Player.new(name1, 'X')
while player1.valid_name(name1) == false
  puts 'Invalid Name!!!'
  name1 = gets.strip
end
player1.name = name1
puts ''
puts 'Please input name for player 2'
name2 = gets.chomp
player2 = Player.new(name2, 'O')
while player2.valid_name(name1) == false || name1 == name2
  puts 'Invalid Name!!!'
  name2 = gets.strip
end
player2.name = name2
puts ''
puts "#{name1} starts!"

my_game = Game.new(player1, player2)
my_board = Board.new

def play(player1, player2, my_game, my_board)
  i = 0
  while i < 9
    player = i.even? ? player1 : player2
    puts "#{player.name}! Pick a number between 1 and 9 inclusive "
    while my_game.chosen(num = gets.chomp.to_i) == false
      puts "#{player.name} choose a number different from #{num}"
    end
    my_game.get_chosen_number(num)
    my_avatar = my_game.avatar(player)
    my_board.update_board(my_avatar, num - 1)
    puts my_board.display_board
    player.update_my_num(num)
    if my_game.game_result(player)
      puts "#{player.name} is the winner "
      break
    end

    i += 1
    p 'It is a DRAW' if i == 9
  end
end
play(player1, player2, my_game, my_board)
