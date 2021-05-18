public enum kuu {
  CAMERA, GONE, TO_VIEW, TRASH;
  
  static {
    TO_VIEW = new kuu("TO_VIEW", 1);
    CAMERA = new kuu("CAMERA", 2);
    GONE = new kuu("GONE", 3);
    $VALUES = new kuu[] { TRASH, TO_VIEW, CAMERA, GONE };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kuu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */