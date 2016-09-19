

def flatten(array, memo=[])

  array.each do |el|
    if el.kind_of? Array
      flatten(el, memo)
    else
      memo << el
    end
  end

  return memo

end
