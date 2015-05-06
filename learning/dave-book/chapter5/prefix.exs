prefix = fn some_text -> fn more_text -> "#{some_text} #{more_text}" end end

ned_prefix = prefix.('Ned')

IO.puts ned_prefix.('rules!') 

IO.puts prefix.("Mr.").("Anderson")
