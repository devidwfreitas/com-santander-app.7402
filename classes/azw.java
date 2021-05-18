import android.graphics.Color;

public class azw implements bbv<Integer> {
  public static final azw a = new azw();
  
  public Integer a(Object paramObject, float paramFloat) {
    paramObject = paramObject;
    if (paramObject.length() == 4) {
      int i = 0;
      boolean bool = true;
      while (i < paramObject.length()) {
        if (paramObject.optDouble(i) > 1.0D)
          bool = false; 
        i++;
      } 
      if (bool) {
        paramFloat = 255.0F;
        return Integer.valueOf(Color.argb((int)(paramObject.optDouble(3) * paramFloat), (int)(paramObject.optDouble(0) * paramFloat), (int)(paramObject.optDouble(1) * paramFloat), (int)(paramObject.optDouble(2) * paramFloat)));
      } 
      paramFloat = 1.0F;
      return Integer.valueOf(Color.argb((int)(paramObject.optDouble(3) * paramFloat), (int)(paramObject.optDouble(0) * paramFloat), (int)(paramObject.optDouble(1) * paramFloat), (int)(paramObject.optDouble(2) * paramFloat)));
    } 
    return Integer.valueOf(-16777216);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */