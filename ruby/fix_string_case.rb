# https://www.codewars.com/kata/fix-string-case

#In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:

#make as few changes as possible.
#if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
#For example:

#solve("coDe") = "code". Lowercase characters > uppercase. Change only the "D" to lowercase.
#solve("CODe") = "CODE". Uppercase characters > lowecase. Change only the "e" to uppercase.
#solve("coDE") = "code". Upper == lowercase. Change all to lowercase.

# First Iteration
def solve(word)
  lower = 0
  high = 0
  word = word.chars
  word.each do |el|
    if el == el.downcase 
      lower += 1
    else
      high += 1
    end
  end
  if lower > high
    word.join.downcase
  elsif high > lower
    word.join.upcase
  else
    word.join.downcase
  end
end

# Refactored Code
def solve(word)
  characters = word.chars
  lowercases, uppercases = characters.partition { |character| character == character.downcase }
  lowercases.size >= uppercases.size ? word.downcase : word.upcase
end
