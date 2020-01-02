class MapManager {

  ArrayList<Hero> redTeam=new ArrayList<Hero>();
  ArrayList<Hero> blueTeam=new ArrayList<Hero>();

  boolean[][] blockedMatrix;

  public MapManager(int mapW, int mapH) {
    blockedMatrix=new boolean[mapW][mapH];
  }


  void addHeroToTeam(Hero hero, String side) {
    updateBlockedMatrix(hero);
    if (side.equals("ROJO")) {
      addHeroToRedTeam(hero);
    } else if (side.equals("AZUL")) {
      addHeroToBlueTeam(hero);
    }
  }

  void addHeroToRedTeam(Hero hero) {
    redTeam.add(hero);
  }

  void addHeroToBlueTeam(Hero hero) {
    blueTeam.add(hero);
  }

  void updateBlockedMatrix(Hero hero) {
    blockedMatrix[hero.row][hero.col]=true;
  }

  void printBlockedMatrix() {
    for (int i=0; i<blockedMatrix.length; i++) {
      for (int j=0; j<blockedMatrix[i].length; j++) {
        print(blockedMatrix[i][j]+", ");
      }
      println();
    }
  }
}
