# Test code to try out your new format config on!

d=[30644250780,9003106878,
  30636278846,66641217692,4501790980,
671_24_603036,131_61973916,66_606629_920,
 30642677916,30643069058];a,s=[],$*[0]
    s.each_byte{|b|a<<("%036b"%d[b.
       chr.to_i]).scan(/\d{6}/)}
        a.transpose.each{ |a|
          a.join.each_byte{\
           |i|print i==49?\
             ($*[1]||"#")\
               :32.chr}
                 puts
                  }


# After formatting, the code above should match the code below:
d = [
  30_644_250_780,
  9_003_106_878,
  30_636_278_846,
  66_641_217_692,
  4_501_790_980,
  67_124_603_036,
  13_161_973_916,
  66_606_629_920,
  30_642_677_916,
  30_643_069_058
]
a = []
s = $*[0]
s.each_byte { |b| a << ('%036b' % d[b.chr.to_i]).scan(/\d{6}/) }
a.transpose.each do |a|
  a.join.each_byte { |i| print i == 49 ? ($*[1] || '#') : 32.chr }
  puts
end
