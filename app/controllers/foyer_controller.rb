class FoyerController < ApplicationController


  def index

    @features = Feature.all

    @body_id = "home"

    render "home"
  end
end