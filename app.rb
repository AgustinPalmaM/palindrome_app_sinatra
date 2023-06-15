require 'sinatra'
require 'agustin_palindrome'

get '/' do
  @title = "Index"
  erb :index
end

get '/about' do
  @title = "About"
  erb :about
end

get '/palindrome' do
  @title = "Palindrome"
  erb :palindrome
end

post '/check' do
  @phrase = params[:phrase]
  erb :result
end