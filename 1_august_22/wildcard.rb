# 1's, 0's and wildcards
# You are given a string containing 0's, 1's and one or more '?', where ? is a wildcard that can be 0 or 1.
# Return an array containing all the possibilities you can reach substituing the ? for a value.

def possibilities(*num)
  actual = num
  new_actual = []
  steps = []
  steps.push actual
  while actual.any? { |s| s.include?('?') }
    actual.each do |n|
      new_actual.push n.sub('?','0') 
      new_actual.push n.sub('?','1')
    end
    steps.push new_actual
    actual = new_actual
    new_actual = []
  end
  steps.last
end