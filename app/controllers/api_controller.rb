class ApiController < ApplicationController
  def info
    slack_name = params[:slack_name]
    track = params[:track]
    current_day = Time.now.strftime("%A")
    utc_time = Time.now.utc.strftime("%Y-%m-%dT%H:%M:%SZ")
    github_file_url = "https://github.com/Ken-Musau/hngXbackend/blob/main/app/controllers/api_controller.rb"
    github_repo_url = "https://github.com/Ken-Musau/hngXbackend"
    status_code = 200

    respnse_data = {
      slack_name: slack_name,
      current_day: current_day,
      utc_time: utc_time,
      track: track,
      github_file_url: github_file_url,
      github_repo_url: github_repo_url,
      status_code: status_code,
    }

    render json: respnse_data
  end
end
