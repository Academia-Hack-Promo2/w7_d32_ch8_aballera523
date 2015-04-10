#!/usr/bin/ruby
# -*- coding: utf-8 -*-
# Alex Ballera;  alex@alexballera.com; +584120172898

# El usuario suministra una palabra (ojo! es una palabra), el sistema
# determina si es Palindrome. http://en.wikipedia.org/wiki/Palindrome
# No se puede utilizar la función reverse de ruby.

def palindrome evaluating_word
	inverted_word = ""
	evaluating_word.each_char { |chr| inverted_word = chr + inverted_word }

	if evaluating_word == inverted_word
		puts "\n\nLa Palabra '#{evaluating_word}' Es Palindrome\n"
	else
		puts "\n\nLa Palabra '#{evaluating_word}' No es Palindrome\n"
	end
end

def check_world evaluating_word
	if evaluating_word =~ /[a-zA-Z]/
		return true
	else
		return false
	end
	return true
end

def main
	while true
		puts "\n\nIntroduzca una palabra para determinar si es Palindrome: "
		evaluating_word = gets.chomp.downcase.to_s
		if check_world evaluating_word
		else
			puts "Recuerda Colocar Solo Palabras"
			redo
		end
		palindrome evaluating_word
		break
	end
end
main
