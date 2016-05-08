require 'sinatra'
require 'sinatra/reloader'

get '/' do
    'Hello, world!'
end

get '/hello/:name' do |n|
    # パラメータの取得
    "Hello #{n}!"
end

get '/say/*/to/*' do
    params['splat'][1]
end

get '/download/*.*' do |path, extl|
    #[path, extl]
    [path]
end

get '/hello/:fname/?:lname?' do |f, l|
    "hello #{f} #{l}."
end

