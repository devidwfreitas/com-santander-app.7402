import java.util.HashMap;
import java.util.Map;

public enum gty {
  USER_SANTANDER(1),
  USER_SELECT(1),
  USER_UNIVERSIDADES(1),
  USER_VAN_GOGH(2),
  USER_VAN_GOGH_UNIVERSIDADES(2);
  
  private static Map map;
  
  private int value;
  
  static {
    USER_SELECT = new gty("USER_SELECT", 2, 3);
    USER_UNIVERSIDADES = new gty("USER_UNIVERSIDADES", 3, 4);
    USER_VAN_GOGH_UNIVERSIDADES = new gty("USER_VAN_GOGH_UNIVERSIDADES", 4, 5);
    $VALUES = new gty[] { USER_SANTANDER, USER_VAN_GOGH, USER_SELECT, USER_UNIVERSIDADES, USER_VAN_GOGH_UNIVERSIDADES };
    map = new HashMap<Object, Object>();
    gty[] arrayOfGty = values();
    int j = arrayOfGty.length;
    while (i < j) {
      gty gty1 = arrayOfGty[i];
      map.put(Integer.valueOf(gty1.value), gty1);
      i++;
    } 
  }
  
  gty(int paramInt1) {
    this.value = paramInt1;
  }
  
  public int getValue() {
    return this.value;
  }
  
  static {
    int i = 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */