#!/usr/bin/env ruby

# require "byebug"

ARGF.each do |line|
  puts line
  if line =~ /^##+ \d+/
    # get section
    chapter, section = line.match(/^## (\d+)\.(\d+)+/).captures
    puts "<a id=\"section_#{chapter}.#{section}\"></a>"
    # byebug
    # puts "huzzah"
  end
end