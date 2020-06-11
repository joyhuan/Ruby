#!/usr/bin/ruby
require 'rubygems'
require 'json'
require 'pp'

# json = File.read('input.json')
# obj = JSON.parse(json)

# pp obj


string = '{"desc":{"someKey":"someValue","anotherKey":"value"},"main_item":{"stats":{"a":8,"b":12,"c":10}}}'
parsed = JSON.parse(string)
pp parsed
# p parsed["desc"]["someKey"]
# p parsed["main_item"]["stats"]["a"]