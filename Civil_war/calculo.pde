/*
  for (int i=0; i<w; i++) {
    for (int j=0; j<h; j++) {
      if (team[i][j]==1) {//red
        if (matrix[i][j]!=null) {
          if (matrix[i][j].equals("S")) {
            int or_x=i;
            int or_y=j;
            boolean cont=true;
            while (or_x<w&&or_y<w && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;
                team[or_x][or_y]=0;
              } else {
                or_x++;
                or_y++;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x>0&&or_y<w && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
                or_y++;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x>0&&or_y>0 && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
                or_y--;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x<w&&or_y>0&& cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x++;
                or_y--;
              }
            }


            //for (
          } else if (matrix[i][j].equals("G")) {
            if (i>1&&j>1) {
              int ni=i--;
              int nj=j--;
              if (team[ni][nj]==-1) {
                red+=values.get(matrix[ni][nj]);
                team[ni][nj]=0;
              }
            } else if (i<w-1&&j>1) {
              int ni=i++;
              int nj=j--;
              if (team[ni][nj]==-1) {

                team[ni][nj]=0;
                red+=values.get(matrix[ni][nj]);
              }
            } else if (i>1&&j<h-1) {
              int ni=i--;
              int nj=j++;
              if (team[ni][nj]==-1) {

                team[ni][nj]=0;
                red+=values.get(matrix[ni][nj]);
              }
            } else if (i<w-1&&j<h-1) {
              int ni=i++;
              int nj=j++;
              if (team[ni][nj]==-1) {
                team[ni][nj]=0;
                red+=values.get(matrix[ni][nj]);
              }
            }
          } else if (matrix[i][j].equals("D")) {
            for (int a=i-1; a<i+2; a++) {
              for (int b=j-1; b<j+2; b++) {
                if (a<w&&a>0&&b>0&&b<h && (a!=i&&b!=j)) {
                  if (team[a][b]==-1) {
                    red+=values.get(matrix[a][b]);
                    team[a][b]=0;
                  }
                }
              }
            }
          } else if (matrix[i][j].equals("H") ) {

            int or_x=i;
            int or_y=j;
            boolean cont=true;
            while (or_x<w && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;
                team[or_x][or_y]=0;
              } else {
                or_x++;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x>0 && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_y>0 && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_y>0&& cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_y--;
              }
            }
          } else if (matrix[i][j].equals("I")) {

            int or_x=i;
            int or_y=j;
            boolean cont=true;
            while (or_x<w&&or_y<w && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;
                team[or_x][or_y]=0;
              } else {
                or_x++;
                or_y++;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x>0&&or_y<w && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
                or_y++;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x>0&&or_y>0 && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
                or_y--;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x<w&&or_y>0&& cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x++;
                or_y--;
              }
            }


            while (or_x<w && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;
                team[or_x][or_y]=0;
              } else {
                or_x++;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_x>0 && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_y>0 && cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_x--;
              }
            }
            or_x=i;
            or_y=j;
            cont=true;
            while (or_y>0&& cont) {
              if (team[or_x][or_y]==1) {
                cont=false;
              } else if (team[or_x][or_y]==-1) {
                red+=values.get(matrix[or_x][or_y]);
                cont=false;

                team[or_x][or_y]=0;
              } else {
                or_y--;
              }
            }
          } else if (matrix[i][j].equals("C")) {
            for (int a=-3; a==3; a+=2) {
              for (int b=-3; b==3; b+=2) {
                if (a>0&&a<w&&b>0&&b<w) {
                  if (team[a][b]==-1) {
                    red+=values.get(matrix[a][b]);
                    team[a][b]=0;
                  }
                }
              }
            }
          }
        } else if (team[i][j]==-1) {//blue
          if (matrix[i][j]!=null) {
            if (matrix[i][j].equals("S")) {
              int or_x=i;
              int or_y=j;
              boolean cont=true;
              while (or_x<w&&or_y<w && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;
                  team[or_x][or_y]=0;
                } else {
                  or_x++;
                  or_y++;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x>0&&or_y<w && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                  or_y++;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x>0&&or_y>0 && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                  or_y--;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x<w&&or_y>0&& cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x++;
                  or_y--;
                }
              }


              //for (
            } else if (matrix[i][j].equals("G")) {
              if (i>1&&j>1) {
                int ni=i--;
                int nj=j--;
                if (team[ni][nj]==-1) {
                  red+=values.get(matrix[ni][nj]);
                  team[ni][nj]=0;
                }
              } else if (i<w-1&&j>1) {
                int ni=i++;
                int nj=j--;
                if (team[ni][nj]==-1) {

                  team[ni][nj]=0;
                  red+=values.get(matrix[ni][nj]);
                }
              } else if (i>1&&j<h-1) {
                int ni=i--;
                int nj=j++;
                if (team[ni][nj]==-1) {

                  team[ni][nj]=0;
                  red+=values.get(matrix[ni][nj]);
                }
              } else if (i<w-1&&j<h-1) {
                int ni=i++;
                int nj=j++;
                if (team[ni][nj]==-1) {
                  team[ni][nj]=0;
                  red+=values.get(matrix[ni][nj]);
                }
              }
            } else if (matrix[i][j].equals("D")) {
              for (int a=i-1; a<i+2; a++) {
                for (int b=j-1; b<j+2; b++) {
                  if (a<w&&a>0&&b>0&&b<h && (a!=i&&b!=j)) {
                    if (team[a][b]==-1) {
                      red+=values.get(matrix[a][b]);
                      team[a][b]=0;
                    }
                  }
                }
              }
            } else if (matrix[i][j].equals("H") ) {

              int or_x=i;
              int or_y=j;
              boolean cont=true;
              while (or_x<w && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;
                  team[or_x][or_y]=0;
                } else {
                  or_x++;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x>0 && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_y>0 && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_y>0&& cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_y--;
                }
              }
            } else if (matrix[i][j].equals("I")) {

              int or_x=i;
              int or_y=j;
              boolean cont=true;
              while (or_x<w&&or_y<w && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;
                  team[or_x][or_y]=0;
                } else {
                  or_x++;
                  or_y++;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x>0&&or_y<w && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                  or_y++;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x>0&&or_y>0 && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                  or_y--;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x<w&&or_y>0&& cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x++;
                  or_y--;
                }
              }


              while (or_x<w && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;
                  team[or_x][or_y]=0;
                } else {
                  or_x++;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_x>0 && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_y>0 && cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_x--;
                }
              }
              or_x=i;
              or_y=j;
              cont=true;
              while (or_y>0&& cont) {
                if (team[or_x][or_y]==1) {
                  cont=false;
                } else if (team[or_x][or_y]==-1) {
                  red+=values.get(matrix[or_x][or_y]);
                  cont=false;

                  team[or_x][or_y]=0;
                } else {
                  or_y--;
                }
              }
            } else if (matrix[i][j].equals("C")) {
              for (int a=-3; a==3; a+=2) {
                for (int b=-3; b==3; b+=2) {
                  if (a>0&&a<w&&b>0&&b<w) {
                    if (team[a][b]==-1) {
                      red+=values.get(matrix[a][b]);
                      team[a][b]=0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
*/
