require 'command_parser'

describe CommandParser do
  describe '#turn' do
    it 'sets turn to given value' do
      command_parser.turn(10)

      expect(command_parser.actions[:turn]).to be 10
    end
  end

  describe '#turn_gun' do
    it 'sets turn_gun action to given value' do
      command_parser.turn_gun(20)

      expect(command_parser.actions[:turn_gun]).to be 20
    end
  end

  describe '#turn_radar' do
    it 'sets turn_radar action to given value' do
      command_parser.turn_radar(20)

      expect(command_parser.actions[:turn_radar]).to be 20
    end
  end

  describe '#accelerate' do
    it 'accelerates' do
      command_parser.accelerate

      expect(command_parser.actions[:accelerate]).to be true
    end
  end

  describe '#reset_actions' do
    it 'reset actions hash' do
      command_parser.turn(10)
      command_parser.reset_actions

      expect(command_parser.actions).to eq({})
    end
  end

  def command_parser
    @_command_parser ||= CommandParser.new
  end
end
