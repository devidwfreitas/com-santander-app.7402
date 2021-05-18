import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

public class jix implements jfi, jiw {
  private Activity a;
  
  private jhk b;
  
  private jdf c;
  
  private jfh d;
  
  private jdm e;
  
  private jdm f;
  
  private String g;
  
  private jdq h;
  
  private String i;
  
  public jix(jhk paramjhk) {
    this.b = paramjhk;
    this.a = (Activity)paramjhk;
    this.d = new jfj(this.a, this);
  }
  
  private List<jdl> a(List<jdl> paramList) {
    ArrayList<jdl> arrayList = new ArrayList();
    for (jdl jdl : paramList) {
      if (jdl.e())
        arrayList.add(jdl); 
    } 
    return arrayList;
  }
  
  public void a() {
    if (this.e == null) {
      this.d.a();
      return;
    } 
    if (this.e.d() != null && this.e.d().size() > 0) {
      this.b.a(this.e, jem.MEUS_FUNDOS);
      if (this.g.contains("R$")) {
        this.b.a(this.g, this.i);
        return;
      } 
      this.b.a(naj.f(this.g), this.i);
      return;
    } 
    this.b.a((String)null, (String)null);
  }
  
  public void a(String paramString) {
    this.g = paramString;
  }
  
  public void a(jdm paramjdm) {
    this.f = paramjdm;
    paramjdm.a(a(paramjdm.d()));
    this.b.a(this.f, jem.TODOS_FUNDOS);
  }
  
  public void a(jdo paramjdo) {}
  
  public void a(jdq paramjdq) {
    this.h = paramjdq;
    this.b.a(this.h);
    this.b.a(this.g, this.i);
  }
  
  public void a(jdv paramjdv) {
    if (this.f == null || paramjdv != null) {
      this.d.a(paramjdv);
      return;
    } 
    this.b.a(this.f, jem.TODOS_FUNDOS);
  }
  
  public void b() {
    this.d.b();
  }
  
  public void b(jdm paramjdm) {}
  
  public void b(jdo paramjdo) {}
  
  public void b(jdq paramjdq) {}
  
  public void c() {
    if (this.h == null) {
      this.d.c();
      return;
    } 
    this.b.a(this.h);
  }
  
  public void c(jdm paramjdm) {
    String str = null;
    this.e = paramjdm;
    if (this.e.d() != null && this.e.d().size() > 0) {
      if (paramjdm.c() != null) {
        str1 = naj.f(paramjdm.c());
      } else {
        str1 = null;
      } 
      this.i = str1;
      String str1 = str;
      if (paramjdm.b() != null)
        str1 = naj.f(paramjdm.b()); 
      this.g = str1;
      this.b.a(this.e, jem.MEUS_FUNDOS);
      this.b.a(this.g, this.i);
      return;
    } 
    this.b.a((String)null, (String)null);
  }
  
  public void d(jdm paramjdm) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */