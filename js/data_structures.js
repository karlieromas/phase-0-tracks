var horse_colors = ["purple", "blue", "red", "yellow"];
var horse_names = ["Ed", "Bob", "Susie", "Jane"];

horse_names.push("Lance");
horse_colors.push("pink");

var horses = {};
for (var i = 0; i < horse_names.length; i++) {
  horses[horse_names[i]] = horse_colors[i];
};

console.log(horses);



function Car(model, year, honk) {
  console.log("Our new car:", this);
  this.model = model;
  this.year = year;
  this.honk = function(){
    console.log("honk!");
};
    console.log("CAR INITIALIZATION COMPLETE");
  };

console.log("Let's build a car!")
var shelby_Cobra = new Car ("Shelby Cobra", 1969);
console.log(shelby_Cobra.model);
console.log(shelby_Cobra.year);
shelby_Cobra.honk();

var Corvette = new Car ("Corvette", 1953);
console.log(Corvette.model);
console.log(Corvette.year);
Corvette.honk();

var car_Types = ["Camero", "Bronco", "Mustang", "F150"];
var car_Colors = ["white", "black", "grey", "silver"]
var cars = {};
for (var i = 0; i < car_Types.length; i++) {
  console.log("Let's Build a New Car!");
  cars[car_Types[i]] = new Car(car_Types[i], car_Colors[i]);
  console.log(cars[car_Types[i]].model);
  console.log(cars[car_Types[i]].year);
  cars[car_Types[i]].honk();
  console.log("----");
}
