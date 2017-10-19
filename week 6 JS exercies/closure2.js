function counter (x) {
  var count = 4;
  var actuallyCount = function () {
    count++;
    return count;
  }
  return actuallyCount;
}

var count1 = counter();
count1 ()
