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
  it_behaves_like 'to roman converter', 4, 'IV'
  it_behaves_like 'to roman converter', 5, 'V'
  it_behaves_like 'to roman converter', 6, 'VI'
  it_behaves_like 'to roman converter', 7, 'VII'
  it_behaves_like 'to roman converter', 8, 'VIII'
  it_behaves_like 'to roman converter', 9, 'IX'
  it_behaves_like 'to roman converter', 10, 'X'
  it_behaves_like 'to roman converter', 11, 'XI'
  it_behaves_like 'to roman converter', 12, 'XII'

end
