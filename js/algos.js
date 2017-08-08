//write a function that takes in an array as a parameter
//we'll need to iterate overthe array and call .length on each of the elements in the array
//we can save the longest in a variable
//return the variable

var tvArray = ["silicon valley", "the leftovers", "the night of"];

var looneyTunesArray = ["Elmer Fudd", "Bugs", "Wiley Coyote", "Daffy", "Sylvester"]

var animalsArray = ["giraffe", "lion", "rhino", "platypus", "alligator"]

function findLongestPhrase(array) {
  var most_characters = "";
  for (var i = 0; i < array.length; i++) {
    if(array[i].length > most_characters.length) {
      most_characters = array[i];
    }
  }
  return most_characters;
}

console.log(findLongestPhrase(tvArray));
console.log(findLongestPhrase(looneyTunesArray));
console.log(findLongestPhrase(animalsArray));


//declare two different objects and compare the name and age of both of the objects
//return true only if one of the keys or values match up
//else return false

var pup = {name: "Tucker", age: 3};
var child = {name: "Avienne", age: 9};
var dog = {name: "Lole", age: 3};

function checkKeyValuePairs(object_1, object_2) {
  if (object_1.name == object_2.name || object_1.age == object_2.age) {
  return(true);
}
else {
  return(false);
}
}

console.log(checkKeyValuePairs(pup, child));
console.log(checkKeyValuePairs(pup, dog));
console.log(checkKeyValuePairs(child, dog));


//create variable for an empty array
//create an array of the alphabet so that the words can be randomly generated
//function needs to take in an integer (the length of the new array wanted) as a parameter
//function needs to generate random words with different letters in the alphabet array (between 1-10 letters)
//print out htat new array with the desired number of strings and letters

var funWords = [];
var alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];

function randomWords(number) {
  for (var i = 0; i < number; i++) {
    var newWord = "";
    for (var g = 0; g < Math.floor(Math.random() * 10) + 1; g++) {
      var letter = alphabet[Math.floor(Math.random() * 25) + 1];
      newWord += letter;
    }
    funWords.push(newWord);
  }
  return funWords;
}

console.log(randomWords(7));
console.log(randomWords(3));
console.log(randomWords(4));
console.log(randomWords(2));



