class RockPaperScissors

  def randomHand
    hands = ["rock", "paper", "scissors"]
    hands.sample
  end

  def compareHands(hand1, hand2)
    wins_against = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }
    if hand1 == hand2
      return "tie"
    elsif wins_against[hand1] == hand2
      return hand1
    else
      return hand2
    end
  end

end
