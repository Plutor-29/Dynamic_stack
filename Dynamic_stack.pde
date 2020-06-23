Stack stapel1 = new Stack();
String output, input = "";
int befehl, y, x = 0;

void setup()                          
{
  size(1920, 1080);                 
  background(0);                      
  fill(#ffffff);                     
  textSize(24);                     
  surface.setResizable(true);       
}

void draw()
{
  clear();
  
  if(!stapel1.isEmpty()){
    x = 0;
    y = 0;
    for(int i = 0; i < stapel1.getLength(); i++){
      text(stapel1.anzeige(i), 150*(x+1), 50*(y+1));
      x++;
      if(x > 10){
        x = 0;
        y++;
      }
        
    }
  }
  text("Ausgabe: " + output, 50, 850);
  text("Eingabe: " + input, 50, 800);
  text("Befehle: p = push();   o = pop();   t = top();   i = isEmpty()", 50, 900);
}

void keyPressed(){
  if(key == '0' || key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9'){
    input = input + key;
  }
  if(keyCode == BACKSPACE){
    if (input.length()>0){
      input=input.substring(0, input.length()-1);
    }
  }
  if(key == 'p'){
    stapel1.push(Integer.valueOf(input));
  }
  if(key == 'o' && stapel1.getLength() > 0){
    output = Integer.toString(stapel1.pop());
  }
  if(key == 't' && stapel1.getLength() > 0){
    output = Integer.toString(stapel1.top());
  }
  if(key == 'i'){
    output = Boolean.toString(stapel1.isEmpty());
  }
}
