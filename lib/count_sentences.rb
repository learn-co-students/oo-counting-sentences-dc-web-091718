require 'pry'

class String

	def sentence?
		self[self.length-1] == "."
	end

	def question?
		self[self.length-1] == "?"
	end

	def exclamation?
		self[self.length-1] == "!"
	end

	def count_sentences
		count = 0
		#this needs a regex that ignores repition of punctuation
		self.gsub("...","").split("").each do |char|
			if char == "." ||char == "?"||char == "!"
				count += 1
			end
		end
		count
	end

end
