class StocksController < ApplicationController
  
  def index
    @stocks = Stock.all
    render text: @stocks.map { |stock| "#{stock.company} (#{stock.company}) — #{stock.current_price}" }.join('<br>')
  end
  
end
