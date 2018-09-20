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
    array = self.split(/\.|\?|\!/)

    array.delete_if do |element|
      element.size < 1
    end

    return array.length
  end
end
