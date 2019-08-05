def select_arr(arr)
  arr.select { |i| i.odd? }
end

def reject_arr(arr)
  arr.reject { |i| (i % 3).zero? }
end

def delete_arr(arr)
  arr.delete_if { |i| i.negative? }
end

def keep_arr(arr)
  arr.keep_if { |i| i >= 0 }
end
