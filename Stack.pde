class Stack
{
  //Atributte
  
  private int[] array;
  
  //Methoden
  
  Stack(){
    array = new int[0];
  }
  
  void push(int inhalt)
  {
    int tarray[] = new int[array.length+1];
    for(int i = 0; i < array.length; i++){
      tarray[i] = array[i];
    }
    tarray[tarray.length-1] = inhalt;
    array = new int[tarray.length];
    for(int i = 0; i < array.length; i++){
      array[i] = tarray[i];
    }
  }

  int top()
  {
    return(array[array.length-1]);
  }
  
  int pop()
  {  
    int inhalt = array[array.length-1];
    int tarray[] = new int[array.length-1];
    for(int i = 0; i < array.length-1; i++){
      tarray[i] = array[i];
    }
    array = new int[tarray.length];
    for(int i = 0; i < array.length; i++){
      array[i] = tarray[i];
    }
    return(inhalt);
  }
  
  boolean isEmpty()
  {
    if(array.length == 0)
      return(true);
    return(false);
  }
  
  //Optional
  
  int anzeige(int stelle)
  {
    return(array[stelle]);
  }
  
  int getLength(){
    return(array.length);
  }
}
