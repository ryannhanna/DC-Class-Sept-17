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

  lazy_Greet(other){
      setTimeout(() => {
          console.log(this.create_Greeting);
          return this.create_Greeting(other)


},      2000);
}

createGreetingsForFriends(other, name){
   this.friends.map(function(other){
   var greetings = []
   var greet = 'Yo ' + other.name + '! from ' + name.name + '.';
   greetings.push(greet);
   console.log(greetings)
   return greetings;
   });
 }
}

var alfie = new Person('Alfie');
var anushka = new Person('Anushka');
var henrique = new Person('Henrique');
alfie.addFriend(anushka);
alfie.addFriend(henrique);
var other = alfie.friends;
alfie.createGreetingsForFriends(other, alfie);
console.log(alfie.createGreetingsForFriends());
