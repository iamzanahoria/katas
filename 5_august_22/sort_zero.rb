# Moving Zeros To The End
# Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

def moveZeros(arr) 
  arr.sort_by { |i| i == 0 ? 1 : 0 }
end