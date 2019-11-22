require 'pry'

class String

  def sentence?
    self.end_with?(".")  
  end

  def question?
    self.end_with?("?")  

  end

  def exclamation?
    self.end_with?("!")  
  end

  def count_sentences 
    num_sentences = 0
    index = 0 
    while index < self.length 
      if self[index] == '.' || self[index] == '?' || self[index] == '!' && self[index +1] == ' '
        num_sentences += 1
        num_sentences
        index += 1
      end
    
    end
  end
end