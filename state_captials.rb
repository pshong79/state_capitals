states_and_capitals = {
  alabama: "montgomery",
  alaska: "juneau",
  arizona: "phoenix",
  arkansas: "little rock",
  california: "sacramento",
  colorado: "denver",
  connecticut: "hartford",
  delaware: "dover",
  florida: "tallahassee",
  georgia: "atlanta",
  hawaii: "honolulu",
  idaho: "boise",
  illinois: "springfield",
  indiana: "indianapolis",
  iowa: "des moines",
  kansas: "topeka",
  kentucky: "frankfort",
  louisiana: "baton rouge",
  maine: "augusta",
  maryland: "annapolis",
  massachusetts: "boston",
  michigan: "lansing",
  minnesota: "st. paul",
  mississippi: "jackson",
  missouri: "jefferson city",
  montana: "helena",
  nebraska: "lincoln",
  nevada: "carson city",
  new_hampshire: "concord",
  new_jersey: "trenton",
  new_mexico: "santa fe",
  new_york: "albany",
  north_carolina: "raleigh",
  north_dakota: "bismark",
  ohio: "columbus",
  oklahoma: "oklahoma city",
  oregon: "salem",
  pennsylvania: "harrisburg",
  rhode_island: "providence",
  south_carolina: "columbia",
  south_dakota: "pierre",
  tennessee: "nashville",
  texas: "austin",
  utah: "salt lake city",
  vermont: "montpelier",
  virginia: "richmond",
  washington: "olympia",
  west_virginia: "charleston",
  wisconsin: "madison",
  wyoming: "cheyenne"
}

capitals = [ "albany", "annapolis", "atlanta", "augusta", "austin", "baton rouge", "bismark", "boise", "boston", "carson city", 
             "charleston", "cheyenne", "columbia", "columbus", "concord", "denver", "des moines", "dover", "frankfort", "harrisburg",
             "hartford", "helena", "honolulu", "indianapolis", "jackson", "jefferson city", "juneau", "lansing", "lincoln", "little rock", 
             "madison", "montgomery", "montpelier", "nashville", "oklahoma city", "olympia", "phoenix", "pierre", "providence", "raleigh",
             "richmond", "sacramento", "salem", "salt lake city", "santa fe", "springfield", "st. paul", "tallahassee", "topeka", "trenton" ]

correct_answers = {}
wrong_answers = {}

puts "States will be selected at random."
puts "If the capital entered is incorrect, it will continue at random and the incorrect state will be presented again in the future."
puts "All the capitals must be correctly answered before this application will end."
puts "Press \"ctrl+c\" to quit at any time.\n\n"

while states_and_capitals.size > 0 do
  state_keys = states_and_capitals.keys
  state = state_keys[rand(state_keys.size)]
  
  puts "Here is a list of all the state capitals:\n#{capitals}.\n\n"
  print "What is the capital of #{state}? "
  user_capital = gets.chomp

  if user_capital.downcase == states_and_capitals[state]
    correct_answers[state] = states_and_capitals[state]
    states_and_capitals.delete(state)
    capitals.delete(user_capital)

    puts "Correct! #{user_capital.downcase}, #{state}. #{correct_answers.size}/50 correct.\n\n"
  else
    wrong_answers[state] = states_and_capitals[state]
    puts "Incorrect. The correct answer is #{states_and_capitals[state]}. We will come back to this again later. "
  end

  states_and_capitals.size
end
puts "All done. You got #{correct_answers.size}/50 correct.\n\n"