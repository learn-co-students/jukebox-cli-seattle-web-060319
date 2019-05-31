#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO"            => 'Users/Karen/dev/prework/jukebox-cli-seattle-web-060319/audio/Emerald-Park/01.mp3',
"LiberTeens"          => 'Users/Karen/dev/prework/jukebox-cli-seattle-web-060319/audio/Emerald-Park/02.mp3',
"Hamburg"             => 'Users/Karen/dev/prework/jukebox-cli-seattle-web-060319/audio/Emerald-Park/03.mp3',
"Guiding Light"       => 'Users/Karen/dev/prework/jukebox-cli-seattle-web-060319/audio/Emerald-Park/04.mp3',
"Wolf"                => 'Users/Karen/dev/prework/jukebox-cli-seattle-web-060319/audio/Emerald-Park/05.mp3',
"Blue"                => 'Users/Karen/dev/prework/jukebox-cli-seattle-web-060319/audio/Emerald-Park/06.mp3',
"Graduation Failed"   => 'Users/Karen/dev/prework/jukebox-cli-seattle-web-060319/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  str = %(I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  )
  puts str
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.keys.each {|song_name| puts "#{song_name}"}
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  song_to_play = gets.chomp
  if my_songs.keys.include?(song_to_play) == true
    puts "Playing #{song_to_play}"
    puts my_songs
    system "open #{my_songs[song_to_play]}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
end

def run(my_songs)
  flag = 0
  help
  while flag == 0
    puts "Please enter a command:"
    entry = gets.chomp

    case entry 
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox
      flag = 1
    end
  end
end
