import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class hmp implements hlx, hmo {
  private static final int a = 1;
  
  private static final int b = 2;
  
  private int c;
  
  private int d;
  
  @Nullable
  private hmk e;
  
  private hlv f;
  
  private hxl g;
  
  private boolean h;
  
  private hnk i;
  
  public hmp(@NonNull hmk paramhmk) {
    this.e = paramhmk;
    this.f = hly.a();
    k();
  }
  
  private void a(int paramInt) {
    if (this.e == null)
      return; 
    this.e.a(this.i);
    switch (paramInt) {
      default:
        return;
      case 1:
        this.e.f(this.g);
        return;
      case 4:
        this.e.h(this.g);
        return;
      case 5:
        this.e.k(this.g);
        return;
      case 2:
        this.e.i(this.g);
        return;
      case 6:
        this.e.j(this.g);
        return;
      case 3:
        this.e.g(this.g);
        return;
      case 7:
        break;
    } 
    this.e.l(this.g);
  }
  
  private void k() {
    if (this.e != null) {
      Intent intent = this.e.getIntent();
      if (intent != null) {
        this.h = intent.getBooleanExtra("EXTRA_VALID_AVERBATION", false);
        this.g = (hxl)intent.getSerializableExtra("EXTRA_CANCELAVEL");
        this.i = new hnk(this.g);
        return;
      } 
    } 
  }
  
  public void a() {
    if (this.e != null) {
      this.c = 1;
      this.d = this.g.a();
      d();
      if (this.h) {
        i();
        return;
      } 
    } 
  }
  
  public void a(String paramString) {
    if (this.e == null)
      return; 
    this.e.e();
    ArrayList<hmq> arrayList = new ArrayList();
    arrayList.add(new hmq(this, paramString));
    this.e.a((List)arrayList);
  }
  
  public void b() {
    this.e = null;
  }
  
  public void b(String paramString) {
    if (this.e == null)
      return; 
    this.e.e();
  }
  
  public void c(String paramString) {
    if (this.e == null)
      return; 
    this.g.a(paramString);
  }
  
  public boolean c() {
    return this.g.y();
  }
  
  public void d() {
    if (this.e != null) {
      if (this.d == 11) {
        this.e.d(this.g);
        a(this.g.b());
        e();
        return;
      } 
      if (this.d == 10) {
        this.e.e(this.g);
        a(this.g.b());
        return;
      } 
    } 
  }
  
  public void e() {
    if (this.e == null)
      return; 
    try {
      this.e.d();
      this.f.a(this);
      return;
    } catch (Exception exception) {
      this.e.e();
      Log.e(hmp.class.getSimpleName(), exception.getMessage());
      return;
    } 
  }
  
  public void f() {
    if (this.e == null)
      return; 
    if (this.h) {
      this.c = 1;
    } else {
      this.c = 2;
    } 
    this.e.b();
  }
  
  public void g() {
    if (this.e == null)
      return; 
    this.f.a(this.g, new hmr(this));
  }
  
  public void h() {
    if (this.e == null)
      return; 
    if (this.c == 2 && this.d == 10) {
      this.e.e(this.g);
    } else if (this.c == 2 && this.d == 11) {
      this.e.d(this.g);
    } else if (this.c == 1) {
      this.e.g();
    } 
    this.c = 1;
  }
  
  public void i() {
    if (this.e != null) {
      if (this.d == 10) {
        this.e.a(this.g);
        return;
      } 
      if (this.d == 11) {
        if (this.g.e() && this.c == 1) {
          f();
          return;
        } 
        this.e.a(this.g);
        return;
      } 
    } 
  }
  
  public void j() {
    if (this.e == null)
      return; 
    this.e.a(this.g);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hmp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */