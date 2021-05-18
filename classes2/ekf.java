import java.math.BigDecimal;
import java.math.BigInteger;

public final class ekf extends ejz {
  private static final Class<?>[] a = new Class[] { 
      int.class, long.class, short.class, float.class, double.class, byte.class, boolean.class, char.class, Integer.class, Long.class, 
      Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  
  private Object b;
  
  public ekf(Boolean paramBoolean) {
    a(paramBoolean);
  }
  
  public ekf(Character paramCharacter) {
    a(paramCharacter);
  }
  
  public ekf(Number paramNumber) {
    a(paramNumber);
  }
  
  ekf(Object paramObject) {
    a(paramObject);
  }
  
  public ekf(String paramString) {
    a(paramString);
  }
  
  private static boolean a(ekf paramekf) {
    if (paramekf.b instanceof Number) {
      Number number = (Number)paramekf.b;
      return (number instanceof BigInteger || number instanceof Long || number instanceof Integer || number instanceof Short || number instanceof Byte);
    } 
    return false;
  }
  
  private static boolean b(Object<?> paramObject) {
    if (!(paramObject instanceof String)) {
      paramObject = (Object<?>)paramObject.getClass();
      Class<?>[] arrayOfClass = a;
      int j = arrayOfClass.length;
      int i = 0;
      while (i < j) {
        if (!arrayOfClass[i].isAssignableFrom((Class<?>)paramObject)) {
          i++;
          continue;
        } 
        return true;
      } 
      return false;
    } 
    return true;
  }
  
  ekf a() {
    return this;
  }
  
  void a(Object paramObject) {
    boolean bool;
    if (paramObject instanceof Character) {
      this.b = String.valueOf(((Character)paramObject).charValue());
      return;
    } 
    if (paramObject instanceof Number || b(paramObject)) {
      bool = true;
    } else {
      bool = false;
    } 
    ekv.a(bool);
    this.b = paramObject;
  }
  
  public boolean b() {
    return this.b instanceof Boolean;
  }
  
  public Number c() {
    return (this.b instanceof String) ? new els((String)this.b) : (Number)this.b;
  }
  
  public String d() {
    return y() ? c().toString() : (b() ? x().toString() : (String)this.b);
  }
  
  public double e() {
    return y() ? c().doubleValue() : Double.parseDouble(d());
  }
  
  public boolean equals(Object paramObject) {
    boolean bool = false;
    if (this == paramObject)
      return true; 
    if (paramObject == null || getClass() != paramObject.getClass())
      return false; 
    paramObject = paramObject;
    if (this.b == null)
      return !(((ekf)paramObject).b != null); 
    if (a(this) && a((ekf)paramObject))
      return !(c().longValue() != paramObject.c().longValue()); 
    if (this.b instanceof Number && ((ekf)paramObject).b instanceof Number) {
      double d1 = c().doubleValue();
      double d2 = paramObject.c().doubleValue();
      if (d1 != d2) {
        boolean bool1 = bool;
        if (Double.isNaN(d1)) {
          bool1 = bool;
          if (Double.isNaN(d2))
            return true; 
        } 
        return bool1;
      } 
    } else {
      return this.b.equals(((ekf)paramObject).b);
    } 
    return true;
  }
  
  public BigDecimal f() {
    return (this.b instanceof BigDecimal) ? (BigDecimal)this.b : new BigDecimal(this.b.toString());
  }
  
  public BigInteger g() {
    return (this.b instanceof BigInteger) ? (BigInteger)this.b : new BigInteger(this.b.toString());
  }
  
  public float h() {
    return y() ? c().floatValue() : Float.parseFloat(d());
  }
  
  public int hashCode() {
    if (this.b == null)
      return 31; 
    if (a(this)) {
      long l = c().longValue();
      return (int)(l ^ l >>> 32L);
    } 
    if (this.b instanceof Number) {
      long l = Double.doubleToLongBits(c().doubleValue());
      return (int)(l ^ l >>> 32L);
    } 
    return this.b.hashCode();
  }
  
  public long i() {
    return y() ? c().longValue() : Long.parseLong(d());
  }
  
  public int j() {
    return y() ? c().intValue() : Integer.parseInt(d());
  }
  
  public byte k() {
    return y() ? c().byteValue() : Byte.parseByte(d());
  }
  
  public char l() {
    return d().charAt(0);
  }
  
  public short m() {
    return y() ? c().shortValue() : Short.parseShort(d());
  }
  
  public boolean n() {
    return b() ? x().booleanValue() : Boolean.parseBoolean(d());
  }
  
  Boolean x() {
    return (Boolean)this.b;
  }
  
  public boolean y() {
    return this.b instanceof Number;
  }
  
  public boolean z() {
    return this.b instanceof String;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ekf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */