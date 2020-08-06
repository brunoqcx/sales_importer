class ImportSales
  def initialize(file)
    @file = file
  end

  def call
    Sale.bulk_insert(values: sales_attrs)
  end

  private

  attr_reader :file

  def sales_attrs
    @sales_attrs ||= ParseSales.new(file).call
  end
end