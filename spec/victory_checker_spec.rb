require_relative '../lib/victory_checker'
require_relative '../lib/board'

describe VictoryCheck do

  describe 'victory_checker' do
    context 'board reads X X X across rows' do
      let(:board) {instance_double(Board)}
      subject(:victory_check) { described_class.new(board) }

      it 'with top row' do
        allow(board).to receive(:flatten_board).and_return(['X', 'X', 'X', 4, 5, 6, 7, 8, 9])
        expect(victory_check.check_win('X')).to eq(true)
      end
      
      it 'with middle row' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 3, 'X', 'X', 'X', 7, 8, 9])
        expect(victory_check.check_win('X')).to eq(true)
      end
      
      it 'with bottom row' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 3, 4, 5, 6, 'X', 'X', 'X'])
        expect(victory_check.check_win('X')).to eq(true)
      end

    end
  end
end