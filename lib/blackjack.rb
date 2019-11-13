require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11)+1
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  
  if user_input == 's'
    #prompt_user
  elsif user_input == 'h'
  card_total += deal_card
  else
    #binding.pry 
    invalid_command
    hit?(card_total)
  end
  
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  #binding.pry
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current = initial_round
  until current > 21 do
    current = hit?(current)
    display_card_total(current)
  end
end_game(current)
end
    
#initial_round