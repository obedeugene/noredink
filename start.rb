puts "Welcome to NoRedInk"
=
print "Enter your Name: "
name = gets

print "Okay let's get started, #{name}"

print "How many questions do you want to start with? "
number_of_questions = gets


Quiz.new(number_of_questions)

