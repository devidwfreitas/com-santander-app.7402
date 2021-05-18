import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CompoundButton;
import com.santander.app.contacorrente.domain.Conta;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.Vector;

public class kip {
  private static String d;
  
  private kio a;
  
  private kig b;
  
  private int c;
  
  private String e = "";
  
  private String f = "";
  
  private String g = "";
  
  private String h = "";
  
  private String i = "RecargaFragment";
  
  public kip(kio paramkio) {
    this.a = paramkio;
    this.b = new kig(this);
  }
  
  private void l() {
    if (n()) {
      this.a.e();
      khv khv = new khv();
      if (this.a.s()) {
        khv.a(this.a.n());
        khv.b(this.c);
        khv.b(this.a.p());
        khv.a(this.a.r());
        khv.c(this.a.q());
        khv.d(d);
        khv.a(true);
      } else {
        khv.a(false);
      } 
      this.b.a(khv);
      m();
      return;
    } 
    this.a.b("Os dados inseridos estão incorretos");
  }
  
  private void m() {
    String str;
    fvf fvf = this.b.b(this.c);
    fuu fuu = this.b.c(this.a.m());
    fos fos = this.b.d(this.a.o());
    String[] arrayOfString = fvf.f().split("\\|");
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd");
    try {
      if (fos.b().contains("-")) {
        str = simpleDateFormat2.format(simpleDateFormat3.parse(fos.b()));
      } else {
        str = simpleDateFormat2.format(simpleDateFormat1.parse(str.b()));
      } 
    } catch (Exception exception) {
      str = "";
    } 
    kid kid = new kid();
    kid.b(fuu.getAgencia());
    kid.f(fuu.getCuenta());
    kid.z("CC");
    kid.s(fvf.a());
    kid.t(fvf.b());
    kid.u(fvf.c());
    kid.x("10");
    kid.y("1030");
    kid.d(this.a.p());
    kid.o(this.a.q());
    kid.C(arrayOfString[this.a.n()]);
    if (this.a.o() == 1) {
      kid.c("true");
      kid.g(str);
      hau.a().a(true);
    } else {
      kid.c("false");
      hau.a().a(false);
    } 
    kid.i(str);
    kid.l("false");
    kid.w("false");
    this.b.a(kid);
  }
  
  private boolean n() {
    return (this.e.length() == 2 && this.g.length() == 2 && this.e.equals(this.g) && this.f.equals(this.h) && (this.f.length() == 8 || this.f.length() == 9));
  }
  
  public void a() {
    this.a.e();
    this.a.d();
    this.b.a();
    this.b.c();
  }
  
  public void a(int paramInt, Intent paramIntent) {
    if (paramInt == -1)
      try {
        Uri uri = paramIntent.getData();
        Cursor cursor = this.a.a().getContentResolver().query(uri, null, null, null, null);
        if (cursor != null && cursor.moveToFirst())
          if (cursor.getInt(cursor.getColumnIndex("has_phone_number")) == 1) {
            Map<String, String> map = khz.a(cursor.getString(cursor.getColumnIndex("data1")));
            String str1 = map.get("number");
            String str2 = map.get("ddd");
            this.a.a(str2, str1);
            this.a.b(str2, str1);
            if (str2.equals("")) {
              this.a.h();
              return;
            } 
          } else {
            this.a.a("", "");
            this.a.h();
            return;
          }  
      } catch (Exception exception) {
        this.a.a("", "");
        this.a.h();
      }  
  }
  
  public void a(String paramString) {
    this.a.b(paramString);
    this.a.f();
  }
  
  public void a(List<Conta> paramList) {
    this.a.a(paramList);
  }
  
  public void a(Vector<fqa> paramVector) {
    this.a.a(paramVector);
  }
  
  public void a(kic paramkic) {
    this.a.f();
    fvf fvf = this.b.b(this.c);
    paramkic.b = fvf.b();
    paramkic.d = fvf.a();
    paramkic.c = fvf.c();
    this.a.a("tipo_recarga", 0, paramkic);
  }
  
  public void b() {
    khv khv = this.b.d();
    if (khv != null && khv.e()) {
      khx khx = miq.C().f().c();
      this.c = khv.g();
      this.a.a(khv.a());
      a(((khs)khx.c().get(khv.g())).a());
      this.a.a(khv.f());
      this.a.a(khv.b(), khv.c());
      this.a.b(khv.b(), khv.c());
      this.b.b();
      this.a.a(khv.e());
      this.a.c();
    } 
    this.a.f();
  }
  
  public void b(Vector<fos> paramVector) {
    this.a.b(paramVector);
  }
  
  public View.OnClickListener c() {
    return new kiq(this);
  }
  
  public View.OnClickListener d() {
    return new kir(this);
  }
  
  public View.OnClickListener e() {
    return new kis(this);
  }
  
  public khj f() {
    return new kit(this);
  }
  
  public CompoundButton.OnCheckedChangeListener g() {
    return new kiu(this);
  }
  
  public TextWatcher h() {
    return new kiv(this);
  }
  
  public TextWatcher i() {
    return new kiw(this);
  }
  
  public TextWatcher j() {
    return new kix(this);
  }
  
  public TextWatcher k() {
    return new kiy(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kip.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */