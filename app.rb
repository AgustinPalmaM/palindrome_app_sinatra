require 'sinatra'

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