def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (1...11).to_a.sample
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(score)
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  score = 0
  2.times do
    score += deal_card
  end
  
  display_card_total(score)
  score
end

def hit?(score)
  prompt_user
  input = get_user_input
  
  case input
    when "h"
      score += deal_card
      return score
    when "s"
      return score
    else
      invalid_command
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
