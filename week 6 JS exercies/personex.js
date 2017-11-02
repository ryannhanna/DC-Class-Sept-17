// function Person(name) {
//   this.name = name;
//   this.friends = [];
// }
//
// Person.prototype.addFriend = function(friend) {
//   this.friends.push(friend);
// };
//
// Person.prototype.createGreeting = function(other) {
//   return 'Yo ' + other.name + '! from ' + this.name + '.';
// };
//
// Person.prototype.greet = function(other) {
//   console.log(this.createGreeting(other));
// };



class Person{

constructor(name,friends){
    this.name = name;
    this.friends = [];
}

addFriend(friend){
    this.friends.push = friend;
    return this.friends;
}

create_Greeting(other){
return 'Yo ' + other.name + '! from ' + this.name + '.';
}

greet(other){
console.log(this.create_Greeting(other));
}


}
