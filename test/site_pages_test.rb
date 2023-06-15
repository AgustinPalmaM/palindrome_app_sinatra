# frozen_string_literal: true

require_relative 'test_helper'

class PalindromeAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_index
    get '/'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    assert_equal 'Sample Sinatra App', doc(last_response).at_css('h1').content
  end

  def test_about
    get '/about'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    assert_equal 'About', doc(last_response).at_css('h1').content
  end

  def test_palindrome
    get '/palindrome'
    assert last_response.ok?
    assert doc(last_response).at_css('h1')
    assert_equal 'Palindrome Detector', doc(last_response).at_css('h1').content
  end
end
