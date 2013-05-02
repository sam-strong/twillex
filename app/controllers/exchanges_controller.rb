class ExchangesController < ApplicationController

  def create
    @exchange = Exchange.convert(params['amount'].to_i, params['from_currency'], params['to_currency'])

    respond_to do |format|
      # format.json  { render json: :amount => @exchange }
      format.js {}
    end


    # render :json => { :amount => @exchange }

  end

end

