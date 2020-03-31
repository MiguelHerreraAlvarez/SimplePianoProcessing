import processing.sound.*;

SinOsc osc ;
Env env ;

float tsubida = 0.001;
float tsostenido = 0.004;
float vsostenido = 0.5;
float tbajada = 0.4;
boolean doNote, reNote, miNote, faNote, solNote, laNote, siNote, doSharpNote, reSharpNote, faSharpNote, solSharpNote, laSharpNote;
int[] pressed = new int[]{0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255};
int [] midiSequence = { 60, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 72};


void setup() {
  size(1280, 720);
  background(180);
  osc = new SinOsc(this);
  env = new Env(this);
}

void draw() {
  isPressed();
  drawPiano();
  drawKeys();
}

void drawPiano() {
  fill(255);
  rect(360, 40, 80, 550, 0, 0, 18, 18);
  rect(440, 40, 80, 550, 0, 0, 18, 18);
  rect(520, 40, 80, 550, 0, 0, 18, 18);
  rect(600, 40, 80, 550, 0, 0, 18, 18);
  rect(680, 40, 80, 550, 0, 0, 18, 18);
  rect(760, 40, 80, 550, 0, 0, 18, 18);
  rect(840, 40, 80, 550, 0, 0, 18, 18);

  fill(0);
  rect(415, 40, 50, 300, 0, 0, 18, 18);
  rect(495, 40, 50, 300, 0, 0, 18, 18);
  rect(655, 40, 50, 300, 0, 0, 18, 18);
  rect(735, 40, 50, 300, 0, 0, 18, 18);
  rect(815, 40, 50, 300, 0, 0, 18, 18);
}

void drawKeys() {
  fill(pressed[0]);
  text("S", 397, 540);

  fill(pressed[1]);
  text("D", 477, 540);

  fill(pressed[2]);
  text("F", 557, 540);

  fill(pressed[3]);
  text("G", 637, 540);

  fill(pressed[4]);
  text("H", 717, 540);

  fill(pressed[5]);
  text("J", 797, 540);

  fill(pressed[6]);
  text("K", 877, 540);

  fill(pressed[7]);
  text("E", 437, 320);

  fill(pressed[8]);
  text("R", 517, 320);

  fill(pressed[9]);
  text("Y", 677, 320);

  fill(pressed[10]);
  text("U", 757, 320);

  fill(pressed[11]);
  text("I", 837, 320);
}

void isPressed() {
  if (doNote) {
    pressed[0]=128; 
    osc.play(midiToFreq(midiSequence[0]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[0]=0; 

  if (reNote) {
    pressed[1]=128; 
    osc.play(midiToFreq(midiSequence[1]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[1]=0; 

  if (miNote) {
    pressed[2]=128; 
    osc.play(midiToFreq(midiSequence[2]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[2]=0; 

  if (faNote) {
    pressed[3]=128; 
    osc.play(midiToFreq(midiSequence[3]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[3]=0; 

  if (solNote) {
    pressed[4]=128; 
    osc.play(midiToFreq(midiSequence[4]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[4]=0; 

  if (laNote) {
    pressed[5]=128; 
    osc.play(midiToFreq(midiSequence[5]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[5]=0; 

  if (siNote) {
    pressed[6]=128; 
    osc.play(midiToFreq(midiSequence[6]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[6]=0; 

  if (doSharpNote) {
    pressed[7]=128; 
    osc.play(midiToFreq(midiSequence[7]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[7]=255; 

  if (reSharpNote) {
    pressed[8]=128; 
    osc.play(midiToFreq(midiSequence[8]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[8]=255; 

  if (faSharpNote) {
    pressed[9]=128; 
    osc.play(midiToFreq(midiSequence[9]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[9]=255; 

  if (solSharpNote) {
    pressed[10]=128; 
    osc.play(midiToFreq(midiSequence[10]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[10]=255; 

  if (laSharpNote) {
    pressed[11]=128; 
    osc.play(midiToFreq(midiSequence[11]), 0.5) ;
    env.play(osc, tsubida, tsostenido, vsostenido, tbajada);
  } else pressed[11]=255;
}

void keyPressed() {
  if (key=='s' || key=='S') doNote=true;
  if (key=='d' || key=='D') reNote=true;
  if (key=='f' || key=='F') miNote=true;
  if (key=='g' || key=='G') faNote=true;
  if (key=='h' || key=='H') solNote=true;
  if (key=='j' || key=='J') laNote=true;
  if (key=='k' || key=='K') siNote=true;
  if (key=='e' || key=='E') doSharpNote=true;
  if (key=='r' || key=='R') reSharpNote=true;
  if (key=='y' || key=='Y') faSharpNote=true;
  if (key=='u' || key=='U') solSharpNote=true;
  if (key=='i' || key=='I') laSharpNote=true;
}

void keyReleased() {
  if (key=='s' || key=='S') doNote=false;
  if (key=='d' || key=='D') reNote=false;
  if (key=='f' || key=='F') miNote=false;
  if (key=='g' || key=='G') faNote=false;
  if (key=='h' || key=='H') solNote=false;
  if (key=='j' || key=='J') laNote=false;
  if (key=='k' || key=='K') siNote=false;
  if (key=='e' || key=='E') doSharpNote=false;
  if (key=='r' || key=='R') reSharpNote=false;
  if (key=='y' || key=='Y') faSharpNote=false;
  if (key=='u' || key=='U') solSharpNote=false;
  if (key=='i' || key=='I') laSharpNote=false;
}


float midiToFreq(int nota) {
  return(pow(2, ((nota-69)/12.0)))*440;
}
