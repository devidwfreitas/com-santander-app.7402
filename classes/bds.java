import android.graphics.Paint;

public enum bds {
  Bevel, Miter, Round;
  
  static {
    Bevel = new bds("Bevel", 2);
    $VALUES = new bds[] { Miter, Round, Bevel };
  }
  
  public Paint.Join toPaintJoin() {
    switch (bdp.b[ordinal()]) {
      default:
        return null;
      case 1:
        return Paint.Join.BEVEL;
      case 2:
        return Paint.Join.MITER;
      case 3:
        break;
    } 
    return Paint.Join.ROUND;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */