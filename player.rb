class Player
  attr_accessor :name, :blood, :manna
  def initialize nama_p
    @name = nama_p
    @blood = 100
    @manna = 40
  end

  def attack
    blood -= 20
  end

  def defend
    manna -= 10
  end
end

class Main
  @players = Hash.new
  def self.menu
    puts "# ============================== #
    # Welcome to the Battle Arena #
    # ----------------------------------------------------- #
    # Description: #
    # 1 type 'new' to create a character #
    # 2. type 'start' to begin the fight #
    # ----------------------------------------------------- #
    # Current Player: #"
    Main.current_player
    puts "# - #
    # * Max player 2 or 3 #
    # ----------------------------------------------------- #"
  # choose_m = gets.chomp
  # if choose_m.eql? "new"
  #
  # Main.set_player
  #
  #
  # elsif choose_m.eql? "start"
  #
  # else
  # Main.menu
  # end

  end

  def self.set_player
    puts "# ============================== #
    # Welcome to the Battle Arena #
    # ----------------------------------------------------- #
    # Description: #
    # 1 type 'new' to create a character #
    # 2. type 'start' to begin the fight #
    # ----------------------------------------------------- #
    # Put Player Name: #"
    nama_p = gets.chomp
    @players[nama_p] = Player.new(nama_p)
    puts "# - #
    # * Max player 2 or 3 #
    # ----------------------------------------------------- #
    #Press Enter to continue#"

    enter = gets.chomp
    if enter
      Main.menu
    end
  # Main.check_player
  end

  def self.current_player
    @players.each do |key, p|
      puts "Name: #{@players[key].name}, Blood: #{@players[key].blood}, Manna: #{@players[key].manna}"
    end
  end

  def self.battle

  end

end

Main.menu
