// write a string that you want to reverse
// since we cannot reverse a string in JS, we need to break up the string into an array
// create a variable to save this new array
// we can use the reverse function on this new array to reverse the letters in the string's order
// save this new array as a new variable
// now that we have the reversed letters, we need to make it a string again

function reverse(word) {
  var stringIntoArray = word.split('');
  var reverseArray = stringIntoArray.reverse();
  var joinArray = reverseArray.join('');

    if (1==1) {
      console.log("I'm happy with my reversed name" + " " + joinArray);
    }
}
console.log(reverse("karlie"));