class EntriesController < ApplicationController
  def index
  	@entries = Entry.all
  end

  def show
  	@entry = Entry.find(params[:id])
  end

  def home
  	ids = Entry.pluck(:id)
  	@random_entries = Entry.find(ids.sample(5))
  end

end
