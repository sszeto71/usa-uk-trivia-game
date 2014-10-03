require_relative '../../config/application'
require 'open-uri'

class GameView
  def self.show_tasks
    tasks = Question.all
    # puts tasks
    tasks.each {|task| puts "#{task.id} [#{task.complete}] #{task.description}"}
  end

  def self.show_menu
    puts "#"*100
    puts "#"*100
    # Welcome message
    puts "Welcome to Pants or Trousers?! This quiz will ask you a few simple questions and tell you if you belong in the US of A or the UK"
    puts "Available commands:"
    puts "Start - start the game"
    puts "Exit - exit the program"
    print "Enter your command here: "
      input = gets.chomp.downcase
      # return input.downcase

     if input == "start"
      GameController.start_game
     elsif input == "Exit"
      exit_game
     end

  end

  def self.show_question(name)
    puts "-"*(name.question.length/8) + "-"*(name.question.length) + "-"*(name.question.length/8)
    if name.question.length.odd?
      puts "|" + " "*(name.question.length/8) + "#{name.question} " + " "*(name.question.length/8) + "|"
    else
      puts "|" + " "*(name.question.length/8) + "#{name.question}" + " "*(name.question.length/8) + "|"
    end
    # puts "     #{name.question}     "
    input = gets.chomp.downcase # get user input
    GameController.check_correctness(input, name)
  end

  def self.output_at_end(uk, us)
    if us > uk
      puts "You are an American, rock on!"
      `say -v "Alex" "You are an American, ROCK ON!"`
      GameView.dragons

    else
      puts "You are a Brit!  Don't fight it."
      `say -v "Daniel" "You are a Brit!  Don't fight it."`
      GameView.brits
      # web_contents  = open('https://www.youtube.com/watch?v=b00lc92lExw') {|f| f.read }
      open("http://example.com").read


    end
  end

  def exit_game
    puts "Game over"
  end

  def self.dragons
    puts "                                 o"
    sleep(0.1)
    puts "                                /\\"
    sleep(0.1)
    puts "                               /::\\"
    sleep(0.1)
    puts "                              /::::\\"
    sleep(0.1)
    puts "                ,a_a         /\\::::/\\"
    sleep(0.1)
    puts "               {/ \'\'\\_      /\\ \\::/\\ \\"
    sleep(0.1)
    puts "               {\\ ,_oo)    /\\ \\ \\/\\ \\ \\"
    sleep(0.1)
    puts "               {/  (_^____/  \\ \\ \\ \\ \\ \\"
    sleep(0.1)
    puts "     .=.      {/ \\___)))*)    \\ \\ \\ \\ \\/"
    sleep(0.1)
    puts "    (.=.\`\   {/   /=;  ~/       \\ \\ \\ \\/"
    sleep(0.1)
    puts "        \\ \`\\{/(   \\/\\  /        \\ \\ \\/"
    sleep(0.1)
    puts "         \\  \`. \`\\  ) )           \\ \\/"
    sleep(0.1)
    puts "          \\    // /_/_            \\/"
    sleep(0.1)
    puts "           \'==\'\'---))))"
    sleep(0.1)
  end

  def self.brits
   puts "|:~8a.`~888a:::::::::::::::88......88:::::::::::::::;a8~\".a888~|"
   sleep(0.1)
   puts "|::::~8a.`~888a::::::::::::88......88::::::::::::;a8~\".a888~:::|"
   sleep(0.1)
   puts "|:::::::~8a.`~888a:::::::::88......88:::::::::;a8~\".a888~::::::|"
   sleep(0.1)
   puts "|::::::::::~8a.`~888a::::::88......88::::::;a8~\".a888~:::::::::|"
   sleep(0.1)
   puts "|:::::::::::::~8a.`~888a:::88......88:::;a8~\".a888~::::::::::::|"
   sleep(0.1)
   puts "|::::::::::::::::~8a.`~888a88......88;a8~\".a888~:::::::::::::::|"
   sleep(0.1)
   puts "|:::::::::::::::::::~8a.`~888......88~\".a888~::::::::::::::::::|"
   sleep(0.1)
   puts "|8888888888888888888888888888......8888888888888888888888888888|"
   sleep(0.1)
   puts "|..............................................................|"
   sleep(0.1)
   puts "|..............................................................|"
   sleep(0.1)
   puts "|8888888888888888888888888888......8888888888888888888888888888|"
   sleep(0.1)
   puts "|::::::::::::::::::a888~\".a88......888a.\"~8;:::::::::::::::::::|"
   sleep(0.1)
   puts "|:::::::::::::::a888~\".a8~:88......88~888a.\"~8;::::::::::::::::|"
   sleep(0.1)
   puts "|::::::::::::a888~\".a8~::::88......88:::~888a.\"~8;:::::::::::::|"
   sleep(0.1)
   puts "|:::::::::a888~\".a8~:::::::88......88::::::~888a.\"~8;::::::::::|"
   sleep(0.1)
   puts "|::::::a888~\".a8~::::::::::88......88:::::::::~888a.\"~8;:::::::|"
   sleep(0.1)
   puts "|:::a888~\".a8~:::::::::::::88......88::::::::::::~888a.\"~8;::::|"
   sleep(0.1)
   puts "|a888~\".a8~::::::::::::::::88......88:::::::::::::::~888a.\"~8;:|"
   sleep(0.1)
  end

  def self.print_welcome
    puts "      #     # ####### #        #####  ####### #     # ####### "
    sleep(0.1)
    puts "      #  #  # #       #       #     # #     # ##   ## #       "
    sleep(0.1)
    puts "      #  #  # #       #       #       #     # # # # # #       "
    sleep(0.1)
    puts "      #  #  # #####   #       #       #     # #  #  # #####   "
    sleep(0.1)
    puts "      #  #  # #       #       #       #     # #     # #       "
    sleep(0.1)
    puts "      #  #  # #       #       #     # #     # #     # #       "
    sleep(0.1)
    puts "       ## ##  ####### #######  #####  ####### #     # ####### "
    sleep(0.1)
  end

  def self.print_to
    puts "                   ####### ####### "
    sleep(0.1)
    puts "                      #    #     # "
    sleep(0.1)
    puts "                      #    #     # "
    sleep(0.1)
    puts "                      #    #     # "
    sleep(0.1)
    puts "                      #    #     # "
    sleep(0.1)
    puts "                      #    #     # "
    sleep(0.1)
    puts "                      #    ####### "
    sleep(0.1)
  end

  def self.print_pants
    puts "          ######     #    #     # #######  #####  "
    sleep(0.1)
    puts "          #     #   # #   ##    #    #    #     # "
    sleep(0.1)
    puts "          #     #  #   #  # #   #    #    #       "
    sleep(0.1)
    puts "          ######  #     # #  #  #    #     #####  "
    sleep(0.1)
    puts "          #       ####### #   # #    #          # "
    sleep(0.1)
    puts "          #       #     # #    ##    #    #     # "
    sleep(0.1)
    puts "          #       #     # #     #    #     #####  "
    sleep(0.1)
  end

  def self.print_or
    puts "                      ####### ######  "
    sleep(0.1)
    puts "                      #     # #     # "
    sleep(0.1)
    puts "                      #     # #     # "
    sleep(0.1)
    puts "                      #     # ######  "
    sleep(0.1)
    puts "                      #     # #   #   "
    sleep(0.1)
    puts "                      #     # #    #  "
    sleep(0.1)
    puts "                      ####### #     # "
    sleep(0.1)
  end

  def self.print_trousers
    puts "####### ######  ####### #     #  #####  ####### ######   #####  "
    sleep(0.1)
    puts "   #    #     # #     # #     # #     # #       #     # #     # "
    sleep(0.1)
    puts "   #    #     # #     # #     # #       #       #     # #       "
    sleep(0.1)
    puts "   #    ######  #     # #     #  #####  #####   ######   #####  "
    sleep(0.1)
    puts "   #    #   #   #     # #     #       # #       #   #         # "
    sleep(0.1)
    puts "   #    #    #  #     # #     # #     # #       #    #  #     # "
    sleep(0.1)
    puts "   #    #     # #######  #####   #####  ####### #     #  #####  "
    sleep(0.1)
  end
end
