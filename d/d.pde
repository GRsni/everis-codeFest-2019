String[] lineas;


void setup() {
  lineas=loadStrings("pedidos_arrayString.txt");
  println(lineas.length);

  String pedidos[][]=new String[lineas.length-1][5];
  ArrayList<String[]> pedidosToken=new ArrayList<String[]>();
  for (int i=1; i<lineas.length; i++) {
    String[] tokens=lineas[i].split(";");
    float peso=Float.parseFloat(tokens[3]);
    println(peso);
    if (Float.parseFloat(tokens[3])<=2000) {
      pedidosToken.add(tokens);
    }
  }
  println(pedidosToken.size());

  //for (String[] s : pedidosToken) {
  //  printArray(s);
  //}

  ArrayList<String[]> pOrden=new ArrayList<String[]>();
  IntList salidas=new IntList();

  while (pedidosToken.size()>0) {
    int first=-1;
    int record=10000;
    int salReal=0;
    String fechaSalRec="";
    int horaSalRec=0;
    int pesoRec=0;
    boolean repe=false;
    for (int i=0; i<pedidosToken.size(); i++) {
      String[] pedido=pedidosToken.get(i);
      String[] horaS=pedido[2].split(":");
      PVector horaSalida=new PVector(Integer.parseInt(horaS[0]), Integer.parseInt(horaS[1]));
      int timeArrival=Integer.parseInt(pedido[4]);
      int minArr=((int)horaSalida.y)-timeArrival;
      if (minArr<0) {
        minArr+=60;
        horaSalida.x--;
      }
      //horasalida es la hora deseada
      PVector horaLlegada=new PVector(horaSalida.x, minArr);

      int horaDes=((int)horaLlegada.x*60+(int)horaLlegada.y);
      println("legada: "+horaDes);
      if (horaLlegada.x*60+horaLlegada.y<record) {
        fechaSalRec=pedido[1];
        first=i;
        record=horaDes;
        salReal=Integer.parseInt(pedido[4]);
      } else if (horaLlegada.x*60+horaLlegada.y==record) {
        String fech1=fechaSalRec.substring(0, 1);
        String fech2=pedido[1].substring(0, 1);
        if (Integer.parseInt(fech1)>Integer.parseInt(fech2)) {
          first=i;
          record=horaDes;
          fechaSalRec=pedido[1];
          salReal=Integer.parseInt(pedido[4]);
        } else if (Integer.parseInt(fech1)==Integer.parseInt(fech2)) {
          int peso2=Integer.parseInt(pedido[3]);
          if (pesoRec>peso2) {
            first=i;
            record=horaDes;
            fechaSalRec=pedido[1];
            pesoRec=peso2;
            salReal=Integer.parseInt(pedido[4]);
          }
        }
      }
    }
    salidas.append(record);
    pOrden.add(pedidosToken.get(first));
    pedidosToken.remove(first);
  }

  printArray(salidas);

  ArrayList<String[]> salidasAjust=new ArrayList<String[]>();

  for (int i=0; i<salidas.size(); i++) {
    int salidaAjust=(int)ceil(salidas.get(i)/5.0)*5; 
    if (salidaAjust<1265) {
      salidas.set(i, salidaAjust);
    } else {
      salidas.set(i, -1);
    }
  }

  printArray(pOrden.get(1));
  //printArray(salidas);
  exit();
}
