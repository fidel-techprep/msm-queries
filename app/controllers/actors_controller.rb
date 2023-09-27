class ActorsController < ApplicationController

  def index
    render({ :template => "actor_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")

    @the_actor = Actor.where({ :id => the_id }).first
   
    render({ :template => "actor_templates/details"})
  end
end
