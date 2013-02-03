class WelcomeController < ApplicationController 
  
  def index
    
    @boys = Boy.all
    
  end
  
end