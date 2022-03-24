puts 'Welcome to the guess game'
puts 'Whats your name? '
nome = gets

5.times do 
	puts "\n"
end

puts 'Começaremos o jogo para você, ' + nome
puts 'Choose a secret number between 0 and 200...'
numero_secreto = 175
puts "\nChosen... que tal adivinhar hoje nosso número secreto?\n"

5.times do 
	puts "\n"
end

puts 'Attempt 1'
puts 'Choose a number'
chute = gets
puts 'Did you get it right? You kicked ' + chute

if numero_secreto == chute.to_i
	puts 'Go it right!'
else
	maior = numero_secreto > chute.to_i

	if maior
	  puts 'Secret number is more than it was kicked'
	else
	  puts 'Secret number is less than it was kicked'
	end
end

puts 'Chosen... que tal adivinhar hoje nosso número secreto?'

5.times do 
	puts "\n"
end

puts 'Attempt 2'
puts 'Choose a number'
chute = gets
puts 'Did you get it right? You kicked ' + chute

if numero_secreto == chute.to_i
	puts 'Go it right!'
else
	maior = numero_secreto > chute.to_i

	if maior
	  puts 'Secret number is more than it was kicked'
	else
	  puts 'Secret number is less than it was kicked'
	end
end

puts 'Chosen... que tal adivinhar hoje nosso número secreto?'

5.times do 
	puts "\n"
end

puts 'Attempt 3'
puts 'Choose a number'
chute = gets
puts 'Did you get it right? You kicked ' + chute

if numero_secreto == chute.to_i
	puts 'Go it right!'
else
	maior = numero_secreto > chute.to_i

	if maior
	  puts 'Secret number is more than it was kicked'
	else
	  puts 'Secret number is less than it was kicked'
	end
end