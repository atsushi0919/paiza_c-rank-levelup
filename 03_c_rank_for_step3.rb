# インデックス取得 (paizaランク D 相当)
# https://paiza.jp/works/mondai/c_rank_level_up_problems/c_rank_for_step3

# [解答例1]
n = gets.to_i
ary = []
for _ in 0...n
  ary << gets.to_i
end
k = gets.to_i

for idx in 0...n
  if ary[idx] == k
    puts idx + 1
    break
  end
end

# [解答例2]
n = gets.to_i
ary = n.times.map { gets.to_i }
k = gets.to_i

ary.each_with_index do |val, idx|
  if val == k
    puts idx + 1
    break
  end
end

# [解答例3]
n = gets.to_i
ary = n.times.map { gets.to_i }
k = gets.to_i

ary.each.with_index(1) do |val, idx|
  if val == k
    puts idx
    break
  end
end

=begin

問題
Img 04 03 下記の問題をプログラミングしてみよう！
1 から n まで番号が付けられた人々がいます。 i 番目の人の財産は a_i 円です。
金額 k が与えられるので（k は a_1, ..., a_n のいずれか）、財産が k 円である人の番号を出力してください。
ただし、そのような人が複数いる場合には、そうした人々の中で最も小さい番号を出力してください。

入力される値
入力は以下のフォーマットで与えられます。

n
a_1
...
a_n
k

1 行目には正整数 n 、 2 行目から (n + 1) 行目には n 個の整数 a_1, ..., a_n が改行区切りで与えられ、 (n + 2) 行目には整数 k が与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
財産が k 円である人の番号を出力してください。ただし、そのような人が複数いる場合には、そうした人々の中で最も小さい番号を出力してください。
末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・n および各 a_i （1 ≤ i ≤ n） は 1 以上 50 以下の整数
・k は a_1, ..., a_n のいずれか

また、財産が k 円である人は、必ず1人以上いるとします。

入力例1
2
5
6
6

出力例1
2

入力例2
4
9
8
2
2
2

出力例2
3
=end
