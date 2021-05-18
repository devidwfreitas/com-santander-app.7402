import android.graphics.Paint;

public enum bdr {
  Butt, Round, Unknown;
  
  static {
    $VALUES = new bdr[] { Butt, Round, Unknown };
  }
  
  public Paint.Cap toPaintCap() {
    switch (bdp.a[ordinal()]) {
      default:
        return Paint.Cap.SQUARE;
      case 1:
        return Paint.Cap.BUTT;
      case 2:
        break;
    } 
    return Paint.Cap.ROUND;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */