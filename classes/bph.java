import android.net.Uri;

class bph {
  private static final int c = 29;
  
  private static final int d = 37;
  
  Uri a;
  
  Object b;
  
  bph(Uri paramUri, Object paramObject) {
    this.a = paramUri;
    this.b = paramObject;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null) {
      bool1 = bool2;
      if (paramObject instanceof bph) {
        paramObject = paramObject;
        bool1 = bool2;
        if (((bph)paramObject).a == this.a) {
          bool1 = bool2;
          if (((bph)paramObject).b == this.b)
            bool1 = true; 
        } 
      } 
    } 
    return bool1;
  }
  
  public int hashCode() {
    return (this.a.hashCode() + 1073) * 37 + this.b.hashCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */