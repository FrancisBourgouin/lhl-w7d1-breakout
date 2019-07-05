# Containers 
# Properties : volume, type, contents, drinker_name
# Actions : drink, refill, isEmpty

# Turns
# Properties : list_of_containers,
# Actions : drink, verify, pickDrinker, incrementTurn, declareWinner

# Match
# Properties : 
# Actions : initializePlayers, executeGame

class Container

  attr_reader :volume, :type, :contents, :drinker_name

  def initialize(volume, type, contents, drinker_name)
    @volume = volume #working in ml
    @type = type
    @contents = contents
    @drinker_name = drinker_name
  end


  def drink
    @volume -= 16
  end

  # def getVolume
  #   @volume
  # end

end


francisPint = Container.new(500,"glass","coffee","Francis")

puts francisPint.volume
francisPint.drink
puts francisPint.volume


31.times do
  francisPint.drink
  if(francisPint.volume >= 16)
    puts francisPint.volume 
  else
    puts "sad last drop"
    break
  end
end