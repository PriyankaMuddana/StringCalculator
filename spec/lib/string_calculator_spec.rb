require 'rspec'

RSpec.describe StringCalculator do
  describe 'add' do
    it 'returns 0' do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end