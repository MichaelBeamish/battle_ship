def convert_col(character)
	if character == 1
		letter = "A"
	elsif character == 2
		letter = "B"
	elsif character == 3
		letter = "C"
	elsif character == 4
		letter = "D"
	elsif character == 5
		letter = "E"
	elsif character == 6
		letter = "F"
	elsif character == 7
		letter = "G"
	elsif character == 8
		letter = "H"
	elsif character == 9
		letter = "I"
	else
		letter = "J"
	end

	return letter
end

#PLACE SHIPS:
#Aircraft Carrier...
def spawn_a_c()
	dir = rand(1..2)
	letter = ""
	abort_abort = false
	if dir == 1 #Virtical	
		col = rand(1..10)
		row = rand(1..6)
		check_col = col
		check_row = row
		# Check Path
		5.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_a_c
				abort_abort = true
				break
			end
			check_row += 1
		end
		# Commit Path
		5.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "AC"
			row += 1
		end
	else #row equals 2 - Horizontal
		row = rand(1..10)
		col = rand(1..6)
		check_col = col
		check_row = row
		# Check Path
		5.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_a_c
				abort_abort = true
				break
			end
			check_col += 1
		end
		# Commit Path
		5.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "AC"
			col += 1
		end
	end
end



#Battle Ship...
def spawn_b_s()
	dir = rand(1..2)
	letter = ""
	abort_abort = false
	if dir == 1 #Virtical	
		col = rand(1..10)
		row = rand(1..7)
		check_col = col
		check_row = row
		# Check Path
		4.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_b_s
				abort_abort = true
				break
			end
			check_row += 1
		end
		# Commit Path
		4.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "BS"
			row += 1
		end
	else #row equals 2 - Horizontal
		row = rand(1..10)
		col = rand(1..7)
		check_col = col
		check_row = row
		# Check Path
		4.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_b_s
				abort_abort = true
				break
			end
			check_col += 1
		end
		# Commit Path
		4.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "BS"
			col += 1
		end
	end
end



#Submarine ...
def spawn_s_b()
	dir = rand(1..2)
	letter = ""
	abort_abort = false
	if dir == 1 #Virtical	
		col = rand(1..10)
		row = rand(1..8)
		check_col = col
		check_row = row
		# Check Path
		3.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_s_b
				abort_abort = true
				break
			end
			check_row += 1
		end
		# Commit Path
		3.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "SB"
			row += 1
		end
	else #row equals 2 - Horizontal
		row = rand(1..10)
		col = rand(1..8)
		check_col = col
		check_row = row
		# Check Path
		3.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_s_b
				abort_abort = true
				break
			end
			check_col += 1
		end
		# Commit Path
		3.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "SB"
			col += 1
		end
	end
end


#Cruiser ...
def spawn_c_r()
	dir = rand(1..2)
	letter = ""
	abort_abort = false
	if dir == 1 #Virtical	
		col = rand(1..10)
		row = rand(1..8)
		check_col = col
		check_row = row
		# Check Path
		3.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_c_r
				abort_abort = true
				break
			end
			check_row += 1
		end
		# Commit Path
		3.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "CR"
			row += 1
		end
	else #row equals 2 - Horizontal
		row = rand(1..10)
		col = rand(1..8)
		check_col = col
		check_row = row
		# Check Path
		3.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_c_r
				abort_abort = true
				break
			end
			check_col += 1
		end
		# Commit Path
		3.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "CR"
			col += 1
		end
	end
end


#Destroyer ...
def spawn_d_s()
	dir = rand(1..2)
	letter = ""
	abort_abort = false
	if dir == 1 #Virtical	
		col = rand(1..10)
		row = rand(1..9)
		check_col = col
		check_row = row
		# Check Path
		2.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_d_s
				abort_abort = true
				break
			end
			check_row += 1
		end
		# Commit Path
		2.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "DS"
			row += 1
		end
	else #row equals 2 - Horizontal
		row = rand(1..10)
		col = rand(1..9)
		check_col = col
		check_row = row
		# Check Path
		2.times do
			letter = convert_col(check_col)
			if @board_array["#{check_row.to_s+letter}"] != "  "
				spawn_d_s
				abort_abort = true
				break
			end
			check_col += 1
		end
		# Commit Path
		2.times do
			if abort_abort == true
				break
			end
			letter = convert_col(col)

			@board_array["#{row.to_s+letter}"] = "DS"
			col += 1
		end
	end
end