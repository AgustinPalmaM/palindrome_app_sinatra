require_relative 'test_helper'

class PalindromeAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_form_presence
    get '/palindrome'
    assert doc(last_response).at_css('form')
  end
  
  def test_non_palindrome_submission
    post '/check', phrase: "Not a palindrome"
    assert_includes doc(last_response).at_css('p').content, "it's not a Palindrome"
    assert doc(last_response).at_css('form')
  end
  
  def test_palindrome_submission
    post '/check', phrase: "Reconocer"
    assert_includes doc(last_response).at_css('p').content, "it's a Palindrome"
    assert doc(last_response).at_css('form')
  end
end