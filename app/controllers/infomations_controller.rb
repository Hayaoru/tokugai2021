class InfomationsController < ApplicationController

  def index
    @infomation = Infomation.all
  end

end
