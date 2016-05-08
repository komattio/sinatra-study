require 'sinatra'
require 'sinatra/reloader'

get '/' do
    code = "<%= Time.now %>"
    erb code
end

get '/erb-sample' do
    @title = "ハローワールド"
    erb :index
end

