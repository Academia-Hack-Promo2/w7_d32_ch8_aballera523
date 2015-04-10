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

def main
	puts "\n\nIntroduzca una palabra para determinar si es Palindrome: "
	evaluating_word = gets.chomp.downcase
	palindrome evaluating_word
end
main
