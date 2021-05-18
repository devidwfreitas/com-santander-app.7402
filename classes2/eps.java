import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class eps implements Closeable, Flushable {
  private static final String[] a = new String[128];
  
  private static final String[] b = (String[])a.clone();
  
  private final Writer c;
  
  private int[] d = new int[32];
  
  private int e = 0;
  
  private String f;
  
  private String g;
  
  private boolean h;
  
  private boolean i;
  
  private String j;
  
  private boolean k;
  
  static {
    b[60] = "\\u003c";
    b[62] = "\\u003e";
    b[38] = "\\u0026";
    b[61] = "\\u003d";
    b[39] = "\\u0027";
  }
  
  public eps(Writer paramWriter) {
    a(6);
    this.g = ":";
    this.k = true;
    if (paramWriter == null)
      throw new NullPointerException("out == null"); 
    this.c = paramWriter;
  }
  
  private int a() {
    if (this.e == 0)
      throw new IllegalStateException("JsonWriter is closed."); 
    return this.d[this.e - 1];
  }
  
  private eps a(int paramInt, String paramString) {
    m();
    a(paramInt);
    this.c.write(paramString);
    return this;
  }
  
  private void a(int paramInt) {
    if (this.e == this.d.length) {
      int[] arrayOfInt1 = new int[this.e * 2];
      System.arraycopy(this.d, 0, arrayOfInt1, 0, this.e);
      this.d = arrayOfInt1;
    } 
    int[] arrayOfInt = this.d;
    int i = this.e;
    this.e = i + 1;
    arrayOfInt[i] = paramInt;
  }
  
  private void b(int paramInt) {
    this.d[this.e - 1] = paramInt;
  }
  
  private eps close(int paramInt1, int paramInt2, String paramString) {
    int i = a();
    if (i != paramInt2 && i != paramInt1)
      throw new IllegalStateException("Nesting problem."); 
    if (this.j != null)
      throw new IllegalStateException("Dangling name: " + this.j); 
    this.e--;
    if (i == paramInt2)
      k(); 
    this.c.write(paramString);
    return this;
  }
  
  private void e(String paramString) {
    Object object;
    String[] arrayOfString;
    boolean bool = false;
    if (this.i) {
      arrayOfString = b;
    } else {
      arrayOfString = a;
    } 
    this.c.write("\"");
    int j = paramString.length();
    int i = 0;
    while (i < j) {
      String str;
      char c = paramString.charAt(i);
      if (c < '') {
        String str1 = arrayOfString[c];
        str = str1;
        if (str1 == null) {
          Object object1 = object;
          continue;
        } 
      } else if (c == ' ') {
        str = "\\u2028";
      } else {
        Object object1 = object;
        if (c == ' ') {
          str = "\\u2029";
        } else {
          continue;
        } 
      } 
      if (object < i)
        this.c.write(paramString, object, i - object); 
      this.c.write(str);
      int k = i + 1;
      continue;
      i++;
      object = SYNTHETIC_LOCAL_VARIABLE_4;
    } 
    if (object < j)
      this.c.write(paramString, object, j - object); 
    this.c.write("\"");
  }
  
  private void j() {
    if (this.j != null) {
      l();
      e(this.j);
      this.j = null;
    } 
  }
  
  private void k() {
    if (this.f != null) {
      this.c.write("\n");
      int i = 1;
      int j = this.e;
      while (true) {
        if (i < j) {
          this.c.write(this.f);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void l() {
    int i = a();
    if (i == 5) {
      this.c.write(44);
    } else if (i != 3) {
      throw new IllegalStateException("Nesting problem.");
    } 
    k();
    b(4);
  }
  
  private void m() {
    switch (a()) {
      default:
        throw new IllegalStateException("Nesting problem.");
      case 7:
        if (!this.h)
          throw new IllegalStateException("JSON must have only one top-level value."); 
      case 6:
        b(7);
        return;
      case 1:
        b(2);
        k();
        return;
      case 2:
        this.c.append(',');
        k();
        return;
      case 4:
        break;
    } 
    this.c.append(this.g);
    b(5);
  }
  
  public eps a(double paramDouble) {
    if (Double.isNaN(paramDouble) || Double.isInfinite(paramDouble))
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramDouble); 
    j();
    m();
    this.c.append(Double.toString(paramDouble));
    return this;
  }
  
  public eps a(long paramLong) {
    j();
    m();
    this.c.write(Long.toString(paramLong));
    return this;
  }
  
  public eps a(Boolean paramBoolean) {
    if (paramBoolean == null)
      return f(); 
    j();
    m();
    Writer writer = this.c;
    if (paramBoolean.booleanValue()) {
      String str1 = "true";
      writer.write(str1);
      return this;
    } 
    String str = "false";
    writer.write(str);
    return this;
  }
  
  public eps a(Number paramNumber) {
    if (paramNumber == null)
      return f(); 
    j();
    String str = paramNumber.toString();
    if (!this.h && (str.equals("-Infinity") || str.equals("Infinity") || str.equals("NaN")))
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramNumber); 
    m();
    this.c.append(str);
    return this;
  }
  
  public eps a(String paramString) {
    if (paramString == null)
      throw new NullPointerException("name == null"); 
    if (this.j != null)
      throw new IllegalStateException(); 
    if (this.e == 0)
      throw new IllegalStateException("JsonWriter is closed."); 
    this.j = paramString;
    return this;
  }
  
  public eps a(boolean paramBoolean) {
    j();
    m();
    Writer writer = this.c;
    if (paramBoolean) {
      String str1 = "true";
      writer.write(str1);
      return this;
    } 
    String str = "false";
    writer.write(str);
    return this;
  }
  
  public eps b() {
    j();
    return a(1, "[");
  }
  
  public eps b(String paramString) {
    if (paramString == null)
      return f(); 
    j();
    m();
    e(paramString);
    return this;
  }
  
  public final void b(boolean paramBoolean) {
    this.h = paramBoolean;
  }
  
  public eps c() {
    return close(1, 2, "]");
  }
  
  public final void c(String paramString) {
    if (paramString.length() == 0) {
      this.f = null;
      this.g = ":";
      return;
    } 
    this.f = paramString;
    this.g = ": ";
  }
  
  public final void c(boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  public void close() {
    this.c.close();
    int i = this.e;
    if (i > 1 || (i == 1 && this.d[i - 1] != 7))
      throw new IOException("Incomplete document"); 
    this.e = 0;
  }
  
  public eps d() {
    j();
    return a(3, "{");
  }
  
  public eps d(String paramString) {
    if (paramString == null)
      return f(); 
    j();
    m();
    this.c.append(paramString);
    return this;
  }
  
  public final void d(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public eps e() {
    return close(3, 5, "}");
  }
  
  public eps f() {
    if (this.j != null) {
      if (this.k) {
        j();
        m();
        this.c.write("null");
        return this;
      } 
    } else {
      m();
      this.c.write("null");
      return this;
    } 
    this.j = null;
    return this;
  }
  
  public void flush() {
    if (this.e == 0)
      throw new IllegalStateException("JsonWriter is closed."); 
    this.c.flush();
  }
  
  public boolean g() {
    return this.h;
  }
  
  public final boolean h() {
    return this.i;
  }
  
  public final boolean i() {
    return this.k;
  }
  
  static {
    for (int i = 0; i <= 31; i++) {
      a[i] = String.format("\\u%04x", new Object[] { Integer.valueOf(i) });
    } 
    a[34] = "\\\"";
    a[92] = "\\\\";
    a[9] = "\\t";
    a[8] = "\\b";
    a[10] = "\\n";
    a[13] = "\\r";
    a[12] = "\\f";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eps.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */