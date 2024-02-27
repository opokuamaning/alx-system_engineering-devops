#!/usr/bin/env ruby
# Match "hbn, hbtn, hbttn, hbtttn, hbttttn" not hbon

puts ARGV[0].scan(/hbt*n/n).join
