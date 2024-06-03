# 正解例
def main
  # 入力値の取得
  input_str = gets.chomp

  # 文字列の分割
  strings = input_str.split(" ")

  # 条件の確認
  strings.each do |string|
    if string.length < 1 || string.length > 100
      puts "各文字列の長さは1以上100文字以下である必要があります。"
      return
    end

    if /[^\p{ASCII}\d]/ =~ string
      puts "各文字列は英小文字または大文字または数字のみで構成されている必要があります。"
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

