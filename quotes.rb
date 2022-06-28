#!/usr/bin/ruby

require 'httparty'

$headers = {
   "accept": "*/*",
   "content-type": "application/json",
   "user-agent": "Mozilla/5.0 (X11; Linux x86_64; rv:101.0) Gecko/20100101 Firefox/101.0"
}

$c1 = 'https://api.quotable.io/random'
$c2 = 'https://api.themotivate365.com/stoic-quote'

class Menu
   
   def q1
      r = HTTParty.get($c1, headers: $headers)
      puts "
                           Inspirational Quotes\n
      #{r['content']}\n
      - Author - #{r['author']}"
   
   end

   def q2

      r2 = HTTParty.get($c2, headers: $headers)
      puts "
                             Stoicism Quotes\n
      #{r2['data']['quote']}\n
      - Author - #{r2['data']['author']}"
   
   end

end

main = Menu. new
main.q1
main.q2