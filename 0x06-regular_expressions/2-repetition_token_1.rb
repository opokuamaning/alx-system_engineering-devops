#!/usr/bin/env ruby
# Match htn hbtn hbbtn hbbbtn

puts ARGV[0].scan(/h{0,2}tn/).join
