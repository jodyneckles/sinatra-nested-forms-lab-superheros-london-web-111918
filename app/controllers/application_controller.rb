require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :index
    end

    post "/teams" do
      @team = Team.new(params[:team])
      params[:team][:members].each {|member_data| Member.new(member_data)}
      @members = Member.all
      erb :team
    end


end
