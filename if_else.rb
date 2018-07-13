class If_else
    # if文 -条件が真のときに実行される-
    number = 18
    message = '成人です。'

    if number < 20
        message = '未成年です。'
    end

    puts message


    # if-else文 -条件が真のときに実行される-
    number = 18

    if number < 20
        puts '未成年です。'
    else
        puts '成人です。'
    end


    # unless文 -条件が偽のときに実行される-
    number = 18

    # noinspection RubyUnlessWithElseInspection
    unless number < 20
        puts '成人です。'
    else
        puts '未成年です。'
    end


    # case文 -オブジェクトの値によって場合分けする-
    tags = %w(A IMG PRE)

    tags.each do |tagname|
        case tagname
        when "P", "A", "I", "B", "BLOCKQUOTE"
            puts "#{tagname} has child."

        when "IMG", "BR"
            puts "#{tagname} has no child."

        else
            puts "#{tagname} cannot be used."
        end
    end

    # case文 -オブジェクトの型によって場合分けする-
    array = %w(a 1 nil)

    array.each do |item|
        case item
        when String
            puts "item is a String type."

        when Numeric
            puts "item is a Numeric type."

        else
            puts "item is something."
        end
    end

    # case文 -正規表現を用いて場合分けする-
    text = "text"

    text.each_line do |line|
        case line
        when /^From:/i
            puts "送信者の情報を見つけました。"

        when /^To:/i
            puts "宛先の情報を見つけました。"

        when /^Subject:/i
            puts "件名の情報を見つけました。"

        when /^$/
            puts "ヘッダの解析が終了しました。"
            exit

        else
            ## 読み飛ばす
        end
    end

    # if修飾子 unless修飾子 -実行したい式の後ろに記述する-
    a, b = 10, 15
    puts "aはbよりも大きい" if a > b
    puts "aはbよりも大きい" unless a < b
    # 上記の式は以下の式と同等
    a, b = 10, 15

    if a > b
        puts "aはbよりも大きい"
    end
    unless a < b
        puts "aはbよりも大きい"
    end


end