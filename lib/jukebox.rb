require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
	str = %(I accept the following commands:
	- help : displays this help message
	- list : displays a list of songs you can play
	- play : lets you choose a song to play
	- exit : exits this program
	)

	puts str
end

def list(songs)
	songs.each_with_index do |song, i|
		puts "#{i+1}. #{song}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	song_to_play = gets.chomp
	if songs.include?(song_to_play) == true
		puts "Playing #{song_to_play}"
	elsif ((song_to_play.to_i)-1).between?(0,songs.length)
		puts "Playing #{songs[song_to_play.to_i - 1]}"
	else 
		puts "Invalid input, please try again"
	end
	# binding.pry
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	flag = 0
	help
	while flag == 0
		puts "Please enter a command:"
		entry = gets.chomp

		case entry 
		when "help"
			help
		when "list"
			list(songs)
		when "play"
			play(songs)
		when "exit"
			exit_jukebox
			flag = 1
		end
	end
end

# play(songs)
# binding.pry