class StocksController < ApplicationController

  before_filter :find_stock, only: [:show, :edit, :update, :destroy]

  def index
    @stocks = Stock.all
  end

  def show
  end

  def new
    @stock = Stock.new
  end

  def edit
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
    @stock.update_attributes(stock_params)
    if @stock.errors.empty?
      redirect_to stock_path(@stock)
    else
      render :edit
    end
  end

  def destroy
    redirect_to action: 'index'
  end

  private
    def stock_params
      params.require(:stock).permit(:company, :symbol, :current_price)
    end
    
    def find_stock
      @stock = Stock.find(params[:id])
    end

end
