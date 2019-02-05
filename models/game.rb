class Game

  def initialize(first_hand, second_hand)
    @first_hand = first_hand
    @second_hand = second_hand
  end

  def game()
    choices = ["scissors", "paper", "rock"]
    index = choices.index(@first_hand)
    winning_choice = choices[index - 1]
    if @second_hand == @first_hand
      return 'It is a draw'
    elsif @second_hand == winning_choice
      return "Player 2 wins by playing #{@second_hand}"
    else
      return "Player 1 wins by playing #{@first_hand}"
    end
  end

  # def game
  #   if @first_hand == 'paper' && @second_hand == 'stone'
  #     return "Player 1 wins by playing #{@first_hand}!"
  #   end
  #   if @first_hand == 'stone' && @second_hand == 'paper'
  #     return "Player 2 wins by playing #{@second_hand}!"
  #   end
  #   if @first_hand == 'scissors' && @second_hand == 'stone'
  #     return "Player 2 wins by playing #{@second_hand}!"
  #   end
  #   if @first_hand == 'stone' && @second_hand == 'scissors'
  #     return "Player 1 wins by playing #{@first_hand}!"
  #   end
  #   if @first_hand == 'paper' && @second_hand == 'scissors'
  #     return "Player 2 wins by playing #{@second_hand}!"
  #   end
  #   if @first_hand == 'paper' && @second_hand == 'paper'
  #     return "It is a draw!"
  #   end
  #   if @first_hand == 'stone' && @second_hand == 'stone'
  #     return 'It is a draw!'
  #   end
  #   if @first_hand == 'scissors' && @second_hand == 'paper'
  #     return "Player 1 wins by playing #{@first_hand}!"
  #   end
  #   if @first_hand == 'scissors' && @second_hand == 'scissors'
  #     return 'It is a draw!'
  #   end
  # end
end
