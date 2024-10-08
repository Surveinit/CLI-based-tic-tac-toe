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

    context 'board reads O O O across rows' do
      let(:board) {instance_double(Board)}
      subject(:victory_check) { described_class.new(board) }

      it 'with top row' do
        allow(board).to receive(:flatten_board).and_return(['O', 'O', 'O', 4, 5, 6, 7, 8, 9])
        expect(victory_check.check_win('O')).to eq(true)
      end
      
      it 'with middle row' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 3, 'O', 'O', 'O', 7, 8, 9])
        expect(victory_check.check_win('O')).to eq(true)
      end
      
      it 'with bottom row' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 3, 4, 5, 6, 'O', 'O', 'O'])
        expect(victory_check.check_win('O')).to eq(true)
      end

    end

    context 'board reads X X X across columns' do
      let(:board) {instance_double(Board)}
      subject(:victory_check) { described_class.new(board) }

      it 'with top row' do
        allow(board).to receive(:flatten_board).and_return(['X', 2, 3, 'X', 5, 6, 'X', 8, 9])
        expect(victory_check.check_win('X')).to eq(true)
      end
      
      it 'with middle row' do
        allow(board).to receive(:flatten_board).and_return([1, 'X', 3, 4, 'X', 6, 7, 'X', 9])
        expect(victory_check.check_win('X')).to eq(true)
      end
      
      it 'with bottom row' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 'X', 4, 5, 'X', 7, 8, 'X'])
        expect(victory_check.check_win('X')).to eq(true)
      end

    end

    context 'board reads O O O across columns' do
      let(:board) {instance_double(Board)}
      subject(:victory_check) { described_class.new(board) }

      it 'with top row' do
        allow(board).to receive(:flatten_board).and_return(['O', 2, 3, 'O', 5, 6, 'O', 8, 9])
        expect(victory_check.check_win('O')).to eq(true)
      end
      
      it 'with middle row' do
        allow(board).to receive(:flatten_board).and_return([1, 'O', 3, 4, 'O', 6, 7, 'O', 9])
        expect(victory_check.check_win('O')).to eq(true)
      end
      
      it 'with bottom row' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 'O', 4, 5, 'O', 7, 8, 'O'])
        expect(victory_check.check_win('O')).to eq(true)
      end

    end

    context 'board reads X X X diagnol' do
      let(:board) {instance_double(Board)}
      subject(:victory_check) { described_class.new(board) }

      it 'with left to right' do
        allow(board).to receive(:flatten_board).and_return(['X', 2, 3, 4, 'X', 6, 7, 8, 'X'])
        expect(victory_check.check_win('X')).to eq(true)
      end
      
      it 'with right to left' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 'X', 4, 'X', 6, 'X', 8, 9])
        expect(victory_check.check_win('X')).to eq(true)
      end

    end

    context 'board reads O diagnol' do
      let(:board) {instance_double(Board)}
      subject(:victory_check) { described_class.new(board) }

      it 'with left to right' do
        allow(board).to receive(:flatten_board).and_return(['O', 2, 3, 4, 'O', 6, 7, 8, 'O'])
        expect(victory_check.check_win('O')).to eq(true)
      end
      
      it 'with right to left' do
        allow(board).to receive(:flatten_board).and_return([1, 2, 'O', 4, 'O', 6, 'O', 8, 9])
        expect(victory_check.check_win('O')).to eq(true)
      end

    end

  end
end