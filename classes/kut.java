import java.util.ArrayList;
import java.util.List;

public class kut {
  @eks(a = "document")
  private kus a;
  
  private kuu b;
  
  private kuu c;
  
  private boolean d = false;
  
  private boolean e = false;
  
  private boolean f = false;
  
  public static List<kut> a(List<kuw> paramList) {
    ArrayList<kut> arrayList = new ArrayList(paramList.size());
    for (kuw kuw : paramList) {
      if (!kuw.d()) {
        kut kut1 = new kut();
        kut1.a(kuw);
        arrayList.add(kut1);
      } 
    } 
    return arrayList;
  }
  
  public void a(kus paramkus) {
    this.a = paramkus;
  }
  
  public void a(kut paramkut) {
    a(paramkut.f());
    a(paramkut, false);
  }
  
  public void a(kut paramkut, boolean paramBoolean) {
    if (paramBoolean)
      a(paramkut.f()); 
    c(paramkut.e());
    a(paramkut.b());
    b(paramkut.c());
    a(paramkut.d());
    b(paramkut.a());
  }
  
  public void a(kuu paramkuu) {
    this.b = paramkuu;
  }
  
  public void a(kuw paramkuw) {
    a(paramkuw);
    c(false);
    a(kuu.GONE);
    b(kuu.CAMERA);
    b(false);
    a(false);
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public boolean a() {
    return this.d;
  }
  
  public kuu b() {
    return this.b;
  }
  
  public void b(kuu paramkuu) {
    this.c = paramkuu;
  }
  
  public void b(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public kuu c() {
    return this.c;
  }
  
  public void c(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public boolean d() {
    return this.e;
  }
  
  public boolean e() {
    return this.f;
  }
  
  public kus f() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kut.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */