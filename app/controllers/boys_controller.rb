class BoysController < ApplicationController 
  
  def index
    @boys = Boy.all
  end
  
  def new
  end
  
  def create
    @boy = Boy.new
    @boy.name = params["name"]
    @boy.age = params["age"]
    @boy.save
    
    redirect_to "/boys/#{@boy.id}"
  end
  
  def show
    @boy = Boy.find_by_id(params[:id])
  end
  
  def edit
    @boy = Boy.find_by_id(params[:id])
  end
  
  def update
    boy = Boy.find_by_id(params[:id])
    boy.name = params["name"]
    boy.age = params["age"]
    boy.save
    
    redirect_to "/boys/#{boy.id}"
  end
  
  def delete
    boy = Boy.find_by_id(params[:id])
    boy.destroy
    
    redirect_to "/boys"
  end
  
end