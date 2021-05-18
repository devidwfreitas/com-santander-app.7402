public enum cgv {
  CUBIC_BEZIER, HORIZONTAL_BEZIER, LINEAR, STEPPED;
  
  static {
    CUBIC_BEZIER = new cgv("CUBIC_BEZIER", 2);
    HORIZONTAL_BEZIER = new cgv("HORIZONTAL_BEZIER", 3);
    $VALUES = new cgv[] { LINEAR, STEPPED, CUBIC_BEZIER, HORIZONTAL_BEZIER };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */