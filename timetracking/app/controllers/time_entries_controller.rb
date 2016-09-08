class TimeEntriesController < ApplicationController

  def index
    # Input
    # - project id under params[:id]
    # Ouput
    # - all entries for the project
    # 1. Find the project
    # 2. Get all time entries for the project
    @project = Project.find(params[:project_id])
    @time_entries = @project.time_entries.where(
      date: Time.now.beginning_of_month..Time.now.end_of_month
    )
  end
end
