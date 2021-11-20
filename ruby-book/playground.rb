# https://qiita.com/jnchito/items/64c3fdc53766ac6f2008
html = <<-HTML
  <select name="game_console">
  <option value="none"></option>
  <option value="wii_u" selected>Wii U</option>
  <option value="ps4">プレステ4</option>
  <option value="gb">ゲームボーイ</option>
  </select>
HTML

replaced = html.gsub(%r{<option value="(\w+)"(?: selected)?>(.*?)</option>}, '\1,\2')

puts replaced
