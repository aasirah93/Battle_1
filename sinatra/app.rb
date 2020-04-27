require 'sinatra'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Shhhh!'
end

get '/dog' do
  'Woof!'
end
