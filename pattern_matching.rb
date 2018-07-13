class PatternMatching
    # ある文字列から指定した文字列が先頭から何文字目にあるか確かめる
    /Ruby/ =~ "Yet Another Ruby Hacker, " # => 12
    /Ruby/ =~ "Ruby" # => 0
    /Ruby/ =~ "Diamond" # => nil

    # 正規表現の右側の/に続けてiと書いた場合には、英字の大文字・小文字を区別せずにマッチングを行う。
    /Ruby/ =~ "ruby" # => nil
    /Ruby/ =~ "RUBY" # => nil
    /Ruby/i =~ "ruby" # => 0
    /Ruby/i =~ "RUBY" # => 0
    /Ruby/i =~ "rUbY" # => 0


end