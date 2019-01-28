class Roman
  LOOKUP = [
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I'],
  ]

  def self.to_roman(i)
    LOOKUP.each.with_index do |(arabic, roman), index|
      return roman + to_roman(i - arabic) if i >= arabic
    end
    ''
  end
end
