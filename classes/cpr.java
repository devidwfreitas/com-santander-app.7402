import com.google.android.gms.common.api.Status;

public class cpr implements cqg {
  private final Status a;
  
  private final boolean b;
  
  public cpr(Status paramStatus, boolean paramBoolean) {
    this.a = (Status)csp.a(paramStatus, "Status must not be null");
    this.b = paramBoolean;
  }
  
  public Status a() {
    return this.a;
  }
  
  public boolean b() {
    return this.b;
  }
  
  public final boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (!(paramObject instanceof cpr))
        return false; 
      paramObject = paramObject;
      if (!this.a.equals(((cpr)paramObject).a) || this.b != ((cpr)paramObject).b)
        return false; 
    } 
    return true;
  }
  
  public final int hashCode() {
    int i = this.a.hashCode();
    if (this.b) {
      byte b1 = 1;
      return b1 + (i + 527) * 31;
    } 
    byte b = 0;
    return b + (i + 527) * 31;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */