require 'pry'
require 'pp'

def welcome
  # code #welcome here
  puts("Welcome to the Blackjack Table")
end

def deal_card
  # code #deal_card here

  card = rand(1..11)
  card

end

def display_card_total(card_total)
  # code #display_card_total here

    puts("Your cards add up to #{card_total}")

end

def prompt_user
  # code #prompt_user here

  puts("Type 'h' to hit or 's' to stay")

end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (card_total)
  # code #end_game here

  puts("Sorry, you hit #{card_total}. Thanks for playing!")
end

def initial_round
  # code #initial_round here

  card_one = deal_card
  card_two = deal_card

  sum = card_one + card_two

  display_card_total(sum)
  sum

end

def hit? (current_card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input

  if user_input == "s"
    return current_card_total
  elsif user_input == "h"
    current_card_total += deal_card
    return current_card_total
  else
    invalid_command
    prompt_user
    get_user_input # might have to assign to a variable
    return current_card_total
  #binding.pry
 end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

  welcome
  card_total = initial_round

  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end

  end_game(card_total)

end
