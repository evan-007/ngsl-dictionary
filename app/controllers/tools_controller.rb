class ToolsController < ApplicationController
  def form
  end


  def report
  	@words = (params[:text]).split 
  	#Entry.exists?(word: 'the')

  end

end
