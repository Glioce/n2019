//Este es el programa original

void setupCaptura() {
  cap = new Capture(this, W, H);
  cap.start();
}

void drawCaptura() {
  if (!cap.available()) 
    return;
  background(0);
  cap.read();
  CVImage cv = new CVImage(cap.width, cap.height);
  cv.copyTo(cap);
  Mat im = Dnn.blobFromImage(cv.getBGR(), 1.0, 
    new Size(cap.width, cap.height), 
    new Scalar(103.939, 116.779, 123.68), 
    false, false);
  net.setInput(im);
  Mat out = net.forward();

  Mat b = out.col(0).reshape(1, H);
  Mat g = out.col(1).reshape(1, H);
  Mat r = out.col(2).reshape(1, H);

  Mat tmp = new Mat(r.size(), CvType.CV_8UC3);
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
  image(cv, 0, 0);
  b.release();
  g.release();
  r.release();
  tmp.release();
  out.release();
  im.release();
}
