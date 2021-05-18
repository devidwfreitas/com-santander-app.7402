import android.net.Uri;

public final class crw {
  public final Uri a;
  
  public crw(Uri paramUri) {
    this.a = paramUri;
  }
  
  public boolean equals(Object paramObject) {
    return !(paramObject instanceof crw) ? false : ((this == paramObject) ? true : csg.a(((crw)paramObject).a, this.a));
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */