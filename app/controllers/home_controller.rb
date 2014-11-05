class HomeController < ApplicationController
  
  def index   
    @activity_type_count = ActivityType.count
    @activity_count = Activity.count

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
