def palindrome?(str)
	if(str.downcase.gsub(/\W/,'').reverse == str.downcase.gsub(/\W/,'')) #This syntax says compare a string with its reversed copy, while replacing any symbol that is not a word with a blank character ''.
		print("True\n") # String is a palindrome.
	else
		print("False\n") # String is not a palindrome.
	end
end

class String
  def palindrome?
    tmp_str = self.downcase.gsub(/[^a-z]/,'')
    tmp_str.reverse == tmp_str
  end
end

module Enumerable
  def palindrome?
    self == self.reverse
  rescue NoMethodError
    self.to_a == self.to_a.reverse
  end
end

# Test Cases
palindrome?("A man, a plan, a canal -- Panama")

print("asdf".palindrome?)
print("\n")

print([1,2,3,2,1].palindrome?)
print("\n")