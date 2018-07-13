class Loop
    # 繰り返しを制御する命令 #
    # break => 繰り返しを中断し、繰り返しの中から抜ける
    # next  => 次の回に繰り返しに処理を移す
    # redo  => 同じ条件で繰り返しをやり直す

    # 指定回数ループする
    10.times do
        puts '100 times do'
    end

    10.times {
        puts '100 times do'
    }

    # 指定回数ループする（繰り返している回数付き）
    10.times do |i|
        puts "#{i}回目の繰り返しです。"
    end

    # 条件式が真の間ループする -doは省略可能-
    i = 1
    while i <= 10 do
        puts i
        i += 1
    end

    # for文 -doは省略可能-
    sum = 0
    for i in 1..5 do
        sum = sum + 1
    end
    puts sum

    # .times do -fromからtoまでの合計を計算する-
    from = 10
    to = 20
    sum = 10

    (to - from + 1).times do |i|
        sum = sum + (i + from)
    end
    puts sum

    # for文 -fromからtoまでの合計を計算する-
    from = 10
    to = 20
    sum = 0

    # noinspection RubyForLoopInspection
    for i in from..to
        sum = sum + i
    end
    puts sum

    # until文 -条件式が負の間ループする- -doは省略可能-
    sum = 0
    i = 1
    until sum >= 50 do # => while !(sum >= 50)
        sum += i
        i += 1
    end
    puts sum

    # .each do -オブジェクトの集まりに対して、1つずつ取り出す-
    names = %w(awk Perl Python Ruby)
    names.each do |name|
        puts name
    end
    # .each do -1~5までの合計を求める-
    sum = 0
    (1..5).each do |i|
        sum = sum + i
    end
    puts sum


end