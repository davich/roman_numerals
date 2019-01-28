require_relative '../lib/roman'

RSpec.describe Roman do
  shared_examples 'the converter' do |arabic, roman|
    it "returns #{roman} for #{arabic}" do
      expect(Roman.to_roman(arabic)).to eq(roman)
    end
  end

  it_behaves_like 'the converter', 1, 'I'
  it_behaves_like 'the converter', 2, 'II'
  it_behaves_like 'the converter', 3, 'III'
  it_behaves_like 'the converter', 4, 'IV'
  it_behaves_like 'the converter', 5, 'V'
  it_behaves_like 'the converter', 6, 'VI'
  it_behaves_like 'the converter', 7, 'VII'
  it_behaves_like 'the converter', 8, 'VIII'
  it_behaves_like 'the converter', 9, 'IX'
  it_behaves_like 'the converter', 10, 'X'
  it_behaves_like 'the converter', 11, 'XI'
  it_behaves_like 'the converter', 12, 'XII'
  it_behaves_like 'the converter', 13, 'XIII'
  it_behaves_like 'the converter', 14, 'XIV'
  it_behaves_like 'the converter', 15, 'XV'
  it_behaves_like 'the converter', 20, 'XX'
  it_behaves_like 'the converter', 39, 'XXXIX'
  it_behaves_like 'the converter', 40, 'XL'
  it_behaves_like 'the converter', 41, 'XLI'
end
