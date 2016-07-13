class Player
  attr_accessor :name, :blood, :manna
  def initialize nama_p
    @name = nama_p
    @blood = 100
    @manna = 40
  end
  
  def get_blood
    @blood
  end
  def get_manna
    @manna
  end
  def get_name
    @name
  end
  def set_name
    @name
  end
end

class Main
  players = Hash.new
  
  def menu 
    puts "# ============================== #
    # Welcome to the Battle Arena #
    # ----------------------------------------------------- #
    # Description: #
    # 1 type 'new' to create a character #
    # 2. type 'start' to begin the fight #
    # ----------------------------------------------------- #
    # Current Player: #
    # - #
    # * Max player 2 or 3 #
    # ----------------------------------------------------- #"
    choose_m = gets.chomp
    if choose_m.eql? "new"
     
    elsif choose_m.eql? "start"
      
    else
      puts "Nothing to do"
    end
    
  end
  
  def current_player
    players[name] = Player.new nama_p
  end
  
  def set_player
    
  end
  
  def check_player
    
  end
end

main_p = Main.new
main_p.menu
