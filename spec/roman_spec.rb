require_relative '../lib/roman'

RSpec.describe Roman do
  shared_examples 'to roman converter' do |int, rom|
    it "returns #{rom} for #{int}" do
      expect(described_class.to_roman(int)).to eq(rom)
    end
  end

  it_behaves_like 'to roman converter', 1, 'I'
  it_behaves_like 'to roman converter', 2, 'II'
  it_behaves_like 'to roman converter', 3, 'III'
end
