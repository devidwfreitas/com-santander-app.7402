import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;

public abstract class crj {
  protected final DataHolder a;
  
  protected int b;
  
  private int c;
  
  public crj(DataHolder paramDataHolder, int paramInt) {
    this.a = (DataHolder)csp.a(paramDataHolder);
    a(paramInt);
  }
  
  protected int a() {
    return this.b;
  }
  
  protected void a(int paramInt) {
    boolean bool;
    if (paramInt >= 0 && paramInt < this.a.f()) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool);
    this.b = paramInt;
    this.c = this.a.a(this.b);
  }
  
  protected void a(String paramString, CharArrayBuffer paramCharArrayBuffer) {
    this.a.a(paramString, this.b, this.c, paramCharArrayBuffer);
  }
  
  public boolean a(String paramString) {
    return this.a.a(paramString);
  }
  
  protected long b(String paramString) {
    return this.a.a(paramString, this.b, this.c);
  }
  
  public boolean b() {
    return !this.a.g();
  }
  
  protected int c(String paramString) {
    return this.a.b(paramString, this.b, this.c);
  }
  
  protected boolean d(String paramString) {
    return this.a.d(paramString, this.b, this.c);
  }
  
  protected String e(String paramString) {
    return this.a.c(paramString, this.b, this.c);
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject instanceof crj) {
      paramObject = paramObject;
      bool1 = bool2;
      if (csg.a(Integer.valueOf(((crj)paramObject).b), Integer.valueOf(this.b))) {
        bool1 = bool2;
        if (csg.a(Integer.valueOf(((crj)paramObject).c), Integer.valueOf(this.c))) {
          bool1 = bool2;
          if (((crj)paramObject).a == this.a)
            bool1 = true; 
        } 
      } 
    } 
    return bool1;
  }
  
  protected float f(String paramString) {
    return this.a.e(paramString, this.b, this.c);
  }
  
  protected byte[] g(String paramString) {
    return this.a.f(paramString, this.b, this.c);
  }
  
  protected Uri h(String paramString) {
    return this.a.g(paramString, this.b, this.c);
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.b), Integer.valueOf(this.c), this.a });
  }
  
  protected boolean i(String paramString) {
    return this.a.h(paramString, this.b, this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */