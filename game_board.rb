number_array = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
letter_array = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
@board_array = Hash.new

number_array.each do |number|
	letter_array.each do |letter|
		@board_array["#{number+letter}"] = "  "
	end
end

def display_board()
	system "cls"
	keys = @board_array.keys
	i = 0

	puts "BATTLESHIP"
	puts "¯¯¯¯¯¯¯¯¯¯"
	puts ">< = Hit"
	puts ".  = Miss"
	puts "\n"
	puts "Ships Sunk:"
	if @ships_sunk.empty?
		puts "None"
	else
		@ships_sunk.each do |ship|
			puts ship
		end
	end
	puts "\n"
	puts "\n"

	puts "       A      B      C      D      E      F      G      H      I      J    "
	puts "     ______ ______ ______ ______ ______ ______ ______ ______ ______ ______ "
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 1  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 2  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 3  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 4  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 5  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 6  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 7  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 8  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print " 9  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
	puts "    |      |      |      |      |      |      |      |      |      |      |"
	print "10  |  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  "
	i += 1
	print "|  #{@board_array[keys[i]]}  |"
	i += 1
	puts "\n"
	puts "    |______|______|______|______|______|______|______|______|______|______|"
end   