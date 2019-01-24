class Roman
  def self.to_roman(i)
    return 'L' + to_roman(i-50) if i >= 50
    return 'XL' + to_roman(i-40) if i >= 40
    return 'X' + to_roman(i-10) if i >= 10
    return 'IX' if i == 9
    return 'V' + to_roman(i-5) if i >= 5
    return 'IV' if i == 4
    'I' * i
  end
end
