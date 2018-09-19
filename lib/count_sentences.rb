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
    # counts everytime there is a ".","?" and/or "!" located within itself... "string instance"
      total = self.count(".?!")

      # set the situation of a run on sentance or "..." so if it comes up in the string it can be identified as such.

      run_on = self.include?("...")

      # if run is true, subract 3 to account for the "..." that was not actually an indicator of a sentence from the total.
      # if run_on == true
      #   total -= 3
      # end
      # refactored to:
      # vvvvvvvvvvvvvv
      ( run_on ?  total -= 3: total )

  end
end
