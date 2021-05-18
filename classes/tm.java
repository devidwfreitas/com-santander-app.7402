import android.os.Parcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class tm extends abv implements abx {
  @ekq
  @eks(a = "titularName")
  private String a;
  
  @ekq
  @eks(a = "portfolioBalance")
  private sw b;
  
  @ekq
  @eks(a = "family")
  private List<sy> c = new ArrayList<sy>();
  
  public sw a() {
    return this.b;
  }
  
  public void a(Parcel paramParcel, int paramInt) {
    paramParcel.writeValue(this.b);
    paramParcel.writeList(this.c);
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<sy> paramList) {
    this.c = paramList;
  }
  
  public void a(sw paramsw) {
    this.b = paramsw;
  }
  
  public List<sy> b() {
    return this.c;
  }
  
  public int c() {
    return 0;
  }
  
  public String d() {
    return this.a;
  }
  
  public void f() {}
  
  public void g() {
    if (this.b != null)
      this.b.g(); 
    this.a = n(this.a);
    Iterator<sy> iterator = this.c.iterator();
    while (iterator.hasNext())
      ((sy)iterator.next()).g(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\tm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */