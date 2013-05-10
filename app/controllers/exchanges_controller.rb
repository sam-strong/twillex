class ExchangesController < ApplicationController

  def create
    exchange = Exchange.from_config
    result = exchange.convert(params[:amount].to_i, params[:from_currency], params[:to_currency])


    render :json => { amount: result, to_currency: params[:to_currency]}

  end

end

