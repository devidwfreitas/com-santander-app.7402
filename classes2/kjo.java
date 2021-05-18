import android.app.DatePickerDialog;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import com.santander.app.contacorrente.domain.Conta;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Vector;

public class kjo {
  private static String c;
  
  private kjn a;
  
  private kjh b;
  
  private String d = "";
  
  private String e = "";
  
  private String f = "";
  
  private String g = "";
  
  private boolean h = false;
  
  private int i;
  
  private kgm j;
  
  private int k = 0;
  
  private String l = "RecargaProgramadaFragment";
  
  private fvn m;
  
  public kjo(kjn paramkjn) {
    this.a = paramkjn;
    this.b = new kjh(this);
  }
  
  private void o() {
    String str1 = nak.a(new Date(), "dd/MM/yyyy");
    String str2 = this.a.u();
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd/MM/yyyy", new Locale("pt", "BR"));
    SimpleDateFormat simpleDateFormat1 = simpleDateFormat2;
    if (str1 != null) {
      simpleDateFormat1 = simpleDateFormat2;
      if (str1.contains("-"))
        simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd", new Locale("pt", "BR")); 
    } 
    try {
      Calendar calendar2 = Calendar.getInstance();
      if (str2.equalsIgnoreCase("")) {
        calendar2.setTime(simpleDateFormat1.parse(str1));
        calendar2.add(5, 1);
      } else {
        calendar2.setTime(simpleDateFormat1.parse(str2));
      } 
      Calendar calendar1 = khz.a(calendar2);
      this.a.c(nak.a(calendar1.getTime(), "dd/MM/yyyy"));
      switch (this.a.q()) {
        case 0:
          calendar1.add(5, 7);
          break;
        case 1:
          calendar1.add(2, 1);
          break;
      } 
      calendar1 = khz.a(calendar1);
      this.a.d(nak.a(calendar1.getTime(), "dd/MM/yyyy"));
      return;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
      return;
    } 
  }
  
  private DatePickerDialog.OnDateSetListener p() {
    return new kjt(this);
  }
  
  private DatePickerDialog.OnDateSetListener q() {
    return new kju(this);
  }
  
  public View.OnClickListener a() {
    return new kjp(this);
  }
  
  public void a(int paramInt) {
    this.i = paramInt;
    this.b.c(paramInt);
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
              this.a.j();
              return;
            } 
          } else {
            this.a.a("", "");
            this.a.j();
            return;
          }  
      } catch (Exception exception) {
        this.a.a("", "");
        this.a.j();
      }  
  }
  
  public void a(fvn paramfvn) {
    this.b.a();
    this.b.b();
    this.m = paramfvn;
    if (paramfvn != null) {
      boolean bool;
      o();
      this.b.a(paramfvn.D());
      this.a.a(paramfvn.c(), paramfvn.m());
      this.a.a(paramfvn.D());
      kjn kjn1 = this.a;
      if (paramfvn.t().equalsIgnoreCase("s")) {
        bool = false;
      } else {
        bool = true;
      } 
      kjn1.b(bool);
      this.a.a(paramfvn.u().equalsIgnoreCase("true"));
      this.a.b();
    } 
  }
  
  public void a(String paramString) {
    this.a.b(paramString);
  }
  
  public void a(List<Conta> paramList) {
    this.a.a(paramList);
  }
  
  public void a(Vector<fqa> paramVector) {
    this.a.a(paramVector);
    if (this.j != null)
      this.b.a(this.j.u(), this.i); 
    if (this.m != null)
      this.b.a(this.m.y(), this.i); 
    this.a.b();
    this.a.j();
  }
  
  public void a(kgm paramkgm) {
    boolean bool = true;
    this.b.a();
    this.b.b();
    this.j = paramkgm;
    this.a.y();
    this.a.x();
    this.a.z();
    this.a.c(this.j.g());
    this.a.d(this.j.f());
    this.a.a(this.j.p());
    this.a.a(this.j.b().substring(1), this.j.w());
    kjn kjn1 = this.a;
    if (paramkgm.r().equalsIgnoreCase("s"))
      bool = false; 
    kjn1.b(bool);
    this.a.a(paramkgm.q().equalsIgnoreCase("true"));
    this.b.a(paramkgm.p());
    this.a.b();
  }
  
  public void a(kic paramkic) {
    String[] arrayOfString;
    if (!paramkic.g().equalsIgnoreCase("")) {
      arrayOfString = paramkic.g().split("\\|");
      this.a.b(arrayOfString[1]);
    } else {
      String str;
      fvf fvf = this.b.a(this.i);
      ((kic)arrayOfString).a = fvf.d();
      if (this.a.q() == 0) {
        str = "S";
      } else {
        str = "M";
      } 
      ((kic)arrayOfString).e = str;
      ((kic)arrayOfString).b = fvf.b();
      ((kic)arrayOfString).d = fvf.a();
      ((kic)arrayOfString).c = fvf.c();
      this.a.a(1, (kic)arrayOfString);
    } 
    this.a.g();
  }
  
  public khj b() {
    return new kjv(this);
  }
  
  public void b(int paramInt) {
    this.a.a(paramInt);
  }
  
  public void b(Vector<fqa> paramVector) {
    this.a.b(paramVector);
    o();
  }
  
  public View.OnClickListener c() {
    return new kjw(this);
  }
  
  public View.OnClickListener d() {
    return new kjx(this);
  }
  
  public CompoundButton.OnCheckedChangeListener e() {
    return new kjy(this);
  }
  
  public TextWatcher f() {
    return new kjz(this);
  }
  
  public TextWatcher g() {
    return new kka(this);
  }
  
  public TextWatcher h() {
    return new kkb(this);
  }
  
  public TextWatcher i() {
    return new kkc(this);
  }
  
  public nez j() {
    return new kjq(this);
  }
  
  public View.OnClickListener k() {
    return new kjr(this);
  }
  
  public View.OnClickListener l() {
    return new kjs(this);
  }
  
  public void m() {
    String str1;
    String str2;
    String str3;
    this.a.f();
    fvf fvf = this.b.a(this.i);
    fuu fuu = this.b.b(this.a.o());
    String[] arrayOfString = fvf.f().split("\\|");
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("ddMMyy");
    try {
      str1 = simpleDateFormat2.format(new Date());
      str3 = simpleDateFormat2.format(simpleDateFormat1.parse(this.a.u()));
      str2 = simpleDateFormat3.format(simpleDateFormat1.parse(this.a.v()));
    } catch (Exception exception) {
      str1 = "";
      str3 = "";
      str2 = "";
    } 
    kid kid = new kid();
    kid.b(fuu.getAgencia());
    kid.c("false");
    kid.d(this.a.r());
    kid.f(fuu.getCuenta());
    kid.h(str3);
    kid.i(str1);
    kid.j(str2);
    kid.k(str3);
    kid.l("false");
    kid.o(this.a.s());
    kid.s(fvf.a());
    kid.t(fvf.b());
    kid.u(fvf.c());
    if (this.a.q() == 0) {
      str1 = "S";
    } else {
      str1 = "M";
    } 
    kid.v(str1);
    if (this.a.w()) {
      str1 = "true";
    } else {
      str1 = "false";
    } 
    kid.w(str1);
    kid.C(arrayOfString[this.a.p()]);
    this.b.a(kid);
  }
  
  public void n() {
    String str1;
    String str2;
    String str3;
    fvf fvf = this.b.a(this.i);
    fuu fuu = this.b.b(this.a.o());
    String[] arrayOfString = fvf.f().split("\\|");
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("ddMMyy");
    try {
      str1 = simpleDateFormat2.format(new Date());
      str3 = simpleDateFormat2.format(simpleDateFormat1.parse(this.a.u()));
      str2 = simpleDateFormat3.format(simpleDateFormat1.parse(this.a.v()));
    } catch (Exception exception) {
      str1 = "";
      str3 = "";
      str2 = "";
    } 
    kid kid = new kid();
    kid.a(fvf.d());
    kid.b(fuu.getAgencia());
    kid.c(this.j.a());
    kid.d(this.a.r());
    kid.f(fuu.getCuenta());
    kid.h(str3);
    kid.i(str1);
    kid.j(str2);
    kid.k(str3);
    kid.l(this.j.j());
    kid.p(this.j.n());
    kid.q(this.j.n());
    kid.r(this.j.n());
    kid.o(this.a.s());
    kid.s(fvf.a());
    kid.t(fvf.b());
    kid.u(fvf.c());
    if (this.a.q() == 0) {
      str1 = "S";
    } else {
      str1 = "M";
    } 
    kid.v(str1);
    if (this.a.w()) {
      str1 = "true";
    } else {
      str1 = "false";
    } 
    kid.w(str1);
    kid.C(arrayOfString[this.a.p()]);
    this.a.a(2, kid);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */