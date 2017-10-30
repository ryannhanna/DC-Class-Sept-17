function Person(name, email, phone) {
  this.name = name;
  this.email = email;
  this.phone = phone;
}

Person.prototype.greet = function(other) {
  console.log('Hello ' + other.name + ', I am ' + this.name + '!');
};


var sonny = new Person ('Sonny', 'sonny@hotmail.com', '483-485-4948');
var jordan = new Person('Jordan', 'jordan@aol.com', '483-4854948');


sonny.greet(jordan);
jordan.greet(sonny);


Person.prototype.contact_info = function() {
  console.log('My phone number is ' + this.phone + ', and my email is ' + this.email);
};

sonny.(contact_info);

jordan.(contact_info);
