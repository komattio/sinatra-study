require 'sinatra'
require 'sinatra/reloader'

get'/foo', :agent => /Songbird (\d\.\d)[\d\/]*?/ do
    "Songbirdのバージョン #{params['agent'][0]}を使っています."
end

get '/', :host_name => /^admin\./ do
    "Admin area."
end

set(:probability) { |value| condition { rand <= value } }

get '/win_a_car', :probability => 0.1 do
    "あなたの勝ちです."
end

get '/win_a_car' do
    "あなたの負けです."
end

get '/foo' do
    "Hello world."
end

