require 'sinatra'
require 'sinatra/reloader'

get '/' do
    code = "<%= Time.now %>"
    erb code
end

