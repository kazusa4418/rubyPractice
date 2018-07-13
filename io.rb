class IO
    # PATHからファイルオブジェクトを作成し、内容を一斉に読み込む
    path = 'text.txt'
    file = File.open(path)
    text = file.read
    puts text
    file.close

    # PATHからファイルオブジェクトを作成し、内容を1行ずつ読み込む
    path = 'text.txt'
    file = File.open(path)
    file.each_line do |line|
        puts line
    end
    file.close

    # ファイルの中から特定のパターンに一致する行のみを選んで出力する
    pattern = Regexp.new(/東京/)
    filename = 'text.txt'

    file = File.open(filename)
    file.each_line do |line|
        if pattern =~ line
            puts line
        end
    end
    file.close
end