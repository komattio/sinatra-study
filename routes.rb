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

# "?"を使うと空白でも許容される
get '/hello/:fname/?:lname?' do |f, l|
    "hello #{f} #{l}."
end

# 正規表現の使用
get %r{/users/([0-9]*)} do |id|
    "user id = #{id}."
end

