class Sale < ApplicationRecord

  def self.total_gross_income
    Sale.sum('sales.item_price * sales.purchase_count')
  end
end
