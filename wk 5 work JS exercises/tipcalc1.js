var good = .2
var fair =.15
var bad = .1

function tipAmount(amount, levelofServ) {
    if (levelofServ === "good" ) {
        var a = .2 * amount;
        console.log(a);
    }
    else if (levelofServ === "fair") {
        var b = .15 * amount;
        console.log(b);
    }
     if (levelofServ === "bad") {
        var c = .1 * amount;
        console.log(c);
    }
}

tipAmount(45, "good")
tipAmount(45, "fair")
tipAmount(45, "bad")
