  def fib_rec(n)
    return 0 if n == 0
    return 1 if n == 1
    return fibo(n-1) + fibo(n-2)
  end
  arr = []
  gets.to_i.times {|i| arr << fib_rec(i)}
  p arr


  def fib(n)
    arr = []
    n.times do |i|
        arr << 0 if i == 0
        arr << 1 if i == 1
        arr << arr[i-1] + arr[i-2] unless i==0 || i==1
    end
    arr
  end

p fib(gets.to_i)
