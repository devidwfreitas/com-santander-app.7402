import java.math.BigDecimal;

public final class els extends Number {
  private final String a;
  
  public els(String paramString) {
    this.a = paramString;
  }
  
  private Object writeReplace() {
    return new BigDecimal(this.a);
  }
  
  public double doubleValue() {
    return Double.parseDouble(this.a);
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    if (this == paramObject)
      return true; 
    boolean bool1 = bool2;
    if (paramObject instanceof els) {
      paramObject = paramObject;
      if (this.a != ((els)paramObject).a) {
        bool1 = bool2;
        return this.a.equals(((els)paramObject).a) ? true : bool1;
      } 
      return true;
    } 
    return bool1;
  }
  
  public float floatValue() {
    return Float.parseFloat(this.a);
  }
  
  public int hashCode() {
    return this.a.hashCode();
  }
  
  public int intValue() {
    try {
      return Integer.parseInt(this.a);
    } catch (NumberFormatException numberFormatException) {
      try {
        long l = Long.parseLong(this.a);
        return (int)l;
      } catch (NumberFormatException numberFormatException1) {
        return (new BigDecimal(this.a)).intValue();
      } 
    } 
  }
  
  public long longValue() {
    try {
      return Long.parseLong(this.a);
    } catch (NumberFormatException numberFormatException) {
      return (new BigDecimal(this.a)).longValue();
    } 
  }
  
  public String toString() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\els.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */