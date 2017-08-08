var horse_colors = ["purple", "blue", "red", "yellow"];
var horse_names = ["Ed", "Bob", "Susie", "Jane"];

horse_names.push("Lance");
horse_colors.push("pink");

var horses = {};
for (var i = 0; i < horse_names.length; i++) {
  horses[horse_names[i]] = horse_colors[i];
};

console.log(horses);