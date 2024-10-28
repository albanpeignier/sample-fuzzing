#!/usr/bin/env ruby

require_relative 'example.rb'

puts Article.from_json($stdin.read).inspect
