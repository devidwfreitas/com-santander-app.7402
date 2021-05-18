import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

public final class enc extends epo {
  private static final Reader b = new end();
  
  private static final Object c = new Object();
  
  private Object[] d = new Object[32];
  
  private int e = 0;
  
  private String[] f = new String[32];
  
  private int[] g = new int[32];
  
  public enc(ejz paramejz) {
    super(b);
    a(paramejz);
  }
  
  private void a(epr paramepr) {
    if (f() != paramepr)
      throw new IllegalStateException("Expected " + paramepr + " but was " + f() + u()); 
  }
  
  private void a(Object paramObject) {
    if (this.e == this.d.length) {
      Object[] arrayOfObject1 = new Object[this.e * 2];
      int[] arrayOfInt = new int[this.e * 2];
      String[] arrayOfString = new String[this.e * 2];
      System.arraycopy(this.d, 0, arrayOfObject1, 0, this.e);
      System.arraycopy(this.g, 0, arrayOfInt, 0, this.e);
      System.arraycopy(this.f, 0, arrayOfString, 0, this.e);
      this.d = arrayOfObject1;
      this.g = arrayOfInt;
      this.f = arrayOfString;
    } 
    Object[] arrayOfObject = this.d;
    int i = this.e;
    this.e = i + 1;
    arrayOfObject[i] = paramObject;
  }
  
  private Object s() {
    return this.d[this.e - 1];
  }
  
  private Object t() {
    Object[] arrayOfObject = this.d;
    int i = this.e - 1;
    this.e = i;
    Object object = arrayOfObject[i];
    this.d[this.e] = null;
    return object;
  }
  
  private String u() {
    return " at path " + p();
  }
  
  public void a() {
    a(epr.BEGIN_ARRAY);
    a(((ejw)s()).iterator());
    this.g[this.e - 1] = 0;
  }
  
  public void b() {
    a(epr.END_ARRAY);
    t();
    t();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int i = this.e - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
    } 
  }
  
  public void c() {
    a(epr.BEGIN_OBJECT);
    a(((ekc)s()).b().iterator());
  }
  
  public void close() {
    this.d = new Object[] { c };
    this.e = 1;
  }
  
  public void d() {
    a(epr.END_OBJECT);
    t();
    t();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int i = this.e - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
    } 
  }
  
  public boolean e() {
    epr epr = f();
    return (epr != epr.END_OBJECT && epr != epr.END_ARRAY);
  }
  
  public epr f() {
    if (this.e == 0)
      return epr.END_DOCUMENT; 
    Object object = s();
    if (object instanceof Iterator) {
      boolean bool = this.d[this.e - 2] instanceof ekc;
      object = object;
      if (object.hasNext()) {
        if (bool)
          return epr.NAME; 
        a(object.next());
        return f();
      } 
      return bool ? epr.END_OBJECT : epr.END_ARRAY;
    } 
    if (object instanceof ekc)
      return epr.BEGIN_OBJECT; 
    if (object instanceof ejw)
      return epr.BEGIN_ARRAY; 
    if (object instanceof ekf) {
      object = object;
      if (object.z())
        return epr.STRING; 
      if (object.b())
        return epr.BOOLEAN; 
      if (object.y())
        return epr.NUMBER; 
      throw new AssertionError();
    } 
    if (object instanceof ekb)
      return epr.NULL; 
    if (object == c)
      throw new IllegalStateException("JsonReader is closed"); 
    throw new AssertionError();
  }
  
  public String g() {
    a(epr.NAME);
    Map.Entry entry = ((Iterator<Map.Entry>)s()).next();
    String str = (String)entry.getKey();
    this.f[this.e - 1] = str;
    a(entry.getValue());
    return str;
  }
  
  public String h() {
    epr epr = f();
    if (epr != epr.STRING && epr != epr.NUMBER)
      throw new IllegalStateException("Expected " + epr.STRING + " but was " + epr + u()); 
    String str = ((ekf)t()).d();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int i = this.e - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
    } 
    return str;
  }
  
  public boolean i() {
    a(epr.BOOLEAN);
    boolean bool = ((ekf)t()).n();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int i = this.e - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
    } 
    return bool;
  }
  
  public void j() {
    a(epr.NULL);
    t();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int i = this.e - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
    } 
  }
  
  public double k() {
    epr epr = f();
    if (epr != epr.NUMBER && epr != epr.STRING)
      throw new IllegalStateException("Expected " + epr.NUMBER + " but was " + epr + u()); 
    double d = ((ekf)s()).e();
    if (!q() && (Double.isNaN(d) || Double.isInfinite(d)))
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d); 
    t();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int i = this.e - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
    } 
    return d;
  }
  
  public long l() {
    epr epr = f();
    if (epr != epr.NUMBER && epr != epr.STRING)
      throw new IllegalStateException("Expected " + epr.NUMBER + " but was " + epr + u()); 
    long l = ((ekf)s()).i();
    t();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int i = this.e - 1;
      arrayOfInt[i] = arrayOfInt[i] + 1;
    } 
    return l;
  }
  
  public int m() {
    epr epr = f();
    if (epr != epr.NUMBER && epr != epr.STRING)
      throw new IllegalStateException("Expected " + epr.NUMBER + " but was " + epr + u()); 
    int i = ((ekf)s()).j();
    t();
    if (this.e > 0) {
      int[] arrayOfInt = this.g;
      int j = this.e - 1;
      arrayOfInt[j] = arrayOfInt[j] + 1;
    } 
    return i;
  }
  
  public void n() {
    if (f() == epr.NAME) {
      g();
      this.f[this.e - 2] = "null";
    } else {
      t();
      this.f[this.e - 1] = "null";
    } 
    int[] arrayOfInt = this.g;
    int i = this.e - 1;
    arrayOfInt[i] = arrayOfInt[i] + 1;
  }
  
  public void o() {
    a(epr.NAME);
    Map.Entry entry = ((Iterator<Map.Entry>)s()).next();
    a(entry.getValue());
    a(new ekf((String)entry.getKey()));
  }
  
  public String p() {
    StringBuilder stringBuilder = (new StringBuilder()).append('$');
    for (int i = 0; i < this.e; i = j + 1) {
      int j;
      if (this.d[i] instanceof ejw) {
        Object[] arrayOfObject = this.d;
        j = ++i;
        if (arrayOfObject[i] instanceof Iterator) {
          stringBuilder.append('[').append(this.g[i]).append(']');
          j = i;
        } 
      } else {
        j = i;
        if (this.d[i] instanceof ekc) {
          Object[] arrayOfObject = this.d;
          j = ++i;
          if (arrayOfObject[i] instanceof Iterator) {
            stringBuilder.append('.');
            j = i;
            if (this.f[i] != null) {
              stringBuilder.append(this.f[i]);
              j = i;
            } 
          } 
        } 
      } 
    } 
    return stringBuilder.toString();
  }
  
  public String toString() {
    return getClass().getSimpleName();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\enc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */