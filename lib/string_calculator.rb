class StringCalculator
  def self.add(string)
    return "String is empty" if string.empty?
    return "Input must be a String" unless string.class == String    
  end
end