class House

	def recite
		value = []
		for x in 1..12 do
			value.append(line(x))
		end
		return(value.join("\n"))
	end

	def line(x)
		output = ""
		sub_phrases = ["",
						"the house that Jack built",
						"the malt that lay in",
						"the rat that ate",
						"the cat that killed",
						"the dog that worried",
						"the cow with the crumpled horn that tossed",
						"the maiden all forlorn that milked",
						"the man all tattered and torn that kissed",
						"the priest all shaven and shorn that married",
						"the rooster that crowed in the morn that woke",
						"the farmer sowing his corn that kept",
						"the horse and the hound and the horn that belonged to"
					  ]
		phrases = ["This is"]
		(x.downto(1)).each do |y|
			phrases.append(sub_phrases[y])
		end
		phrases = phrases.join(" ")
		phrases += ".\n"
		return phrases
	end
end