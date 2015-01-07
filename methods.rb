def greet
  "Hello"
end

def greet_you(name)
  "Hello #{name}"
end

def greet_us(name = "Bill", other_name = "Bo")
  "Hello #{name} and #{other_name}."
end

puts greet

puts greet_you("Tony")

puts greet_us

puts greet_us("Tim", "Tang")
