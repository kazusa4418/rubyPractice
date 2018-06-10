class Array
    # 配列の宣言
    # noinspection RubyLiteralArrayInspection
    names = [ '小林', '林', '高野', '森岡' ] # 空の配列を作成するときは names = []

    # 配列から要素を取り出す
    puts names[0]

    # 配列にオブジェクトを格納する
    names[0] = '野尻'

    # 配列内に複数の型の変数を格納することが出来る
    mixed = [ 1, '歌', 2, '風', 3 ]

    # 配列の要素数を取得する
    puts mixed.size

    # 配列のすべての要素に処理をする(for-each)
    mixed.each do |i|
        puts i
    end
end