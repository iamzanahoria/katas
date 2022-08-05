# Split Strings
# Complete the solution so that it splits the string into pairs of two characters. 
# If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

def solution(str)
  return [] if str == ""
  splitted = str.scan(/.{1,2}/)
  splitted[-1] = splitted.last + "_" if splitted.last.length == 1
  splitted
end