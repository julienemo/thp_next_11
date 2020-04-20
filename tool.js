const shuffle = (array) => {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [array[i], array[j]] = [array[j], array[i]];
  }
  return array;
};

const factorR = (n) => {
  if (!Number.isInteger(n) || n < 0) {
    return 0;
  }
  if (n === 1) {
    return 1;
  }
  return n * factorR(n - 1);
};

const factorI = (n) => {
  if (!Number.isInteger(n) || n < 0) {
    return 0;
  }
  let result = 1;
  for (let i = 1; i++, i <= n; ) {
    result *= i;
  }
  return result;
};

const nToPowerMRec = (n, m) => {
  if (!Number.isInteger(m) || m < 0) {
    return 0;
  }
  if (m === 1) {
    return n;
  }
  return n * nToPowerMRec(n, m - 1);
};

const nToPowerMIte = (n, m) => {
  if (!Number.isInteger(m) || m < 0) {
    return 0;
  }
  let result = n;
  for (let i = 1; i++, i <= m; ) {
    result *= n;
  }
  return result;
};

const perfectSquareRootRec = (n) => {
  const helper = (n, i) => {
    if (!Number.isInteger(n) || n < 0) {
      return 0;
    }
    if (i < 1) {
      return 0;
    }
    if (n / i === i) {
      return i;
    }
    return helper(n, i - 1);
  };
  return helper(n, n);
};

const perfectSquareRootIte = (n) => {
  if (!Number.isInteger(n) || n < 0) {
    return 0;
  }
  let result = 0;
  for (let i = 0; i++, i <= n; ) {
    if (n / i === i) {
      return (result = i);
    }
  }
  return result;
};

const isPrimeRec = (n) => {
  const helper = (n, i) => {
    let result = true;
    if (!Number.isInteger(n) || n <= 1) {
      return (result = false);
    }
    if (n === i) {
      return (result = true);
    }
    if (n % i === 0) {
      return (result = false);
    }
    return helper(n, i + 1);
  };
  return helper(n, 2);
};

const isPrimeIte = (n) => {
  if (!Number.isInteger(n) || n < 2) {
    return false;
  }
  if (n === 2) {
    return true;
  }
  let result = true;
  for (let i = 1; i++, i < n; ) {
    if (n % i === 0) {
      return (result = false);
    }
  }
  return result;
};

const getSmallestPrimeRec = (n) => {
  const helper = (n, i) => {
    if (!Number.isInteger(i) || i <= 2) {
      return 2;
    }
    if (isPrimeIte(i)) {
      return i;
    }
    return helper(n, i + 1);
  };
  return helper(n, n);
};

const getSmallestPrimeIte = (n) => {
  if (n <= 2) {
    return 2;
  }
  for (let i = n - 1; i++; ) {
    if (isPrimeIte(i)) {
      return i;
    }
  }
};

console.log(factorR(5));
console.log(factorI(5));

console.log(factorR(3));
console.log(factorI(3));

console.log(nToPowerMRec(1, 2));
console.log(nToPowerMIte(1, 2));

console.log(nToPowerMRec(3, 3));
console.log(nToPowerMIte(3, 3));

console.log(nToPowerMRec(5, 4));
console.log(nToPowerMIte(5, 4));

console.log(perfectSquareRootRec(-3));
console.log(perfectSquareRootIte(-3));

console.log(perfectSquareRootRec(1));
console.log(perfectSquareRootIte(1));

console.log(perfectSquareRootRec(2));
console.log(perfectSquareRootIte(2));

console.log(perfectSquareRootRec(4));
console.log(perfectSquareRootIte(4));

console.log(perfectSquareRootRec(256));
console.log(perfectSquareRootIte(256));

console.log(perfectSquareRootRec(1000));
console.log(perfectSquareRootIte(1000));

console.log(isPrimeRec(-3));
console.log(isPrimeIte(-3));

console.log(isPrimeRec(2));
console.log(isPrimeIte(2));

console.log(isPrimeRec(3));
console.log(isPrimeIte(3));

console.log(isPrimeRec(4));
console.log(isPrimeIte(4));

console.log(isPrimeRec(14));
console.log(isPrimeIte(14));

console.log(isPrimeRec(24));
console.log(isPrimeIte(24));

console.log(isPrimeRec(11));
console.log(isPrimeIte(11));

console.log(isPrimeRec(27));
console.log(isPrimeIte(27));

console.log(isPrimeRec(39));
console.log(isPrimeIte(39));

console.log(isPrimeRec(41));
console.log(isPrimeIte(41));

console.log(isPrimeRec(51));
console.log(isPrimeIte(51));

console.log(isPrimeRec(53));
console.log(isPrimeIte(53));

console.log(getSmallestPrimeRec(-3));
console.log(getSmallestPrimeIte(-3));

console.log(getSmallestPrimeRec(2));
console.log(getSmallestPrimeIte(2));

console.log(getSmallestPrimeRec(3));
console.log(getSmallestPrimeIte(3));

console.log(getSmallestPrimeRec(4));
console.log(getSmallestPrimeIte(4));

console.log(getSmallestPrimeRec(14));
console.log(getSmallestPrimeIte(14));

console.log(getSmallestPrimeRec(24));
console.log(getSmallestPrimeIte(24));

// takeaways
// 1. Luca says, avoid using if...else, use guard clause instead
// guard clause https://refactoring.com/catalog/replaceNestedConditionalWithGuardClauses.html
// 2. anytime there is a loop, it is possible to use recursive
// it might not be optimal but it is possible
// to translate any loop to recursive
// https://www.ocf.berkeley.edu/~shidi/cs61a/wiki/Iteration_vs._recursion
