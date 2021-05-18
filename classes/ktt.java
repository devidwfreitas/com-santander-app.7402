import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class ktt {
  @eks(a = "id")
  private int a;
  
  @eks(a = "name")
  private String b;
  
  @eks(a = "description")
  private String c;
  
  @eks(a = "image")
  private String d;
  
  @eks(a = "products")
  private List<kts> e;
  
  @eks(a = "proposal")
  private List<koe> f;
  
  private String g;
  
  private String h;
  
  private boolean i;
  
  private boolean j;
  
  private boolean k;
  
  public List<koe> a() {
    return this.f;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(String paramString) {
    this.d = paramString;
  }
  
  public void a(List<koe> paramList) {
    this.f = paramList;
  }
  
  public void a(koe paramkoe) {
    if (paramkoe != null) {
      if (this.f == null)
        this.f = new ArrayList<koe>(); 
      this.f.add(paramkoe);
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public boolean a(kts paramkts) {
    if (this.e == null)
      this.e = new ArrayList<kts>(); 
    this.e.add(paramkts);
    return true;
  }
  
  public ktt b(boolean paramBoolean) {
    ktt ktt1 = new ktt();
    ktt1.b(this.b);
    ktt1.a(this.a);
    ktt1.c(this.c);
    if (paramBoolean) {
      ktt1.b(this.e);
      ktt1.a(this.f);
    } 
    ktt1.a(this.d);
    return ktt1;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public void b(List<kts> paramList) {
    this.e = paramList;
  }
  
  public boolean b() {
    return this.k;
  }
  
  public int c() {
    return this.a;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  public String d() {
    return !TextUtils.isEmpty(this.b) ? this.b.trim() : this.b;
  }
  
  public void d(String paramString) {
    this.g = paramString;
  }
  
  public void d(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public String e() {
    return !TextUtils.isEmpty(this.c) ? this.c.trim() : this.c;
  }
  
  public void e(String paramString) {
    this.h = paramString;
  }
  
  public List<kts> f() {
    return (this.e != null) ? this.e : new ArrayList<kts>();
  }
  
  public String g() {
    return this.d;
  }
  
  public String h() {
    return this.g;
  }
  
  public String i() {
    return this.h;
  }
  
  public boolean j() {
    return this.i;
  }
  
  public boolean k() {
    return this.j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ktt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */