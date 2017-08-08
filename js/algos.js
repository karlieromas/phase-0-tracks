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

