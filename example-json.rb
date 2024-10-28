#!/usr/bin/env ruby

# frozen_string_literal: true

require 'ruzzy'

require_relative 'example.rb'

test_one_input = lambda do |data|
  begin
    Article.from_json(data)
  rescue ArgumentError, EncodingError
    # pass
  end
  return 0
end

Ruzzy.fuzz(test_one_input)
