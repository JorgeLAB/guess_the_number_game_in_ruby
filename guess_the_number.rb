def give_welcome
  puts 'Welcome to the guess game'
  puts 'Whats your name? '
  nome = gets

  5.times do
    puts "\n"
  end

  puts 'We are begin the game for you, ' + nome.strip
end

def define_difficulty(difficulty)
  case difficulty
  when 1
    max = 30
  when 2
    max = 60
  when 3
    max = 100
  when 4
    max = 150
  else
    max = 200
  end
end

def secret_number_draw(difficulty)
  max = define_difficulty(difficulty)
  puts "Choose a secret number between 0 and #{max - 1}..."
  secret_number = rand(max)
  puts "\nChosen... how about guessing our secret number today?\n"
  secret_number
end

def choose_a_number(attempt, attempt_limit)
  puts "\n\n\n\n\n"
  puts "Attempt " + attempt.to_s + " of " + attempt_limit.to_s
  puts "Choose a number"
  kicked = gets
  puts "Did you get it right? You kicked " + kicked
  kicked
end

def verification_kicked(kicked, secret_number)
  if secret_number == kicked.to_i
    puts 'Go it right!'
    true
  else
    more_than_secret_number = secret_number > kicked.to_i

    type = more_than_secret_number ? 'more' : 'less'
    puts "Secret number is #{type} than it was kicked"

    false
  end
end

def asks_for_difficulty
  puts 'What level of difficulty do you want ? (1 ease, 5 difficulty)'
  difficulty = gets.to_i
end

give_welcome
difficulty = asks_for_difficulty
secret_number = secret_number_draw(difficulty)

kickes = []
attempt_limit = 10
points_so_far = 1000

for attempt in 1..attempt_limit
  3.times do
    puts "\n"
  end

  puts kickes

  kicked = choose_a_number(attempt, attempt_limit)
  break if verification_kicked(kicked, secret_number)

  kickes << kicked
  points_so_far -= (secret_number.to_i - kicked.to_i).abs
end

puts "The number secret is #{secret_number}"
puts "Result #{points_so_far}"
