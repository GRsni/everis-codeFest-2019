class Hero {
  int col, row;
  String id;
  int value;

  public Hero(int col, int row, String id) {
    this.col=col;
    this.row=row;
    this.id=id;
    this.value=heroValues.get(id);
  }

  String toString() {
    return (id+" "+col+" "+row+" "+value);
  }  

}
