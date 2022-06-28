void main() {
  List lst1 = [
    0.0,0.0,0.0,-1.2,-1.8,-2.5,0.0,0.0,3.1,0.0,0.0,0.9,1.4,0.0,0.0,0.0,1.2,3.0,2.1,0.0,0.0,-2.9,-4.5,-3.2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-2.2,-2.2,-1.0,1.1,1.7,0.0,1.3,0.0,0.0,0.0,0.0,1.5,0.0,0.0,0.0,1.7,1.2,0.0,0.0,0.0,-1.3,-3.5,-2.3,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-0.6,0.0,-1.2,-1.4,-1.4,-1.1,0.0,0.7,2.2,0.0,1.1,1.5,1.1,1.2,2.3,2.0,1.0,0.0,-0.9,-1.6,-1.7,-1.6,0.0,-0.8,0.0,0.0,0.0,0.0,0.0,-0.8,-1.3,-1.5,0.0,0.0,0.0,0.8,0.0,0.0,0.0,1.1,1.6,2.2,1.8,1.4,0.0,0.0,-0.8,-1.0,-1.2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
  ];

  for (var i = 0; i < lst1.length; i++) {
    if (lst1[i]>0) {
      lst1[i]=lst1[i]*2;
    }
  }

  List lst=[lst1[0]];
  //filtro a media mobile n=3
  for (var i = 1; i < lst1.length-1; i++) {
    lst.add((lst1[i-1]+lst1[i+1])/2);
  }
  lst.add(lst1[lst1.length-1]);

  for (var i = 0; i < lst.length; i++) {
    if (lst[i]>0) {
      lst[i]=lst[i]*lst[i];
    };
  }

  List instants=[];
  int reps = 0;
  final interval=0.125;
  final lim = 1.25;
  for (var i = 0; i < lst.length-16; i++) {
    if (lst[i]>lim) {
      if (lst[i+1]>lim) {
        reps=reps+1;
        instants.add(i);
        lst[i+1]=0.0;
        lst[i+2]=0.0;
        lst[i+3]=0.0;
        lst[i+4]=0.0;
        lst[i+5]=0.0;
        lst[i+6]=0.0;
        lst[i+7]=0.0;
        lst[i+8]=0.0;
        lst[i+9]=0.0;
        lst[i+10]=0.0;
        lst[i+11]=0.0;
        lst[i+12]=0.0;
        lst[i+13]=0.0;
        lst[i+14]=0.0;
        lst[i+15]=0.0;
        lst[i+16]=0.0;
      }; 
    };
  };
  print("$reps");

  var T;
  List durations=[];
  for (var i = 1; i < instants.length; i++) {
    T=(instants[i]-instants[i-1])*interval;
    durations.add(T);
  }
  print(durations);
  
  var m=0.0;
  for (var i = 0; i < durations.length; i++) {
    m=m+durations[i];
  }
  var mean=m/durations.length;
  print(mean);
}

