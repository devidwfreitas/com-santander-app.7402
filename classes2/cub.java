import android.content.ComponentName;
import android.content.Intent;

public final class cub {
  private final String a = null;
  
  private final String b = null;
  
  private final ComponentName c;
  
  public cub(ComponentName paramComponentName) {
    this.c = csp.<ComponentName>a(paramComponentName);
  }
  
  public cub(String paramString1, String paramString2) {
    this.c = null;
  }
  
  public String a() {
    return this.b;
  }
  
  public ComponentName b() {
    return this.c;
  }
  
  public Intent c() {
    return (this.a != null) ? (new Intent(this.a)).setPackage(this.b) : (new Intent()).setComponent(this.c);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof cub))
        return false; 
      paramObject = paramObject;
      if (!csg.a(this.a, ((cub)paramObject).a) || !csg.a(this.c, ((cub)paramObject).c))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.a, this.c });
  }
  
  public String toString() {
    return (this.a == null) ? this.c.flattenToString() : this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */