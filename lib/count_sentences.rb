require 'pry'

class String

  def sentence?
   end_with?(".")
  end

  def question?
    end_with?("?")
  end

  def exclamation?
    end_with?("!")
  end

  def count_sentences
      run_on = self.include?("...")
      total = self.count(".?!")

      # if run_on == true
      #   total -= 3
      # end
      # refactored to:
      # vvvvvvvvvvvvvv
      ( run_on ?  total -= 3: total )

  end
end
