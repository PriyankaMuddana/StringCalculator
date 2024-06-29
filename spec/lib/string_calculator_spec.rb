require 'rspec'

RSpec.describe StringCalculator do
  describe 'add' do
    it 'returns 0' do
      expect(StringCalculator.add("")).to eq(0)
    end
  end

  context 'with one number' do
    it 'returns the number itself' do
      expect(StringCalculator.add("5")).to eq(5)
    end
  end

  context 'with two numbers' do
    it 'returns the sum of the numbers' do
      expect(StringCalculator.add("5,2")).to eq(7)
    end
  end

  context 'with negative numbers' do
    it 'raises an exception with a message returning all the negative numbers' do
      expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed [-2]")
      expect { StringCalculator.add("-1,2,-3") }.to raise_error("negative numbers not allowed [-1, -3]")
    end
  end 
  
end