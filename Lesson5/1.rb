arr = ['10', '11', '9', '7', '8']

arr.map!{|int| int.to_i}

p arr.sort!

p arr.map!{|int| int.to_s}

p arr