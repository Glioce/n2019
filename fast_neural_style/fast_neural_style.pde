import processing.video.*;
import cvimage.*;
import org.opencv.core.*;
import org.opencv.core.Core;
import org.opencv.dnn.*;

//final int W = 640, H = 360;
final int W = 320, H = 240;
Capture cap;
PImage img;
String model;
Net net;
Mat mean;
CVImage cv;

/*public void settings() {
 size(W, H);
 }*/

public void setup() {
  size(640, 480);
  System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
  println(Core.VERSION);
  model = "candy.t7";           //bueno
  //model = "composition_vii.t7";
  //model = "feathers.t7";        //bueno
  //model = "la_muse.t7";         //regular
  //model = "la_muse_norm.t7";    //regular
  //model = "mosaic.t7";          //bueno
  //model = "starry_night.t7";
  //model = "the_scream.t7";
  //model = "the_wave.t7";
  //model = "udnie.t7";
  mean = new Mat(H, W, CvType.CV_8UC3, new Scalar(103.939, 116.779, 123.68));
  net = Dnn.readNetFromTorch(dataPath(model));
  //net = Dnn.readNetFromTensorflow(dataPath(model));
  printArray(net.getLayerNames());
  //setupCaptura();
  setupLectura();
}

public void draw() {
  //drawCaptura();
  drawLectura();
}
