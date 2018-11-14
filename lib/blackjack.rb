def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  first_game = deal_card + deal_card
  display_card_total(first_game)
  return first_game
end

def hit?(total_amount)
  prompt_user
  player_choice = get_user_input
  if player_choice == "h"
    total_amount += deal_card
  elsif player_choice == "s"
    total_amount
  end
end

def invalid_command
  player_input = get_user_input
  if player_input != "h" || player_input != "s"
    puts "Please enter a valid command"
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_draw = initial_round
  while total_draw < 21
    total_draw = hit?(total_draw)
    display_card_total(total_draw)
end
end_game(total_draw)
end
    
