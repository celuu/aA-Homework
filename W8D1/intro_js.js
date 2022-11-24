function madLib(verb, adjective, noun){
    return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(searchString, subString){
    return searchString.includes(subString);
}

function fizzBuzz(array){
    let newArr = [];
    array.forEach(num => {
        if ((num % 3 === 0) ^ (num % 5 === 0)) {
            newArr.push(num);
        }   
    });
    return newArr;
}

function isPrime(number){
    if (number < 2){
        return false;
    }

    for (let i = 2; i < number; i++){
        if (number % i === 0){
            return false;
        }
    }
    return true;
}

function sumOfNPrimes(n){
    let sum = 0;
    let primes = 0;
    let i = 2;
    while (primes < n){
        if(isPrime(i)) {
            primes += 1;
            sum += i
        }
        i += 1;
    }
    return sum;
}

console.log(sumOfNPrimes(4))