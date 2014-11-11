class SiteController < ApplicationController
  def index
  # retrieve all Timestamps ordered by descending creation timestamp
    @timestamps = Timestamp.order('created_at desc')
  end
end
