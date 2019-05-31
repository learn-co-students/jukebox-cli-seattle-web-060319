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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, number|
    puts "#{number + 1}: #{song}}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
      if (1..9).to_a.include?(song_choice.to_i)
        puts "Playing #{songs[song_choice.to_i - 1]}"
        # binding.pry
      elsif songs.include?(song_choice)
        puts "Playing #{song_choice}"
      else
        puts "Invalid input, please try again"
      end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
    entry = gets.chomp
    if entry.downcase == "help"
      help
    elsif entry.downcase == "list"
      list(songs)
    elsif entry.downcase == "play"
      play(songs)
    elsif entry.downcase == "exit"
      exit_jukebox
    else
      help
    end
end
