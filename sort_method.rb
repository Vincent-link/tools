# 方法名按照字母顺序排序
#
# 1、读取文件
# 2、生成方法hash数组
# 3、排序
# 4、写入新文件

file_path = ""
file_path2 = ""

puts file_path
b = IO.readlines(file_path)

i = 0
d = []
b.each do |m|
  if i%6==0
    str = "#{b[i]}#{b[i+1]}#{b[i+2]}#{b[i+3]}#{b[i+4]}"
    index = b[i][6]
    c = {"#{index}": str}
    d << c
  end
  i += 1
end

f = d.sort_by {|e| e.keys}.map{|e| e.values}

str = ""
f.flatten.map do |r|
  str += r
end

File.open(file_path2, "wb") do |f|
  f.write(str)
end


