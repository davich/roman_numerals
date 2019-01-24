require_relative '../lib/roman'

RSpec.describe Roman do
  it 'returns I for 1' do
    expect(described_class.to_roman(1)).to eq('I')
  end
end
