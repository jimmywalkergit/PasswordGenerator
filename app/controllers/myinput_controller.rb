class MyinputController < ApplicationController
  def new
  	@myinput = Myinput.new
  end

  def show
  	@myinput = Myinput.find(params[:id])
  end
end
