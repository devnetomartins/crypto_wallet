class WelcomeController < ApplicationController
  layout "home"
  def index
    @nome = params[:nome]
  end
end
