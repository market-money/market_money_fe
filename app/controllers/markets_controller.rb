class MarketsController < ApplicationController # rubocop:disable Style/FrozenStringLiteralComment,Style/Documentation
  def index
    @markets = MarketFacade.new.markets
  end

  def show
    @market = MarketFacade.new.market(params[:id])
    @vendors = MarketFacade.new.market_vendors(params[:id])
  end
end
