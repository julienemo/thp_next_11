require_relative '../rec_vs_ite'

describe 'factorial' do
  it 'returns 0 if n is not interger or not positive' do
    expect(factorial_rec(-1)).to be 0
    expect(factorial_rec(0.5)).to be 0
    expect(factorial_rec(0)).to be 0

    expect(factorial_ite(-1)).to be 0
    expect(factorial_ite(0.5)).to be 0
    expect(factorial_ite(0)).to be 0

    expect(factorial_ite(-1)).to eq(factorial_rec(-1))
    expect(factorial_ite(0.5)).to eq(factorial_rec(0.5))
    expect(factorial_ite(0)).to eq(factorial_rec(0))
  end

  it 'returns fractorial for integers greater than 1' do
    expect(factorial_rec(1)).to be 1
    expect(factorial_rec(3)).to be 6
    expect(factorial_rec(5)).to be 120

    expect(factorial_ite(1)).to be 1
    expect(factorial_ite(3)).to be 6
    expect(factorial_ite(5)).to be 120

    expect(factorial_rec(1)).to eq(factorial_ite(1))
    expect(factorial_rec(3)).to eq(factorial_ite(3))
    expect(factorial_rec(5)).to eq(factorial_ite(5))
  end
end

describe 'square roots' do
  it 'returns 0 for if n is not a positive integer' do
    expect(square_root_rec(-3)).to be 0
    expect(square_root_rec(0.5)).to be 0
    expect(square_root_rec(0)).to be 0

    expect(square_root_ite(-3)).to be 0
    expect(square_root_ite(0.5)).to be 0
    expect(square_root_ite(0)).to be 0

    expect(square_root_rec(-3)).to eq(square_root_ite(-3))
    expect(square_root_rec(0.5)).to eq(square_root_ite(0.5))
    expect(square_root_rec(0)).to eq(square_root_ite(0))
  end

  it 'returns 0 if n is not a perfect square' do
    expect(square_root_rec(2)).to be 0
    expect(square_root_rec(5)).to be 0
    expect(square_root_rec(8)).to be 0

    expect(square_root_ite(2)).to be 0
    expect(square_root_ite(5)).to be 0
    expect(square_root_ite(8)).to be 0

    expect(square_root_rec(2)).to eq(square_root_ite(2))
    expect(square_root_rec(5)).to eq(square_root_ite(5))
    expect(square_root_rec(8)).to eq(square_root_ite(8))
  end

  it 'returns square root for numbers that are perfect square' do
    expect(square_root_rec(4)).to be 2
    expect(square_root_rec(100)).to be 10
    expect(square_root_rec(256)).to be 16

    expect(square_root_ite(4)).to be 2
    expect(square_root_ite(100)).to be 10
    expect(square_root_ite(256)).to be 16

    expect(square_root_rec(4)).to eq(square_root_ite(4))
    expect(square_root_rec(100)).to eq(square_root_ite(100))
    expect(square_root_rec(256)).to eq(square_root_ite(256))
  end
end

describe 'is prime' do
  it 'returns false if n is not an integer superior to 1' do
    expect(is_prime_rec(-3)).to be false
    expect(is_prime_rec(0.5)).to be false
    expect(is_prime_rec(1)).to be false

    expect(is_prime_ite(-3)).to be false
    expect(is_prime_ite(0.5)).to be false
    expect(is_prime_ite(1)).to be false

    expect(is_prime_rec(-3)).to eq(is_prime_ite(-3))
    expect(is_prime_rec(0.5)).to eq(is_prime_ite(0.5))
    expect(is_prime_rec(1)).to eq(is_prime_ite(1))
  end

  it 'returns true if n can only be perfectly devided by n and 1' do
    expect(is_prime_rec(2)).to be true
    expect(is_prime_rec(3)).to be true
    expect(is_prime_rec(97)).to be true

    expect(is_prime_ite(2)).to be true
    expect(is_prime_ite(3)).to be true
    expect(is_prime_ite(97)).to be true

    expect(is_prime_rec(2)).to eq(is_prime_ite(2))
    expect(is_prime_rec(3)).to eq(is_prime_ite(3))
    expect(is_prime_rec(97)).to eq(is_prime_ite(97))
  end

  it 'returns false if n can be perfectly devided by other number than n and 1' do
    expect(is_prime_rec(4)).to be false
    expect(is_prime_rec(39)).to be false
    expect(is_prime_rec(117)).to be false

    expect(is_prime_ite(4)).to be false
    expect(is_prime_ite(39)).to be false
    expect(is_prime_ite(117)).to be false

    expect(is_prime_rec(4)).to eq(is_prime_ite(4))
    expect(is_prime_rec(39)).to eq(is_prime_ite(39))
    expect(is_prime_rec(117)).to eq(is_prime_ite(117))
  end
end

describe 'get smallest prime' do
  it 'returns 2 if n is not superior than 2' do
    expect(get_smallest_prime_rec(-3)).to be 2
    expect(get_smallest_prime_rec(0.5)).to be 2
    expect(get_smallest_prime_rec(1)).to be 2

    expect(get_smallest_prime_ite(-3)).to be 2
    expect(get_smallest_prime_ite(0.5)).to be 2
    expect(get_smallest_prime_ite(1)).to be 2

    expect(get_smallest_prime_rec(-3)).to eq(get_smallest_prime_ite(-3))
    expect(get_smallest_prime_rec(0.5)).to eq(get_smallest_prime_ite(0.5))
    expect(get_smallest_prime_rec(1)).to eq(get_smallest_prime_ite(1))
  end

  it 'returns 0 if n is superior than 2 but is not integer' do
    expect(get_smallest_prime_rec(2.1)).to be 0
    expect(get_smallest_prime_rec(100.05)).to be 0
    expect(get_smallest_prime_rec(3.14)).to be 0

    expect(get_smallest_prime_ite(2.1)).to be 0
    expect(get_smallest_prime_ite(100.05)).to be 0
    expect(get_smallest_prime_ite(3.14)).to be 0

    expect(get_smallest_prime_rec(2.1)).to eq(get_smallest_prime_ite(2.1))
    expect(get_smallest_prime_rec(100.05)).to eq(get_smallest_prime_ite(100.05))
    expect(get_smallest_prime_rec(3.14)).to eq(get_smallest_prime_ite(3.14))
  end

  it 'returns the smallest prime number that is not smaller than n in other cases' do
    expect(get_smallest_prime_rec(4)).to be 5
    expect(get_smallest_prime_rec(14)).to be 17
    expect(get_smallest_prime_rec(24)).to be 29

    expect(get_smallest_prime_ite(4)).to be 5
    expect(get_smallest_prime_ite(14)).to be 17
    expect(get_smallest_prime_ite(24)).to be 29

    expect(get_smallest_prime_rec(4)).to eq(get_smallest_prime_ite(4))
    expect(get_smallest_prime_rec(14)).to eq(get_smallest_prime_ite(14))
    expect(get_smallest_prime_rec(24)).to eq(get_smallest_prime_ite(24))
  end
end
