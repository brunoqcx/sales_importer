class SalesController < ApplicationController
  def index
    @total_gross_income = Sale.total_gross_income
  end

  def import
    ImportSales.new(params[:file]).call

    redirect_to sales_path, notice: 'Imported Sales!!'
  end
end
