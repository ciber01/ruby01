class SaludoController < ApplicationController
  def index
	get "/saludo", to: "saludo#index"
  end
end
