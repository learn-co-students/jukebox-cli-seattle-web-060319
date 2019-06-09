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
=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end

# puts "Please enter a command:"
# command = gets.chomp

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number"
  input = gets.chomp

  #if (1..songs.length).include?(input) || songs.inlude?(input)

  if (1..songs.length).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"

  elsif songs.include?(input)
    puts "Playing #{input}"

  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  # puts "Please enter a command:"
  # input = gets.chomp

  while true do

    puts "Please enter a command:"
    input = gets.chomp


    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      exit_jukebox
      break
    end
  end
end
