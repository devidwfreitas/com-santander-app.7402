import android.animation.ValueAnimator;
import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.support.annotation.StringRes;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.santander.app.MinhaConta;

public class itg implements itf {
  private static final String a = "vivo";
  
  private static final String b = "claro";
  
  private itc c;
  
  private boolean d = false;
  
  private boolean e = false;
  
  private int f = 0;
  
  private final int g = 180;
  
  private int h = 0;
  
  private int i;
  
  private String j = "";
  
  private isd k;
  
  private boolean l = true;
  
  private boolean m;
  
  private String n = "";
  
  private int o;
  
  private mip p = (mip)miq.C();
  
  private LocationManager q;
  
  private LocationListener r;
  
  private boolean s;
  
  public itg(itc paramitc) {
    this.c = paramitc;
    this.s = true;
    this.q = (LocationManager)this.c.getContext().getSystemService("location");
    this.r = N();
    this.k = new ise(this, this.c.q());
    irw.a().a(L());
  }
  
  private irx L() {
    return new ith(this);
  }
  
  private void M() {
    if (!"".equals(this.j))
      h(); 
  }
  
  private LocationListener N() {
    return new ilq(O());
  }
  
  private foh O() {
    return new itm(this);
  }
  
  private void a(float paramFloat1, float paramFloat2) {
    ValueAnimator valueAnimator = ValueAnimator.ofFloat(new float[] { paramFloat1, paramFloat2 });
    valueAnimator.setDuration(300L);
    valueAnimator.addUpdateListener(new itj(this));
    valueAnimator.start();
  }
  
  private void a(int paramInt1, int paramInt2) {
    ValueAnimator valueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
    valueAnimator.setDuration(300L);
    valueAnimator.addUpdateListener(new iti(this));
    valueAnimator.start();
  }
  
  private void b(int paramInt1, int paramInt2) {
    ValueAnimator valueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
    valueAnimator.setDuration(300L);
    valueAnimator.addUpdateListener(new itk(this));
    valueAnimator.addListener(new itl(this));
    valueAnimator.start();
  }
  
  private void e(String paramString) {
    ieu ieu = new ieu(MinhaConta.b());
    if (ieu.a(paramString) && ieu.b()) {
      this.c.w();
      this.c.a(true);
      this.c.a(MinhaConta.b().getResources().getString(2131297463), 2131427633);
      return;
    } 
    this.c.a(true);
    if (this.p.f().e() != null && this.p.f().e().booleanValue()) {
      this.c.a(MinhaConta.b().getResources().getString(2131297465), 2131427633);
      return;
    } 
    this.c.a(MinhaConta.b().getResources().getString(2131297464), 2131427633);
  }
  
  private String f(String paramString) {
    if (paramString != null)
      try {
        return paramString.replaceAll("[^0-9*]", "");
      } catch (NullPointerException nullPointerException) {
        Log.e("UNMASK", nullPointerException.getMessage());
        frq.d("Outros_Login_Tratamento_Excecao", "unmask() " + nullPointerException.getMessage());
        return "";
      }  
    return "";
  }
  
  public void A() {
    this.c.F();
  }
  
  public void B() {
    this.c.G();
  }
  
  public void C() {
    this.c.H();
  }
  
  public void D() {
    this.c.I();
  }
  
  public void E() {
    this.c.J();
  }
  
  public void F() {
    this.c.K();
  }
  
  public void G() {
    this.c.L();
  }
  
  public void H() {
    this.c.M();
  }
  
  public void I() {
    this.c.N();
  }
  
  public void J() {
    this.c.O();
  }
  
  public void K() {
    this.k.e();
  }
  
  public void a() {
    if (this.s)
      f(); 
    this.s = true;
  }
  
  public void a(@StringRes int paramInt) {
    this.c.g(paramInt);
  }
  
  public void a(View paramView) {
    this.c.c();
    this.c.e();
  }
  
  public void a(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    switch (paramKeyEvent.getKeyCode()) {
      default:
        return;
      case 67:
        if (paramKeyEvent.getAction() == 0) {
          if (paramView.getId() == 2131757494)
            if (this.c.g().length() == 0) {
              f();
              return;
            }  
          if (this.c.f().contains("*")) {
            this.j = "";
            this.c.a("");
            return;
          } 
        } 
      case 66:
        break;
    } 
    if (paramKeyEvent.getAction() == 1) {
      a(false);
      return;
    } 
  }
  
  public void a(View paramView, MotionEvent paramMotionEvent) {
    boolean bool = false;
    int i = (int)paramMotionEvent.getRawY();
    this.c.b(false);
    this.c.a(false);
    this.c.r();
    switch (paramMotionEvent.getAction()) {
      default:
        return;
      case 0:
        this.f = (int)paramMotionEvent.getRawY();
        this.h = this.c.j() - this.c.m();
        return;
      case 1:
        if (!this.e) {
          frq.d("Login_Acao", "SelecionarAcessar");
          if (this.d) {
            a(this.c.i(), 0.0F);
            b(this.c.l(), this.c.m());
            return;
          } 
          a(this.c.i(), 180.0F);
          b(this.c.l(), this.c.j());
          return;
        } 
        if (this.d) {
          if (this.c.l() >= this.c.j() - this.c.j() / 4) {
            a(this.c.i(), 180.0F);
            b(this.c.l(), this.c.j());
            return;
          } 
          a(this.c.i(), 0.0F);
          b(this.c.l(), this.c.m());
          return;
        } 
        if (this.c.l() >= this.c.j() / 4) {
          a(this.c.i(), 180.0F);
          b(this.c.l(), this.c.j());
          return;
        } 
        a(this.c.i(), 0.0F);
        b(this.c.l(), this.c.m());
        return;
      case 2:
        break;
    } 
    if (this.f > this.c.m() / 2 + i || this.f < i - this.c.m() / 2)
      bool = true; 
    this.e = bool;
    i = this.c.j() - i + this.c.m() / 2;
    if (i >= this.c.m())
      this.c.f(i); 
    this.i = (i - this.c.m()) * 100 / (this.h - this.c.m());
    if (this.i <= 100 && this.i >= 0) {
      this.c.a((this.i * 180 / 100));
      return;
    } 
  }
  
  public void a(View paramView, boolean paramBoolean) {
    if (this.l && paramBoolean) {
      f();
      this.c.b(true);
    } 
  }
  
  public void a(fvu paramfvu) {
    this.c.c();
    this.c.a(paramfvu);
  }
  
  public void a(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    String str2;
    if (paramInt2 == 13 && this.l)
      f(); 
    if (paramCharSequence.length() > 0) {
      str2 = f(paramCharSequence.toString());
      if (this.m) {
        this.n = str2;
        this.m = false;
        return;
      } 
    } else {
      return;
    } 
    char[] arrayOfChar = "###.###.###-##".toCharArray();
    int i = arrayOfChar.length;
    paramInt3 = 0;
    String str1 = "";
    for (paramInt2 = 0;; paramInt2++) {
      if (paramInt2 < i) {
        char c = arrayOfChar[paramInt2];
        if ((c != '#' && str2.length() > this.n.length()) || (c != '#' && str2.length() < this.n.length() && str2.length() != paramInt3)) {
          str1 = str1 + c;
        } else {
          try {
            String str = str1 + str2.charAt(paramInt3);
            str1 = str;
            paramInt3++;
            paramInt2++;
            continue;
          } catch (Exception exception) {
            break;
          } 
        } 
      } else {
        break;
      } 
    } 
    this.m = true;
    if (paramCharSequence.toString().contains("*") && paramInt1 == 13) {
      this.j = "";
      this.c.a("");
      this.c.d(0);
      return;
    } 
    this.c.a(str1);
    this.c.d(str1.length());
  }
  
  public void a(String paramString) {
    this.c.c();
    this.c.b(paramString);
  }
  
  public void a(mwx parammwx) {
    this.c.a(parammwx);
  }
  
  public void a(boolean paramBoolean) {
    if (!myz.b(MinhaConta.b())) {
      this.c.d(this.c.getContext().getString(2131298458));
      return;
    } 
    if (this.l) {
      String str;
      if (paramBoolean) {
        String str1 = miq.C().f().k() + miq.C().f().j();
        try {
          naf naf = new naf();
          str1 = naf.a(str1);
          str = "99|" + naf.b(str1.getBytes("UTF-8"));
          frq.e("Metodo de Login", "Biometria");
        } catch (Exception exception) {
          str = "";
        } 
      } else {
        frq.e("Metodo de Login", "Senha");
        str = this.c.g();
      } 
      if (str.length() > 0) {
        this.c.a();
        this.k.b(str);
      } else {
        this.c.d("Informe a senha.");
      } 
    } else {
      h();
    } 
    frq.d("Login_Acao", "BotaoContinuarLogin");
  }
  
  public void a(boolean paramBoolean, String paramString) {
    this.c.c(paramBoolean);
    if (paramBoolean && paramString != null) {
      this.j = f(paramString);
      StringBuilder stringBuilder = (new StringBuilder(paramString)).replace(4, 11, "***.***");
      this.c.a(stringBuilder.toString());
      frq.e("Guardar CPF", "Sim");
      return;
    } 
    frq.e("Guardar CPF", "Nao");
  }
  
  public void b() {
    this.c.n();
  }
  
  public void b(int paramInt) {
    this.c.h(paramInt);
  }
  
  public void b(View paramView) {
    this.c.c();
    this.c.a("", "");
  }
  
  public void b(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    if (this.c.g().length() == 0)
      this.c.r(); 
  }
  
  public void b(String paramString) {
    if (paramString.toLowerCase().contains("vivo") || paramString.toLowerCase().contains("claro"))
      this.c.e(MinhaConta.b().getResources().getString(2131297534)); 
  }
  
  public void b(boolean paramBoolean) {
    this.s = paramBoolean;
  }
  
  public void c() {
    this.c.c();
    this.c.d();
  }
  
  public void c(String paramString) {
    this.c.f(paramString);
  }
  
  public String d() {
    return this.c.g();
  }
  
  public void d(String paramString) {
    this.c.g(paramString);
    if (!"".equals(this.c.v()))
      a(true, this.c.v()); 
    M();
  }
  
  public void e() {
    this.c.a(2131298103);
    a(0, this.c.h());
    this.c.a(false);
    this.l = true;
    e(this.c.f());
  }
  
  public void f() {
    if (this.l) {
      a(this.c.h(), 0);
      this.c.c("");
      this.c.d(this.c.f().length());
      this.c.a(2131298101);
      this.l = false;
      return;
    } 
    b(this.c.l(), this.c.m());
    a(this.c.i(), 0.0F);
  }
  
  public void g() {
    if (this.c.k()) {
      String str;
      isd isd1 = this.k;
      boolean bool = this.c.k();
      if (this.j.isEmpty()) {
        str = this.c.f();
      } else {
        str = this.j;
      } 
      isd1.a(bool, f(str));
      return;
    } 
    this.k.a();
  }
  
  public void h() {
    String str = this.c.f();
    if (str.length() == 14) {
      str = f(str);
      isd isd1 = this.k;
      if (!this.j.isEmpty())
        str = this.j; 
      isd1.a(str);
      return;
    } 
    b();
  }
  
  public void i() {
    this.c.a();
  }
  
  public void j() {
    this.c.c();
  }
  
  public void k() {
    q();
    this.c.o();
  }
  
  public void l() {
    q();
    this.c.p();
  }
  
  public void m() {
    if (this.d) {
      f();
      this.c.b(true);
      return;
    } 
    this.c.u();
  }
  
  public void n() {
    if ((new ieu(MinhaConta.b())).b())
      this.c.x(); 
  }
  
  public void o() {
    if ((new ieu(MinhaConta.b())).b())
      this.c.y(); 
  }
  
  public void p() {
    this.c.r();
  }
  
  public void q() {
    if (ContextCompat.checkSelfPermission(this.c.getContext(), "android.permission.ACCESS_COARSE_LOCATION") == 0 && this.q.isProviderEnabled("gps")) {
      this.q.requestLocationUpdates("network", 0L, 0.0F, this.r);
      return;
    } 
  }
  
  public void r() {
    this.k.c();
  }
  
  public void s() {
    this.c.z();
  }
  
  public void t() {
    this.c.A();
  }
  
  public void u() {
    this.k.d();
  }
  
  public void v() {
    this.c.B();
  }
  
  public void w() {
    this.c.C();
  }
  
  public void x() {
    this.c.D();
  }
  
  public Context y() {
    return this.c.getContext();
  }
  
  public void z() {
    this.c.E();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */