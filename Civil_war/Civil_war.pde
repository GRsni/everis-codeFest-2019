
MapManager map;
HashMap<String, Integer> heroValues=new HashMap<String, Integer>();


void setup() {

  JSONObject juego=cargarMapa("jugada1.json");
  int mapWidth=juego.getInt("ancho");
  int mapHeight=juego.getInt("alto");
  map=new MapManager(mapWidth, mapHeight);
  loadHeroValues();

  JSONArray positionsArray=juego.getJSONArray("posiciones");

  for (int i=0; i<positionsArray.size(); i++) {
    JSONObject obj=positionsArray.getJSONObject(i);

    Hero hero=createHeroFromJSONObject(obj);

    String side=obj.getString("side");

    map.addHeroToTeam(hero, side);
  }

  println(map.redTeam.size());
  println(map.blueTeam.size());
  map.printBlockedMatrix();

  int redScore=calculateRedTeamScore();
  int blueScore=calculateBlueTeamScore();

  compareScoresAndShowWinner(redScore, blueScore);
  exit();
}

JSONObject cargarMapa(String ruta) {
  JSONObject obj=loadJSONObject(ruta);
  JSONObject mapa=obj.getJSONObject("juego");
  return mapa;
}

void loadHeroValues() {
  heroValues.put("C", 3);
  heroValues.put("H", 4);
  heroValues.put("S", 4);
  heroValues.put("D", 9);
  heroValues.put("I", 7);
  heroValues.put("G", 1);
}

Hero createHeroFromJSONObject(JSONObject heroObj) {
  int col=heroObj.getInt("x");
  int row=heroObj.getInt("y");
  String id=heroObj.getString("piece");

  return new Hero(col, row, id);
}

void compareScoresAndShowWinner(int red, int blue) {
  if (red>blue) {
    println("Red team wins: "+red);
  } else if (blue>red) {
    println("Blue team wins: "+blue);
  } else {
    println("There is a draw");
  }
}

int calculateRedTeamScore() {
  return 1;
}

int calculateBlueTeamScore() {
  return 1;
}
