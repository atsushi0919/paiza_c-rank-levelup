# 標準入出力 (paizaランク C 相当)
# https://paiza.jp/works/mondai/c_rank_level_up_problems/c_rank_std_in_out_boss

# 入出力例
INPUT1 = <<~"EOS"
  1
  Yamada 30
EOS
OUTPUT1 = <<~"EOS"
  Yamada 31
EOS

INPUT2 = <<~"EOS"
  3
  Tanaka 18
  Sato 50
  Suzuki 120
EOS

OUTPUT2 = <<~"EOS"
  Tanaka 19
  Sato 51
  Suzuki 121
EOS

# [解答例1]
# データ件数 n を受け取り整数に変換する
n = gets.to_i

# データ件数 n 回の繰り返し処理を行う
n.times do
  # gets で文字列を受けとり
  # 半角スペースで分割して各要素を name, age に代入
  name, age = gets.split
  # age を整数に変換後 +1 して
  # name と age を半角スペースの文字列に戻して出力
  puts "#{name} #{age.to_i + 1}"
end

# [解答例2]
def solve(input_lines)
  # input_lines を改行で分する
  input_lines = input_lines.split("\n")
  # 1行目の入力データ取り出し整数に変換して n に代入
  n = input_lines.shift.to_i

  # データ件数 n 回の繰り返し処理を行う
  # 2行目以降のデータを n 回取り出す
  n.times do
    # input_lines 先頭の入力データを取り出して
    # 半角スペースで分割して各要素を name, age に代入
    name, age = input_lines.shift.split

    # age を整数に変換後 +1 する
    # name と age を半角スペース区切りの文字列に戻して出力
    puts "#{name} #{age.to_i + 1}"
  end

  solve1(INPUT1)

  # membersの要素で繰り返し処理して上書き
  members.map! do |member|
    # 半角スペースで分割
    name, age = member.split
    # 年齢を +1 して半角スペース区切りの文字列に戻す
    "#{name} #{age.to_i + 1}"
  end
  # 改行で連結して末尾に改行を入れる
  members.join("\n") << "\n"
end

solve(INPUT1)

# [解答例2]
def solve(input_lines)
  # 改行で分割して1行目を n, 2行目以降を members に代入
  n, *members = input_lines.split("\n")

  # membersの要素で繰り返し処理して上書き
  members.map! do |member|
    # 半角スペースで分割
    name, age = member.split
    # 年齢を +1 して半角スペース区切りの文字列に戻す
    "#{name} #{age.to_i + 1}"
  end
  # 改行で連結して末尾に改行を入れる
  members.join("\n") << "\n"
end

p solve(INPUT1)
