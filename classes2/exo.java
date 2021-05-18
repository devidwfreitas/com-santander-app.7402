import java.util.ArrayList;
import java.util.List;

final class exo {
  private final List<exn> a;
  
  private final int b;
  
  private final boolean c;
  
  exo(List<exn> paramList, int paramInt, boolean paramBoolean) {
    this.a = new ArrayList<exn>(paramList);
    this.b = paramInt;
    this.c = paramBoolean;
  }
  
  List<exn> a() {
    return this.a;
  }
  
  boolean a(List<exn> paramList) {
    return this.a.equals(paramList);
  }
  
  int b() {
    return this.b;
  }
  
  boolean c() {
    return this.c;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof exo) {
      paramObject = paramObject;
      if (this.a.equals(paramObject.a()) && this.c == ((exo)paramObject).c)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return this.a.hashCode() ^ Boolean.valueOf(this.c).hashCode();
  }
  
  public String toString() {
    return "{ " + this.a + " }";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */