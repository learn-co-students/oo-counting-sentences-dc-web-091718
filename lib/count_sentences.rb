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
    count = 0
    split_sentence = self.gsub("...", "").split("")
    split_sentence.each do |character|
      if character == "?" || character == "." || character == "!"
        count += 1
      end
    end
    count
  end
    # self.split(/\?|\.|!/).size
    # split_sentence = self.split(/\?|\.|!/)
    # split_sentence.count
    # binding.pry
    # split_sentence = self.split
    # no_empty_strings.count
    #
end
