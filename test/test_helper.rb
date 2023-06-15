# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'rack/test'
require 'nokogiri'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# Returns a Document Object Model for the response

def doc(response)
  Nokogiri::HTML(response.body)
end