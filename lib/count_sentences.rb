require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    breaks = self.split(/[.?!]/)
    breaks.select! {|word| word != ""}
    
    if breaks.count == 7
      binding.pry
    end
    breaks.count
  end
end