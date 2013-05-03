class ExchangesController < ApplicationController

  def create

    @exchange = Exchange.convert(params[:amount].to_i, params[:from_currency], params[:to_currency])


    render :json => { amount: @exchange, to_currency: params[:to_currency]}


  end

end

