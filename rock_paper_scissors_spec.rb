require './rock_paper_scissors.rb'

describe RockPaperScissors do

  before(:each) do
    @rpc = RockPaperScissors.new
  end

  it 'picks a random hand' do
    expect(["rock", "paper", "scissors"]).to include(@rpc.randomHand)
  end

  it 'sees if rock loses to paper' do
    expect(@rpc.compareHands("rock", "paper")).to eq("paper")
  end

  it 'sees if rock beats scissors' do
    expect(@rpc.compareHands("rock", "scissors")).to eq("rock")
  end

  it 'sees if two of the same hands tie' do
    expect(@rpc.compareHands("rock", "rock")).to eq("tie")
    expect(@rpc.compareHands("paper", "paper")).to eq("tie")
    expect(@rpc.compareHands("scissors", "scissors")).to eq("tie")
  end


end
