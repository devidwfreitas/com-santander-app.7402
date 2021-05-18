public enum bcx {
  Polygon,
  Star(1);
  
  private final int value;
  
  static {
    Polygon = new bcx("Polygon", 1, 2);
    $VALUES = new bcx[] { Star, Polygon };
  }
  
  bcx(int paramInt1) {
    this.value = paramInt1;
  }
  
  static bcx forValue(int paramInt) {
    for (bcx bcx1 : values()) {
      if (bcx1.value == paramInt)
        return bcx1; 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bcx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */