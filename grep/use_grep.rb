require_relative "grep"

pattern = Regexp.new(/東京/)
filename = '../text.txt'
simple_grep(pattern, filename)
