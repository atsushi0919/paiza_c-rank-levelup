# 3の倍数のカウント (paizaランク D 相当)
# https://paiza.jp/works/mondai/c_rank_level_up_problems/c_rank_for_step1

# [解答例1]
n = gets.to_i
numbers = gets.split.map(&:to_i)

result = 0
for idx in 0..n - 1
  result += 1 if numbers[idx] % 3 == 0
end
puts result

# [解答例2]
gets
puts gets.split.count { |num| num.to_i % 3 == 0 }

=begin
問題
Img 04 03 下記の問題をプログラミングしてみよう！
正整数 n と、 n 個の整数 a_1, ..., a_n が半角スペース区切りで与えられます。
与えられた整数の中に 3 の倍数がいくつあるかを数え、出力してください。

入力される値
入力は以下のフォーマットで与えられます。

n
a_1 a_2 ... a_n

1 行目に正整数 n が、 2 行目に n 個の整数 a_1, ..., a_n が半角スペース区切りで与えられます。

入力値最終行の末尾に改行が１つ入ります。
文字列は標準入力から渡されます。 標準入力からの値取得方法はこちらをご確認ください
期待する出力
与えられた整数の中に3の倍数がいくつあるかを出力してください。
末尾に改行を入れ、余計な文字、空行を含んではいけません。

条件
すべてのテストケースにおいて、以下の条件をみたします。

・n および各 a_i (1 ≤ i ≤ n） は 1 以上 50 以下の整数

入力例1
2
4 3

出力例1
1

入力例2
3
1 6 9

出力例2
2
=end
