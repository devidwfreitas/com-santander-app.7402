public enum cjd {
  DOUBLE_TAP, DRAG, FLING, LONG_PRESS, NONE, PINCH_ZOOM, ROTATE, SINGLE_TAP, X_ZOOM, Y_ZOOM;
  
  static {
    DRAG = new cjd("DRAG", 1);
    X_ZOOM = new cjd("X_ZOOM", 2);
    Y_ZOOM = new cjd("Y_ZOOM", 3);
    PINCH_ZOOM = new cjd("PINCH_ZOOM", 4);
    ROTATE = new cjd("ROTATE", 5);
    SINGLE_TAP = new cjd("SINGLE_TAP", 6);
    DOUBLE_TAP = new cjd("DOUBLE_TAP", 7);
    LONG_PRESS = new cjd("LONG_PRESS", 8);
    FLING = new cjd("FLING", 9);
    $VALUES = new cjd[] { NONE, DRAG, X_ZOOM, Y_ZOOM, PINCH_ZOOM, ROTATE, SINGLE_TAP, DOUBLE_TAP, LONG_PRESS, FLING };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */