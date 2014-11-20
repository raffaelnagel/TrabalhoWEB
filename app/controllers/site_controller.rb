class SiteController < ApplicationController
  def index
    # retrieve all projects ordered by descending creation timestamp
    @projects = Project.order('created_at desc')
  end
end

