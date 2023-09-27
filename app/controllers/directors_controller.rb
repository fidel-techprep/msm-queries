class DirectorsController < ApplicationController

  def index
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")

    @the_director = Director.where({ :id => the_id }).first
    render({ :template => "director_templates/details"})
  end

  def junior
   
    @the_director = Director.where({ :dob => Director.maximum(:dob) }).first
    render({ :template => "director_templates/youngest"})
  end

  def senior
    @the_director = Director.where({ :dob => Director.minimum(:dob) }).first
    render({ :template => "director_templates/eldest"})
  end
end
