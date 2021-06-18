class Sort 

def mergesort(arr)
  len = arr.length 
  return arr if len < 2
  mid = len / 2
  leftarr = arr[0..mid-1] 
  rightarr = arr[mid..len]     
  mergesort(leftarr)
  mergesort(rightarr)
  merge(leftarr, rightarr, arr) 
end

private

def merge(left, right, original)
  lenofleft = left.length 
  lenofright = right.length 
  i, j, k = 0, 0, 0

  while (i < lenofleft) && (j < lenofright) do
      if left[i] <= right[j]
        original[k] = left[i]
        i +=1
      else 
        original[k] = right[j]
        j +=1
      end
      k +=1
  end
  while (i < lenofleft)
    original[k] = left[i]
    i += 1
    k += 1
  end
  while (j < lenofright)
    original[k] = right[j]
    j +=1
    k +=1
  end
  original
end #of merge
  
end 

test = Sort.new
p test.mergesort([2,4,1,6,8,5,3,7,1])
