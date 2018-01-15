
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

def play(songs)
  puts "Please enter a song name or number: "
  response = gets.chomp

  puts response.to_i
  puts songs.length
  puts response.to_i <= songs.length

  if songs.include?(response)
    puts "Playing #{response}"
  elsif response.to_i <= songs.length && response.to_i > 0
    puts "Playing #{songs[response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  response = ""
  
  while response != "exit"
    puts "Please enter a command:"
    response = gets.chomp
    
    case response
    when "help"
      help
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "exit"
      exit_jukebox
      break
    else
      puts "Invalid input, please try again."
    end
  end
end