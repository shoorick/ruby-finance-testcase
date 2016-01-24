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
    #code
  end

  def edit
    #code
  end

  def create
    render text: 'Stock created'
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

end
