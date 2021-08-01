String tominute(int millis) {
  var minutes = (millis / 60000).floor();
  var seconds = ((millis % 60000) / 1000).toInt();
  //ES6 interpolated literals/template literals
  //If seconds is less than 10 put a zero in front.
  return "$minutes:${(seconds < 10 ? '0' : '')}$seconds";
}
