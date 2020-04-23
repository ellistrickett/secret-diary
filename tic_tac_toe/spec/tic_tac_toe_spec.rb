require 'tic_tac_toe'

RSpec.describe TicTacToe do 
  describe "#initialize" do 
    it 'should create a board' do 
      expect(subject.board).to eq ("---,---,---")
    end
  end
  describe "#print_board" do 
  it 'return the board' do 
    expect(subject.print_board).to eq ("---,---,---")
  end
  it 'returns the board with the next move' do 
    subject.move("X--,---,---")
    subject.move("X--,-O-,---")
    expect(subject.print_board).to eq ("X--,-O-,---")
  end
end
  describe "#move" do 
    it 'puts an x on the board' do 
      subject.move("---,-X-,---")
      expect(subject.board).to eq ("---,-X-,---")
    end
  end
end
