require 'tic_tac_toe'

RSpec.describe TicTacToe do 
  describe "#initialize" do 
    it 'should create a board' do 
      expect(subject.board).to eq ("---,---,---")
    end
  end
end
