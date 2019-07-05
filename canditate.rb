candidate1 = {
    id: 5,
    years_of_experience: 1,
    github_points: 293,
    languages: ['C', 'Ruby', 'Python', 'Clojure'],
    age: 26
  }
puts candidate1[:years_of_experience]

# Please don't do this
def experienced?(candidate) 
  if((candidate[:years_of_experience] >= 2) === true)
    true
  else
    false
  end
end

# Do this
def experienced_for_reals?(candidate)
  return candidate[:years_of_experience] >= 2
end

if(experienced_for_reals?(candidate1))
  puts "Man you old."
else 
  puts "You youngling."
end