class House
	def recite
		value = line(1)
		value += "\n"
		for x in 2..11 do
			value += line(x)
			value += "\n"
		end
		value += line(12)
		return value
	end

	def line(x)
		output = "This is "
		phrases = [
			"the house that Jack built.",
			"the malt that lay in ",
			"the rat that ate ",
			"the cat that killed ",
			"the dog that worried ",
			"the cow with the crumpled horn that tossed ",
			"the maiden all forlorn that milked the ",
			"the man all tattered and torn that kissed ",
			"the priest all shaven and shorn that married ",
			"the rooster that crowed in the morn that woke ",
			"the farmer sowing his corn that kept ",
			"the horse and the hound and the horn that belonged to "
		]
		[x..0].each { |n| output = output + phrases[n]}
		output
	end
end