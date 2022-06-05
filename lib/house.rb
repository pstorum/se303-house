class House

	attr_reader :type

	def self.for(type="")
		if type == "pirate"
			PirateHouse.new()
		elsif type == "random"
			RandomHouse.new()
		elsif type == "randompirate"
			RandomPirateHouse.new()
		elsif type == "randomverb"
			RandomNounAndVerb.new()
		else
			House.new()
		end
	end

	def initialize()
		@key = [0,1,2,3,4,5,6,7,8,9,10,11]
		@noun_clause = nil
		@verb_clause = nil
		set_partial_lyrics
		@begin = "This is"
	end

	def recite
		value = []
		for x in 1..12 do
			value.append(line(x))
		end
		return(value.join("\n"))
	end

	def line(x)
		output = ""
		phrases = [@begin]
		(x.downto(2)).each do |y|
			phrases.append(get_partial_lyric(@key[y-1]))
		end
		phrases = phrases.join(" ")
		phrases += " the house that Jack built.\n"
		return phrases
	end

	def get_partial_lyric(num)
		return clause = @noun_clause[num-1] + @verb_clause[num-1]
	end

	def set_partial_lyrics()
		@noun_clause = [
						"the malt ",
						"the rat ",
						"the cat ",
						"the dog ",
						"the cow with the crumpled horn ",
						"the maiden all forlorn ",
						"the man all tattered and torn ",
						"the priest all shaven and shorn ",
						"the rooster that crowed in the morn ",
						"the farmer sowing his corn ",
						"the horse and the hound and the horn "
					  ]
		@verb_clause = [
						"that lay in",
						"that ate",
						"that killed",
						"that worried",
						"that tossed",
						"that milked",
						"that kissed",
						"that married",
						"that woke",
						"that kept",
						"that belonged to",
					  ]
	end
end
				
class PirateHouse < House
	def initialize
		@key = [0,1,2,3,4,5,6,7,8,9,10,11]
		set_partial_lyrics
		@begin = "Thar be"
	end
end

class RandomHouse < House
	def initialize
		set_partial_lyrics
		@begin = "This is"
		@key = [0,1,2,3,4,5,6,7,8,9,10,11]
		shuffle_lines
	end

	def shuffle_lines
		@key = @key.shuffle
	end
end

class RandomPirateHouse < House
	def initialize
		set_partial_lyrics
		@begin = "Thar be"
		@key = [0,1,2,3,4,5,6,7,8,9,10,11]
		shuffle_lines
	end

	def shuffle_lines
		@key = @key.shuffle
	end
end

class RandomNounAndVerb < House
	def initialize
		set_partial_lyrics
		@begin = "Thar be"
		@key = [0,1,2,3,4,5,6,7,8,9,10,11]
		shuffle_lines
	end

	def shuffle_lines
		@noun_clause = @noun_clause.shuffle()
		@verb_clause = @verb_clause.shuffle()
	end
end