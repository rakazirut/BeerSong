class Screen
  # pause console screen for readability
  def pause
    STDIN.gets
  end
end
class Ninety_Nine_Bottles_Of_Beer
  # produces song with desired result
  def song
    i = 99 # integer
    loop do
      if i == 2
        puts i.to_s + " bottles of beer of the wall. " + i.to_s + " bottles of beer." +
                 " Take one down, pass it around, " + (i-1).to_s + " bottle of beer on the wall.\n\n"
      else
        puts i.to_s + " bottles of beer of the wall. " + i.to_s + " bottles of beer." +
                 " Take one down, pass it around, " + (i-1).to_s + " bottles of beer on the wall.\n\n"
      end
      i = i-1
      break if i == 1
    end
    puts "1 bottle of beer on the wall. 1 bottle of beer." +
             " Take one down, pass it around, no more bottles of beer on the wall!"
    CONSOLE_SCREEN.pause
  end
end
# Main Script
CONSOLE_SCREEN = Screen.new
THE_SONG = Ninety_Nine_Bottles_Of_Beer.new
THE_SONG.song