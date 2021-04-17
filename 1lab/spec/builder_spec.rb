require './lib/main2'
require 'rspec'

describe SS do
  subject do
    SS.class_build(source, target)
  end
  context 'source is C' do
    let(:source) { 'C' }
    context 'target is F' do
      let(:target) { 'F' }
      it { expect(subject.otvet(42)).to eq(107) }
    end
    context 'target is K' do
      let(:target) { 'K' }
      it { expect(subject.otvet(100)).to eq(373) }
    end
  end
  context 'source is F' do
    let(:source) { 'F' }
    context 'target is C' do
      let(:target) { 'C' }
      it { expect(subject.otvet(120)).to eq(48) }
    end
    context 'target is K' do
      let(:target) { 'K' }
      it { expect(subject.otvet(151)).to eq(339.1111111111111) }
    end
  end
  context 'source is K' do
    let(:source) { 'K' }
    context 'target is C' do
      let(:target) { 'C' }
      it { expect(subject.otvet(320)).to eq(47) }
    end
    context 'target is F' do
      let(:target) { 'F' }
      it { expect(subject.otvet(100)).to eq(-279.40000000000003) }
    end
  end
end
