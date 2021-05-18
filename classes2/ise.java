import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import com.santander.app.MinhaConta;
import com.santander.app.geolocalizacao.service.GeolocalizacaoService;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.util.Iterator;

public class ise implements isd {
  private static final String a = "LoginInteractorImpl";
  
  private static final String b = "CheckVersionPrefs";
  
  private static final String c = "count";
  
  private itf d;
  
  private ism e;
  
  private mip f;
  
  private itn g;
  
  private ils h;
  
  private gwa i;
  
  public ise(itf paramitf, ism paramism) {
    this.d = paramitf;
    this.e = paramism;
    this.f = (mip)miq.C();
    this.g = new itp((Activity)paramism.getActivity());
    this.h = new ils((Activity)paramism.getActivity());
    this.i = new gwe();
  }
  
  private ilo a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, mzl parammzl) {
    naf naf = new naf();
    try {
      ilo ilo = new ilo();
      try {
        ilo.setConnUuid(miq.C().i());
        ilo.setTokenSessao(miq.C().j());
        if (parammzl != null) {
          if (!mzt.a(parammzl.p()))
            ilo.a(naf.b(parammzl.p().getBytes())); 
          if (!mzt.a(parammzl.u()))
            ilo.b(naf.b(parammzl.u().getBytes())); 
          if (!mzt.a(parammzl.n()))
            ilo.e(parammzl.n()); 
          if (!mzt.a(parammzl.d()))
            ilo.f(parammzl.d()); 
        } 
        ilo.c(paramString1);
        ilo.d(paramString2);
        ilo.i(paramString3);
        ilo.h(paramString4);
        ilo.g(paramString5);
        return ilo;
      } catch (Exception null) {
        ilo ilo1 = ilo;
      } 
    } catch (Exception exception) {
      paramString1 = null;
    } 
    Log.e("ERRO_CRYPTO", exception.getMessage());
    frq.d("Outros_Geolocalizacao_TentouEnviarGeo_Erro", exception.getMessage());
    return (ilo)paramString1;
  }
  
  private void a(Context paramContext, String paramString1, String paramString2) {
    if (paramString1 == null || paramString1.isEmpty())
      return; 
    gyy.a(paramContext, paramString1, paramString2);
  }
  
  private void b(Context paramContext, String paramString1, String paramString2) {
    if (paramString2 != null && !paramString2.isEmpty() && paramString1 != null && !paramString1.isEmpty()) {
      Iterator<gyv> iterator = gyy.a(paramContext, paramString2).iterator();
      while (true) {
        if (iterator.hasNext()) {
          gyv gyv = iterator.next();
          if (!gyv.a().toString().equals(paramString1))
            gyy.a(paramContext, gyv); 
          continue;
        } 
        return;
      } 
    } 
  }
  
  private boolean c(String paramString) {
    try {
      return nai.e(paramString);
    } catch (IllegalArgumentException illegalArgumentException) {
      return false;
    } 
  }
  
  private void f() {
    if (!((ConnectivityManager)MinhaConta.b().getSystemService("connectivity")).getNetworkInfo(1).isConnected())
      b(); 
  }
  
  private void g() {
    this.g.a(new isg(this));
  }
  
  private void h() {
    this.d.y().getSharedPreferences("CheckVersionPrefs", 0).edit().clear().apply();
  }
  
  private boolean i() {
    boolean bool = true;
    int i = 0;
    SharedPreferences sharedPreferences = this.d.y().getSharedPreferences("CheckVersionPrefs", 0);
    int j = sharedPreferences.getInt("count", 1);
    if (j != 1) {
      i = j + 1;
      bool = false;
    } 
    sharedPreferences.edit().putInt("count", i).apply();
    return bool;
  }
  
  private void j() {
    SharedPreferences.Editor editor = MinhaConta.b().getSharedPreferences("SovereignBrasilProfile", 0).edit();
    String str2 = this.f.f().i();
    String str1 = str2;
    if (str2.equals("VGUN"))
      str1 = "UN"; 
    if (this.f.f().e().booleanValue())
      str1 = "NC0"; 
    editor.putString("segmento", str1);
    editor.commit();
    boolean bool = MinhaConta.b().getResources().getBoolean(2131492872);
    if (bool)
      hau.a().d(Boolean.valueOf(bool)); 
    m();
    gnz.a().a(new isi(this));
  }
  
  private void k() {
    this.i.a(new isj(this));
  }
  
  private void l() {
    frq.a("Login");
    this.d.g();
    if (this.f.f().e().booleanValue()) {
      try {
        this.d.t();
      } catch (ParseException parseException) {
        Log.e("Error", parseException.getMessage());
      } 
    } else {
      p();
    } 
    this.d.j();
  }
  
  private void m() {
    String str = "";
    jqc jqc = new jqc();
    mwx mwx = this.f.f().l();
    if (mwx != null) {
      if (!jqc.a(mwx)) {
        if (jqc.b(mwx)) {
          str = "sta01";
        } else if (jqc.c(mwx)) {
          str = "sta10";
        } else if (jqc.d(mwx)) {
          str = "sta10";
        } 
      } else {
        str = "sta11";
      } 
    } else {
      str = "sta00";
    } 
    char c = str.toCharArray()[3];
    c = str.toCharArray()[4];
    if (this.f.f().y().b() != null || this.f.f().y().c() != null) {
      frq.e("CSO/ID Ativado", "Sim");
    } else {
      frq.e("CSO/ID Ativado", "Nao");
    } 
    if (this.f.b()) {
      str = "Consultivo";
    } else {
      str = "Transacional";
    } 
    frq.e("Modo de Login", String.valueOf(str));
    if (this.f.f().e().booleanValue()) {
      str = "Nao";
    } else {
      str = "Sim";
    } 
    frq.e("Correntista", String.valueOf(str));
  }
  
  private String n() {
    String str = this.g.b();
    if (!str.equalsIgnoreCase("")) {
      String str1 = str;
      try {
        str = nag.b(str);
        str1 = str;
        if ("".equalsIgnoreCase(str)) {
          str1 = str;
          return new String(Base64.decode(str.getBytes("UTF-8"), 0), "UTF-8");
        } 
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        Log.e("Error", unsupportedEncodingException.getMessage());
        return str1;
      } 
    } else {
      return "";
    } 
    return (String)unsupportedEncodingException;
  }
  
  private void o() {
    this.d.t();
  }
  
  private void p() {
    if (this.f.f().p().l().equalsIgnoreCase("N")) {
      q();
      return;
    } 
    this.d.v();
  }
  
  private void q() {
    if (naz.LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM.getValue().equals(this.f.f().y().a())) {
      this.f.f().e("2");
      this.d.x();
      return;
    } 
    if (r()) {
      this.d.w();
      return;
    } 
    e();
  }
  
  private boolean r() {
    return (new ieu(this.d.y())).a();
  }
  
  private void s() {
    this.f.f().e("2");
    this.f.f().y().c(Boolean.valueOf(false));
    this.f.f().y().b(Boolean.valueOf(false));
    this.f.f().y().a(Boolean.valueOf(false));
    this.f.k(true);
  }
  
  public void a() {
    this.g.c();
  }
  
  public void a(String paramString) {
    if (!c(paramString)) {
      this.d.b();
      return;
    } 
    fnx fnx = new fnx();
    fnx.a(paramString);
    try {
      frq.e("ID MBB NA", (new naf()).a(paramString));
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      Log.e("Error", noSuchAlgorithmException.toString());
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      frq.d("ID_MBB_NA_ERROR", unsupportedEncodingException.getMessage());
    } 
    try {
      (new fnu<fnp>(fnp.class)).a(this.e.getActivity().getBaseContext(), (Activity)this.e.getActivity(), fnx, new isf(this));
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
    } 
    this.d.p();
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    ilo ilo = a(paramString1, paramString2, paramString3, paramString4, paramString5, (new mzk((Activity)this.e.getActivity())).a());
    if (ilo.l())
      this.h.a(new isk(this), ilo); 
  }
  
  public void a(boolean paramBoolean, String paramString) {
    if (paramBoolean)
      this.g.a(paramString); 
  }
  
  public void b() {
    TelephonyManager telephonyManager = (TelephonyManager)MinhaConta.b().getSystemService("phone");
    this.d.b(telephonyManager.getNetworkOperatorName());
  }
  
  public void b(String paramString) {
    this.g.a(new ish(this), paramString);
  }
  
  public void c() {
    this.d.i();
    this.g.a(new isl(this));
  }
  
  public void d() {
    this.d.e();
  }
  
  public void e() {
    nba nba = new nba(this.f.f().y(), this.d.y());
    this.f.k(false);
    if (nba.a()) {
      if (!nba.h() && !nba.g().booleanValue()) {
        if (nba.p()) {
          this.f.f().e("2");
          this.f.f().y().d(Boolean.valueOf(false));
          this.d.z();
          return;
        } 
        if (nba.m()) {
          this.f.f().e("2");
          this.d.x();
          return;
        } 
        if (nba.l()) {
          this.f.f().e("2");
          this.f.f().y().b(Boolean.valueOf(false));
          this.d.A();
          return;
        } 
        if (nba.n()) {
          this.f.f().e("2");
          this.f.f().y().c().a(Boolean.valueOf(false));
          this.d.B();
          return;
        } 
        if (nba.j()) {
          this.f.f().e("2");
          this.d.C();
          return;
        } 
        if (nba.q()) {
          frq.d("Outros_ExecOtimizacao", this.f.f().y().a());
          this.f.f().e("2");
          this.d.D();
          return;
        } 
        if (nba.i()) {
          this.f.f().e("2");
          this.d.E();
          return;
        } 
        if (nba.c()) {
          this.f.f().e("2");
          this.d.F();
          return;
        } 
        if (nba.d()) {
          this.f.f().e("2");
          this.d.G();
          return;
        } 
        if (nba.e()) {
          this.f.f().e("2");
          this.d.a(this.f.f().y().b());
          return;
        } 
        if (nba.f()) {
          this.f.f().e("2");
          this.d.H();
          return;
        } 
        if (nba.o()) {
          this.f.f().e("2");
          this.f.f().y().e(Boolean.valueOf(false));
          this.d.I();
          return;
        } 
        if (nba.b()) {
          this.f.f().e("2");
          this.f.f().y().c(Boolean.valueOf(false));
          this.d.J();
          return;
        } 
        if (nba.k()) {
          s();
          this.d.k();
          return;
        } 
        s();
        this.d.k();
        return;
      } 
      this.f.k(true);
      this.f.f().e("1");
      a((Context)GeolocalizacaoService.a, this.f.f().y().c().a(), this.f.f().k());
      b((Context)GeolocalizacaoService.a, this.f.f().y().c().a(), this.f.f().k());
      this.d.k();
      return;
    } 
    this.f.f().e("2");
    this.f.f().y().d(Boolean.valueOf(false));
    if (nba.t()) {
      this.d.z();
    } else {
      this.f.k(true);
    } 
    this.d.k();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ise.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */