var mom = {
  firstName: 'Alice',
  lastName: 'Wong',
  eyeColor: 'brown',
  hairColor: 'black',
  show_info: function(){
console.log(this.firstName, this.lastName, this.eyeColor, this.hairColor);
  }

};

var daughter = {
  firstName: 'Ilene',
  hairColor: 'brown'
};


daughter.__proto__  = mom;
console.log(daughter.lastName, daughter.eyeColor)

mom.show_info();
daughter.show_info();
