def factorial_rec(n)
  return 0 if n <= 0 || !n.is_a?(Integer)

  return 1 if n == 1

  n * factorial_rec(n - 1)
end

def factorial_ite(n)
  return 0 if n <= 0|| !n.is_a?(Integer)
  return 1 if n == 1

  i = 1
  result = 1
  while i <= n
    result *= i
    i += 1
  end
  result
end

def square_root_rec(n)
  square_helper(n, n)
end

def square_root_ite(n)
  return 0 if n <= 0 || !n.is_a?(Integer)

  result = 0
  i = 1
  while i <= n
    result = i if i * i == n
    i += 1
  end
  result
end

def is_prime_rec(n)
  prime_helper(n, 2)
end

def is_prime_ite(n)
  return false if !n.is_a?(Integer) || n <= 1

  result = true
  i = 2
  while i < n
    result = false if (n % i).zero?

    i += 1
  end
  result
end

def get_smallest_prime_rec(n)
  smallest_prime_helper(n, n)
end

def get_smallest_prime_ite(n)
  return 2 if n <= 2

  return 0 unless n.is_a?(Integer)

  i = n
  i += 1 until is_prime_ite(i)

  i
end

def square_helper(n, root)
  return 0 if n <= 0 || !n.is_a?(Integer)

  return 0 if root < 1

  return root if root * root == n

  square_helper(n, root - 1)
end

def prime_helper(n, i)
  return false if !n.is_a?(Integer) || n <= 1

  return true if n == i

  return false if (n % i).zero?

  prime_helper(n, i + 1)
end

def smallest_prime_helper(n, i)
  return 2 if n <= 2

  return 0 unless n.is_a?(Integer)

  return i if is_prime_rec(i)

  smallest_prime_helper(n, i + 1)
end

# takeaways
# 1. is_prime_rec(11587) returns (SystemStackError)stack level too deep
# there are stuffs more or less adapted or recusive
# 5/2==2 returns true in ruby
# because both 5 and 2 are integers, the result will only have integer part
# need to turn either or both to float to get a float result
