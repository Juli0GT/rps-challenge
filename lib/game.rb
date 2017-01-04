class Game
  GAME_RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_shape, :opponent_shape

  def initialize(game_options)
    @player_name = game_options['player_name']
    @player_shape = game_options['player_shape']
    @opponent_shape = game_options['opponent_shape']
  end

end
