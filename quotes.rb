#!/usr/bin/ruby

require_relative 'mod.rb'
require 'httparty'
include Mod

connect = get_u1
connect2 = get_u2

class Menu

   def q1
      r = HTTParty.get(get_u1, headers: Mod.head)
      puts "
                           Inspirational Quotes\n
      #{r['content']}\n
      - Author - #{r['author']}"
   
   end

   def q2

      r2 = HTTParty.get(get_u2, headers: Mod.head)
      puts "
                             Stoicism Quotes\n
      #{r2['data']['quote']}\n
      - Author - #{r2['data']['author']}"
   
   end

end

main = Menu. new
main.q1
main.q2