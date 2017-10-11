var good = .2
var fair =.15
var bad = .1

function tipAmount(amount, levelofServ) {
    if (levelofServ === "good" ) {
        var a = .2 * amount;
        var b  = a + amount;
        console.log(b);
    }
    else if (levelofServ === "fair") {
        var a = .15 * amount;
        var b  = a + amount;
        console.log(b);
    }
     if (levelofServ === "bad") {
        var a = .1 * amount;
        var b  = a + amount;
        console.log(b);
    }
}

tipAmount(45, "good")
tipAmount(45, "fair")
tipAmount(45, "bad")
