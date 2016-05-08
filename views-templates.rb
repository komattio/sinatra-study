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

post '/sendtext' do
    @title = "send message"
    @message = params[:message]
    p @title
    p @message
    erb :index
end

