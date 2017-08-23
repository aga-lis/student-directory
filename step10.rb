@students = []

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def show_students()
	if @students.size > 0
		puts @students
	end	
end

def print_footer(names)
	if names.size ==1
		puts "Overall we have #{names.size} great student"
	elsif names.size == 0
		puts "We have no students"
	else
		puts "Overall, we have #{names.size} great students"
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end

def interactive_menu
	loop do
	print_menu
	input = gets.chomp
	process(input)	
	end
end

def process(input)
case input
	when "1"
		input_students
	when "2"
		print_header
		show_students()
		print_footer(@students)
	when "9"
		exit
	else
		puts "I don't know what you mean, try again"
	end	
end


def input_students
	puts "Please enter the name of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	#get the first name
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		@students << {name: name, cohort: :november}
		puts "Now we have #{@students.count} students"
		# get another name from the user
		name = gets.chomp
	end
	#return the array of student
end

interactive_menu

	