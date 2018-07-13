class Hash
    # シンボルとはrubyがメソッドなどの名前を識別するためのラベルをオブジェクトにしたもの。
    # シンボルの作成方法
    symbol = :hoge

    # ハッシュを作る
    song = { :title => "Paranoid Android",
             :artist => "Radiohead" }
    # noinspection RubyStringKeysInHashInspection
    person = { "名前" => "高橋",
               "仮名" => "タカハシ" }
    mark = { 11 => "Jack",
             12 => "Queen",
             13 => "King" }

    # 中でもシンボルをキーに使用することがおおいため、専用の短い書き方が用意されている
    # 次の２つは同じ意味

    person1 = { :name => "後藤",
                :kana => "ゴトウ" }

    person2 = { name: "後藤",
                kana: "ゴトウ" }

    # ハッシュから要素を取り出す
    element = song[:title]
    puts element

    # 要素を格納する
    song[:title] = "moon light"

    # ハッシュの繰り返し(for-each)
    song.each do |i, v|
        puts "#{i} #{v}"
    end
end