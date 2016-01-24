class StocksController < ApplicationController

  def index
    @stocks = Stock.all
  end

  def show
    begin
      @stock = Stock.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render text: 'No such stock', status: 404
    end
  end

  def new
    @stock = Stock.new
  end

  def edit
    begin
      @stock = Stock.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render text: 'No such stock', status: 404
    end
  end

  def create
    @stock = Stock.create(stock_params)
    if @stock.errors.empty?
      redirect_to stock_path(@stock)
    else
      render :new
    end
    
  end

  def update
    #code
  end

  def destroy
    begin
      @stock = Stock.find(params[:id]).destroy
      redirect_to action: 'index'
    rescue ActiveRecord::RecordNotFound
      render text: 'No such stock', status: 404
    end
    
  end
  
  private
    def stock_params
      params.require(:stock).permit(:company, :symbol, :current_price)
    end

end
