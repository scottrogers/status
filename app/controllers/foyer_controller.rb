class FoyerController < ApplicationController


  def index

    @features = Feature.all

    render "home"
  end
end