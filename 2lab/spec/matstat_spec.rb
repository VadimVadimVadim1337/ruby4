require './lib/main2'
require 'rspec'

describe Main2 do
  subject do
    arr = [[10], [23], [34], [45], [500]]
    Main2.new(arr)
  end

  describe '#max' do
    it { expect(subject.max).to eq(500) }
  end

  describe '#min' do
    it { expect(subject.min).to eq(10) }
  end

  describe '#average' do
    it { expect(subject.average).to eq(122) }
  end

  describe '#dispersion' do
    it { expect(subject.dispersion).to eq(447_25.5) }
  end
end
