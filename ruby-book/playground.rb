# https://qiita.com/jnchito/items/b0839f4f4651c29da408
puts "\n------------------------------------------------\n\n"

text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT
puts text.scan(/(?<=filename=)[^;]+/)

puts "\n------------------------------------------------\n\n"

text2 = <<-TEXT
John:guitar, George:guitar, Paul:bass, Ringo:drum
Freddie:vocal, Brian:guitar, John:bass, Roger:drum
TEXT
puts text2.scan(/\w+(?=:bass)/)

puts "\n------------------------------------------------\n\n"

text3 = <<-TEXT
東京都
千葉県
神奈川県
埼玉都
TEXT
puts text3.gsub(/(?<!東京)都/, '県')

puts "\n------------------------------------------------\n\n"

text4 = <<-TEXT
つぼ焼きにしたサザエはおいしい
日曜日にやってるサザエさんは面白い
TEXT
puts text4.gsub(/(サザエ(?!さん))/, '\1(魚介)')

puts "\n------------------------------------------------\n\n"

text5 = <<-TEXT
You say yes. - @jnchito 8s
I say no. - @BarackObama 12m
You say stop. - @dhh 7h
I say go go go. - @ladygaga Feb 20
Hello, goodbye. - @BillGates 11 Apr 2015
TEXT
puts text5.scan(/^(.*) - (@\w+) (\d+[smh]|(?:\d+ )?[A-Z][a-z]{2} \d+)/)
