// Este programa modificado lee una imagen de la carpeta 'data'
// y la modifica solo una vez.

void setupLectura() {
  img = loadImage("fotos/pinata_0.jpg"); //cargar imagen

  cv = new CVImage(img.width, img.height);
  cv.copyTo(img); //la imagen cargada se copia a un contenedor de tipo CVImage

  //copiar blob a una matriz
  Mat im = Dnn.blobFromImage(cv.getBGR(), //Mat image 
    1.0, //double scalefactor
    new Size(cap.width, cap.height), //Size size 
    new Scalar(103.939, 116.779, 123.68), //Scalar mean
    false, false);             // boolean swapRB, boolean crop

  net.setInput(im); //introducir matriz a la red neuronal
  Mat out = net.forward(); //evaluar

  Mat b = out.col(0).reshape(1, H); //??
  Mat g = out.col(1).reshape(1, H);
  Mat r = out.col(2).reshape(1, H);

  Mat tmp = new Mat(r.size(), CvType.CV_8UC3); //otra matriz

  b.convertTo(b, CvType.CV_8UC1);
  g.convertTo(g, CvType.CV_8UC1);
  r.convertTo(r, CvType.CV_8UC1);

  ArrayList<Mat> chan = new ArrayList<Mat>();
  chan.add(b);
  chan.add(g);
  chan.add(r);
  Core.merge(chan, tmp);
  Core.add(tmp, mean, tmp);
  cv.copyTo(tmp);

  b.release();
  g.release();
  r.release();
  tmp.release();
  out.release();
  im.release();
}

void drawLectura() {
  //image(img, 0, 0);
  background(0);
  image(cv, 0, 0);
}
