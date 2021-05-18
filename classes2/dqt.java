import android.support.annotation.Nullable;

public class dqt {
  private String a;
  
  public dqt(@Nullable String paramString) {
    this.a = paramString;
  }
  
  @Nullable
  public String a() {
    return this.a;
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof dqt))
      return false; 
    paramObject = paramObject;
    return csg.a(this.a, ((dqt)paramObject).a);
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a });
  }
  
  public String toString() {
    return csg.a(this).a("token", this.a).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */