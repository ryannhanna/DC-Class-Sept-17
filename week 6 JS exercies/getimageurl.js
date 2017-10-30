myCard.getImageUrl()
'images/5_of_diamonds.png'



class Card {
  constructor(point, suit, url){
  this.point = point;
  this.suit = suit;
  this.url = url;
  }
  getImageUrl(){
    this.url = 'blackjackgame/Static/images' + this.point + '_of_' + this.suit + '.png';
    console.log(this.url);
    return this.url;
  }
}

  Card.prototype.getImageUrl = function(){}
