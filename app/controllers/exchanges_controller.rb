class ExchangesController < ApplicationController

  def create
    @exchange = Exchange.convert(params['amount'].to_i, params['from'], params['to'])


    render :json => { amount: @exchange, to: params['to']}

  end

end

