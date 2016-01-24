class StocksController < ApplicationController

  def index
    @stocks = Stock.all
    render text: @stocks.map { |stock| "<a href=\"/stocks/#{stock.id}\">#{stock.company} (#{stock.symbol}) — #{stock.current_price}</a>" }.join('<br>')
  end

  def show
    @stock = Stock.find(params[:id].to_i)
    if @stock
      render text: "<h1>#{@stock.company} (#{@stock.symbol})</h1>Current price: #{@stock.current_price}<br>Last synced at #{@stock.last_synced_at}"
    else
      render text: 'Not found'
    end
  end

  def new
    #code
  end

  def edit
    #code
  end

  def create
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
