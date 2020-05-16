require 'sinatra/base'

class App < Sinatra::Base

    #Renders a basketball team form
    get "/newteam" do
        erb :newteam
    end

    #Renders the team.erb page
    #That displays the data submitted by the user
    post "/team" do
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @sf = params[:sf]
        @pf = params[:pf]
        @c = params[:c]
        erb :team
    end

end