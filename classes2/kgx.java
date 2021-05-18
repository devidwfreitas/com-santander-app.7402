import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import java.text.SimpleDateFormat;
import java.util.List;

public class kgx {
  public List<kgm> a;
  
  public kgm b;
  
  private kgv c;
  
  private kgn d = new kgn(this);
  
  private kgu e;
  
  public kgx(kgv paramkgv) {
    this.c = paramkgv;
    paramkgv.d();
    this.d.a();
  }
  
  public View.OnClickListener a() {
    return new kgy(this);
  }
  
  public AdapterView.OnItemLongClickListener a(ListView paramListView) {
    return new kgz(this, paramListView);
  }
  
  public void a(String paramString) {
    this.c.a(paramString);
    this.c.c();
  }
  
  public void a(List<kgm> paramList) {
    this.a = paramList;
    this.c.a(paramList);
    this.c.c();
  }
  
  public void a(kgm paramkgm) {
    String str1;
    String str2;
    String str3;
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("ddMMyy");
    try {
      str1 = simpleDateFormat2.format(simpleDateFormat1.parse(paramkgm.e()));
      str3 = simpleDateFormat2.format(simpleDateFormat1.parse(paramkgm.g()));
      str2 = simpleDateFormat3.format(simpleDateFormat1.parse(paramkgm.f()));
    } catch (Exception exception) {
      str1 = "";
      str3 = "";
      str2 = "";
    } 
    kgj kgj = new kgj();
    kgj.a(paramkgm.h());
    kgj.b(paramkgm.p());
    kgj.c(mzr.e());
    kgj.d("false");
    kgj.e(paramkgm.b());
    kgj.g(mzr.f());
    kgj.i(str1);
    kgj.k(str2);
    kgj.l(str3);
    kgj.m(paramkgm.j());
    kgj.n(paramkgm.k());
    kgj.p(paramkgm.m());
    kgj.s(paramkgm.n());
    kgj.w(paramkgm.q());
    kgj.x(paramkgm.r());
    kgj.D(paramkgm.u());
    this.c.a(3, kgj);
  }
  
  public void a(kgu paramkgu) {
    this.e = paramkgu;
  }
  
  public DialogInterface.OnClickListener b() {
    return new kha(this);
  }
  
  public void b(kgm paramkgm) {
    this.b = paramkgm;
  }
  
  public AdapterView.OnItemClickListener c() {
    return new khb(this);
  }
  
  public void d() {
    this.c.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kgx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */