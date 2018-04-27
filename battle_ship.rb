# Battleship Pieces/Length:
# Aircraft Carrier: 5
# Battlesship: 4
# Submarine: 3
# Cruiser: 3
# Destroyer: 2

# Battleship Board:
# A-J Horizontally
# 1-10 Vertically

require_relative 'game_board'
require_relative 'spawn_ships'

hit = "><"
miss = ". "
attack_message = ""
@sunk_message = ""
@ships_sunk = []


spawn_a_c()
spawn_b_s()
spawn_s_b()
spawn_c_r()
spawn_d_s()


@ac_location = []
@bs_location = []
@sb_location = []
@cr_location = []
@ds_location = []
@board_array.each do |block, value|
	if value == "AC"
		@ac_location.push(block)
		@board_array["#{block}"] = "  "
	end
	if value == "BS"
		@bs_location.push(block)
		@board_array["#{block}"] = "  "
	end
	if value == "SB"
		@sb_location.push(block)
		@board_array["#{block}"] = "  "
	end
	if value == "CR"
		@cr_location.push(block)
		@board_array["#{block}"] = "  "
	end
	if value == "DS"
		@ds_location.push(block)
		@board_array["#{block}"] = "  "
	end
end

@which_ship = ""
def check_ship_locations(check)
	a_match = false
	@which_ship = ""
	if @ac_location.include? check
		a_match = true
		@which_ship = "ac"
	elsif @bs_location.include? check
		a_match = true
		@which_ship = "bs"
	elsif @sb_location.include? check
		a_match = true
		@which_ship = "sb"
	elsif @cr_location.include? check
		a_match = true
		@which_ship = "cr"
	elsif @ds_location.include? check
		a_match = true
		@which_ship = "ds"
	end
	return a_match
end



@ac_hits = 0
@bs_hits = 0
@sb_hits = 0
@cr_hits = 0
@ds_hits = 0
def check_if_sunk()
	if @which_ship == "ac"
		@ac_hits += 1
	end
	if  @ac_hits == 5
		@sunk_message = "You sunk my Aircraft Carrier."
		@ships_sunk.push("Aircraft Carrier")
		@ac_hits += 1
	end

	if @which_ship == "bs"
		@bs_hits += 1
	end

	if  @bs_hits == 4
		@sunk_message = "You sunk my Battleship."
		@ships_sunk.push("Battleship")
		@bs_hits += 1
	end

	if @which_ship == "sb"
		@sb_hits += 1
	end
	if  @sb_hits == 3
		@sunk_message = "You sunk my Submarine."
		@ships_sunk.push("Submarine")
		@sb_hits += 1
	end

	if @which_ship == "cr"
		@cr_hits += 1
	end
	if  @cr_hits == 3
		@sunk_message = "You sunk my Cruiser."
		@ships_sunk.push("Cruiser")
		@cr_hits += 1
	end

	if @which_ship == "ds"
		@ds_hits += 1
	end
	if  @ds_hits == 2
		@sunk_message = "You sunk my Destroyer."
		@ships_sunk.push("Destroyer")
		@ds_hits += 1
	end
end

game_in_play = true

while game_in_play == true
	display_board()
	puts "\n"
	puts attack_message
	attack_message = ""
	puts @sunk_message
	@sunk_message = ""
	puts "Type a location to attack!"
	attack = gets.chomp.upcase

	if @board_array["#{attack}"] == hit || @board_array["#{attack}"] == miss
		attack_message = "You've already called #{attack}."
	elsif @board_array["#{attack}"] == "  "
		if check_ship_locations(attack) == false
			attack_message = "You missed."
			@board_array["#{attack}"] = miss
		else
			attack_message = "Direct hit!"
			check_if_sunk()
			@board_array["#{attack}"] = hit

		end
	else
		attack_message = "Please type number followed by letter."
	end

	if @ships_sunk.length == 5
		game_in_play = false
	end
end

display_board()
	puts "\n"
	puts attack_message
	attack_message = ""
	puts @sunk_message
	@sunk_message = ""

puts "\n"
puts "You won!"
misses = 0
@board_array.each do |block, value|
	if value == ". "
		misses += 1
	end
end
puts "You missed #{misses} times."