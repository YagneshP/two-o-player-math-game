class Player
  attr_accessor :name , :life
    def initialize (name)
      @name = name
      @life = 3 # intial 3 lives for a player
    end
    # def change_life
    #   @life -= 1
    # end
end
