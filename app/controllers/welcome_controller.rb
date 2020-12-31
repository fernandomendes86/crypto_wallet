class WelcomeController < ApplicationController
  def index
  	cookies[:curso] = "Curso RoR - [cookie]"
  	session[:curso] = "Curso RoR - [session]"
  	@nome = params[:nome] 
  	@nome ||= "Fernando" # @nome = @nome ||"Fernando"
  	@curso="Rails"
  end
end
