class StringCalculator
  def self.add(string)
    return "String is empty" if string.empty?
    return "Input must be a String" unless string.class == String

    if string.start_with?('//')
      delimiter_spec, numbers = string.split("\n", 2)
      custom_delimiter = delimiter_spec[2..]
      delimiter = Regexp.escape(custom_delimiter)
    else
      numbers = string
    end

    delimiter = /,|\n/
    number_set = numbers.split(/#{delimiter}/).map(&:to_i)

    negative_numbers = number_set.select { |n| n < 0 }
    raise "negative numbers not allowed #{negative_numbers}" unless negative_numbers.empty?

    number_set.sum
  end
end