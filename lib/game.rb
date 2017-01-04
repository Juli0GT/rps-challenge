class Game
  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_shape, :oponent_shape

  def initialize(player_name, player_shape, oponent_shape)
    @player_name = player_name
    @player_shape = player_shape
    @oponent_shape = oponent_shape
  end

end
