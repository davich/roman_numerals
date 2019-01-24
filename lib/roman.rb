class Roman
  def self.to_roman(i)
    [
      ['L', 50],
      ['XL', 40],
      ['X', 10],
      ['IX', 9],
      ['V', 5],
      ['IV', 4],
      ['I', 1],
    ].each do |roman, arabic|
      return roman + to_roman(i-arabic) if i >= arabic
    end
    ''
  end
end
