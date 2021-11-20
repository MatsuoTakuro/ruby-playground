def      foo(a,       b,       c = 3,   d = 4,    *ef,      g,       h,       i: 9,    j: 10,  **kl,          &block)
       "a: #{a}, b: #{b}, c: #{c}, d: #{d}, ef: #{ef}, g: #{g}, h: #{h}, i: #{i}, j: #{j}, kl: #{kl}, block: #{block}"
end
puts foo(    1,       2,       3,       4,        5,6,      7,       8,       i: 9,    j: 10,  k:11,l:12)     { 13 }
