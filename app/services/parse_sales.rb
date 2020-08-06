require 'csv'

class ParseSales
  def initialize(file)
    @file = file
  end

  def call
    CSV.open(file, **parsing_params).map(&:to_h)
  end

  private

  def parsing_params
    { headers: true, col_sep: "\t", header_converters: :symbol }
  end

  attr_reader :file
end