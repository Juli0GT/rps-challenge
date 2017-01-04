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

  def win?
    game_result == :win
  end

  def lose?
    game_result == :lose
  end

  def draw?
    game_result == :draw
  end

  private

  def game_result
    return if !@opponent_shape
    GAME_RULES[@player_shape][@opponent_shape]
  end
end
