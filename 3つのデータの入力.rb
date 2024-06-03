# N = gets.chomp
# if 1 <= N && N <= 10
# puts N
# end

# 正解例
def main
  # 入力値の取得
  n = gets.to_i
  strings = []
  n.times do
    strings << gets.chomp
  end

  # 条件の確認
  if n < 1 || n > 10
    puts "Nは1以上10以下の整数である必要があります。"
    return
  end

  strings.each do |string|
    if string.length < 1 || string.length > 100
      puts "各文字列の長さは1以上100文字以下である必要があります。"
      return
    end

    if /[^\p{ASCII}\s]/ =~ string
      puts "各文字列は英小文字または大文字または数字または半角スペースのみで構成されている必要があります。"
      return
    end
  end

  # 出力
  strings.each do |string|
    puts string
  end
end

main
# 以上が正解の例です。

