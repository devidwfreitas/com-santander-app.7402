import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import br.com.santander.msgsdk.MSGSDK;
import com.santander.app.PagamentoFacturaCartoesActivity;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;
import com.santander.app.investimentos.presentation.MeusInvestimentosActivity;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;
import com.santander.app.transferencia.presentation.TransferenciasActivity;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;

public class ird implements ipt, irc {
  private irb a;
  
  private mip b;
  
  private Activity c;
  
  private SharedPreferences d;
  
  private SharedPreferences e;
  
  private ipq f;
  
  private jdf g;
  
  private ipp h;
  
  private boolean i = false;
  
  private boolean j = false;
  
  private boolean k = false;
  
  private boolean l;
  
  private String m;
  
  private Dialog n;
  
  private Dialog o;
  
  private gpe p;
  
  private int q = 0;
  
  public ird(irb paramirb, Activity paramActivity) {
    this.a = paramirb;
    this.b = (mip)miq.C();
    this.c = paramActivity;
    this.f = new ipu(paramActivity, this);
  }
  
  private boolean B() {
    return !this.b.f().s().d().isEmpty();
  }
  
  private boolean C() {
    return !this.b.f().s().b().isEmpty();
  }
  
  private void D() {
    this.b.f().e("2");
    this.b.f().y().c(Boolean.valueOf(false));
    this.b.f().y().b(Boolean.valueOf(false));
    this.b.f().y().a(Boolean.valueOf(false));
    this.b.k(true);
    this.a.n();
  }
  
  private void E() {
    MSGSDK.getInstance().init(bhv.h(), gnp.a().b(), mzr.m(), true, true);
    MSGSDK.getInstance().setTracking(new irg(this));
  }
  
  private void F() {
    this.a.p();
  }
  
  private Date a(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    try {
      return simpleDateFormat.parse(paramString);
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
      return null;
    } 
  }
  
  private void a(SharedPreferences paramSharedPreferences, String paramString1, String paramString2) {
    SharedPreferences.Editor editor = paramSharedPreferences.edit();
    editor.putString(paramString1, paramString2);
    editor.apply();
  }
  
  private void a(SharedPreferences paramSharedPreferences, String paramString, boolean paramBoolean) {
    SharedPreferences.Editor editor = paramSharedPreferences.edit();
    editor.putBoolean(paramString, paramBoolean);
    editor.apply();
  }
  
  private void b(String paramString) {
    this.m = paramString;
    e();
  }
  
  public void A() {
    if (!this.b.f().C().b("00000137") || mzr.d() == 8)
      return; 
    this.f.a(new iri(this));
    this.f.b(new irj(this));
  }
  
  public void a() {
    this.a.Y();
    this.l = true;
    if (this.a.X().b() != null && !miq.C().B())
      gkl.a(new irf(this)); 
    E();
  }
  
  public void a(Context paramContext) {
    SharedPreferences sharedPreferences;
    String str;
    if (this.b.f().C().b("00000101")) {
      sharedPreferences = paramContext.getSharedPreferences("avisoFinalAno", 0);
      str = (new SimpleDateFormat("dd/MM/yyyy")).format(Calendar.getInstance().getTime());
      if (TextUtils.isEmpty(sharedPreferences.getString("dataFinalAno", ""))) {
        a(sharedPreferences, "dataFinalAno", str);
        a(sharedPreferences, "bloquearAviso", false);
        F();
        return;
      } 
    } else {
      return;
    } 
    if (!sharedPreferences.getBoolean("bloquearAviso", false) && a(sharedPreferences.getString("dataFinalAno", "")).before(a(str))) {
      a(sharedPreferences, "dataFinalAno", str);
      F();
      return;
    } 
  }
  
  public void a(ActionBar paramActionBar) {
    if (this.b.c()) {
      switch (mzr.d()) {
        default:
          return;
        case 2:
        case 5:
          paramActionBar.setBackgroundDrawable(this.c.getResources().getDrawable(2130839159));
          return;
        case 3:
          paramActionBar.setBackgroundDrawable(this.c.getResources().getDrawable(2130839040));
          return;
        case 4:
          break;
      } 
      paramActionBar.setBackgroundDrawable(this.c.getResources().getDrawable(2130839156));
      return;
    } 
  }
  
  public void a(View paramView) {
    this.p = new irh(this, paramView, new gph());
    this.p.a();
  }
  
  public void a(ige paramige) {
    this.b.f().a(paramige.a());
    this.a.W();
    this.a.Y();
    this.l = true;
    if (this.a.X().b() != null && !miq.C().B())
      gkl.a(new ire(this)); 
    E();
  }
  
  public void a(ipp paramipp) {
    switch (irl.a[this.h.ordinal()]) {
      default:
        return;
      case 6:
        e();
        return;
      case 4:
        m();
        return;
      case 5:
        break;
    } 
    n();
  }
  
  public void a(jdf paramjdf) {
    this.a.af();
    this.g = paramjdf;
    this.a.a(this.g);
  }
  
  public void a(boolean paramBoolean) {
    if (this.b.f().q().a() != null && this.b.f().q().a().size() > 0) {
      SharedPreferences.Editor editor = this.d.edit();
      editor.putBoolean("state_carrossel_conta", paramBoolean);
      editor.commit();
      this.a.H().a(new gln((Context)this.c));
    } 
    if (!mzr.a() && this.b.f().u().a() != null && ((this.b.f().u().a().e() != null && this.b.f().u().a().e().c().equalsIgnoreCase("S")) || (this.b.f().u().a().f() != null && this.b.f().u().a().f().c().equalsIgnoreCase("S")) || this.b.f().u().a().a() != null)) {
      SharedPreferences.Editor editor = this.e.edit();
      editor.putBoolean("state_carrossel_emprestimos", paramBoolean);
      editor.commit();
      this.a.K().a(new gmm((Context)this.c, new LinkedList<Integer>()));
    } 
  }
  
  public void b() {
    switch (irl.a[this.h.ordinal()]) {
      default:
        return;
      case 1:
        this.a.aa();
        return;
      case 2:
        this.a.ab();
        return;
      case 3:
        this.a.ac();
        return;
      case 4:
        if (this.i) {
          m();
          return;
        } 
      case 5:
        if (this.j) {
          n();
          return;
        } 
      case 6:
        break;
    } 
    if (this.k) {
      e();
      return;
    } 
  }
  
  public void b(ipp paramipp) {
    this.h = paramipp;
    boolean bool = false;
    if (this.h.equals(ipp.POUPANCA_CARROSSEL_SELECTED) || this.h.equals(ipp.POUPANCA_MENU_ITEM)) {
      bool = this.b.f().q().c();
    } else if (this.h.equals(ipp.CARTOES_CARROSSEL_SELECTED) || this.h.equals(ipp.BOTAO_PAGAR_CONTA_HOME) || this.h.equals(ipp.BOTAO_PAGAR_FATURA_HOME) || this.h.equals(ipp.BOTAO_PARCELAR_FATURA_HOME)) {
      bool = this.b.f().s().i();
    } 
    if (bool) {
      b();
      return;
    } 
    this.f.a(paramipp);
  }
  
  public void b(jdf paramjdf) {
    this.a.ag();
  }
  
  public void c() {
    this.a.h();
  }
  
  public void d() {
    this.a.o();
  }
  
  public void e() {
    if (mzr.a()) {
      frq.d("Pagamentos_Pagamento_Home_Acao", "Pagamentos");
      this.a.w();
      return;
    } 
    if (this.b.f().s().i() || this.k) {
      frq.a("Pagamento", "Pagamentos");
      frq.d("Pagamentos_Pagamento_Home_Acao", "Pagamentos");
      PagamentosCodigoBarrasActivity.b = false;
      Intent intent = new Intent((Context)this.c, PagamentosCodigoBarrasActivity.class);
      intent.putExtra("codBarDeepLink", this.m);
      this.c.startActivity(intent);
      this.m = null;
      return;
    } 
    this.k = true;
    b(ipp.BOTAO_PAGAR_CONTA_HOME);
  }
  
  public void f() {
    if (!mzr.a()) {
      frq.a("Transferencia", "Transferencias");
      frq.d("Transferencia_Acao", "AcessoRapidoHome");
      Intent intent = new Intent((Context)this.c, TransferenciasActivity.class);
      this.c.startActivity(intent);
      return;
    } 
    frq.d("Transferencia_Acao", "AcessoRapidoHome");
    this.a.w();
  }
  
  public void g() {
    if (this.b.f().q().a() != null && this.b.f().q().a().size() > 0)
      this.a.x(); 
  }
  
  public void h() {
    this.a.y();
    this.a.P();
  }
  
  public void i() {
    this.a.z();
  }
  
  public void j() {
    if (mzr.d() != 8 && this.b.f().u().a() != null) {
      this.a.A();
      return;
    } 
  }
  
  public void k() {
    if (this.b.f().r().a() != null && this.b.f().r().a().size() > 0)
      this.a.B(); 
  }
  
  public void l() {
    this.d = this.c.getSharedPreferences("ContaPreferences", 0);
    this.d.getBoolean("state_carrossel_conta", false);
    this.e = this.c.getSharedPreferences("EmprestimoPreferences", 0);
    this.e.getBoolean("state_carrossel_emprestimos", false);
  }
  
  public void m() {
    if (mzr.a()) {
      frq.d("Cartoes_Home_Acao", "PagarFatura");
      this.a.w();
      return;
    } 
    if (this.b.f().s().i() || this.i) {
      if (!B()) {
        if (C()) {
          mxn.d(this.c, this.c.getString(2131296839));
          frq.d("Cartoes_Home_Acao", "PagarFatura");
          return;
        } 
        mxn.d(this.c, this.c.getString(2131298251));
        frq.d("Cartoes_Home_Acao", "PagarFatura");
        return;
      } 
      frq.a("Cartoes_PagamentoDeFatura", "Cartoes");
      frq.d("Cartoes_Home_Acao", "PagarFatura");
      Intent intent = new Intent((Context)this.c, PagamentoFacturaCartoesActivity.class);
      intent.putExtra("indexCartao", this.a.ai());
      this.c.startActivity(intent);
      return;
    } 
    this.i = true;
    b(ipp.BOTAO_PAGAR_FATURA_HOME);
  }
  
  public void n() {
    if (mzr.a()) {
      frq.d("Cartoes_Home_Acao", "ParcelarFatura");
      this.a.w();
      return;
    } 
    if (this.b.f().s().i() || this.j) {
      if (!B()) {
        if (C()) {
          mxn.d(this.c, this.c.getString(2131296839));
          frq.d("Cartoes_Home_Acao", "ParcelarFatura");
          return;
        } 
        mxn.d(this.c, this.c.getString(2131298251));
        frq.d("Cartoes_Home_Acao", "ParcelarFatura");
        return;
      } 
      frq.a("Fatura", "Cartoes");
      frq.d("Cartoes_Home_Acao", "ParcelarFatura");
      Intent intent = new Intent((Context)this.c, ParcelamentoFaturaActivity.class);
      intent.putExtra("indexCartao", this.a.ai());
      this.c.startActivity(intent);
      return;
    } 
    this.j = true;
    b(ipp.BOTAO_PARCELAR_FATURA_HOME);
  }
  
  public void o() {
    nba nba = new nba(this.b.f().y(), this.c.getApplicationContext());
    this.b.k(false);
    if (nba.a()) {
      if (!nba.h() && !nba.g().booleanValue()) {
        if (nba.p()) {
          this.b.f().e("2");
          this.b.f().y().d(Boolean.valueOf(false));
          this.a.u();
          return;
        } 
        if (nba.m()) {
          this.b.f().e("2");
          this.a.q();
          return;
        } 
        if (nba.l()) {
          this.b.f().e("2");
          this.b.f().y().b(Boolean.valueOf(false));
          this.a.r();
          return;
        } 
        if (nba.n()) {
          this.b.f().e("2");
          this.b.f().y().c().a(Boolean.valueOf(false));
          this.a.t();
          return;
        } 
        if (nba.j()) {
          this.b.f().e("2");
          this.a.g();
          return;
        } 
        if (nba.q()) {
          frq.d("Outros_ExecOtimizacao", this.b.f().y().a());
          this.b.f().e("2");
          this.a.v();
          return;
        } 
        if (nba.i()) {
          this.b.f().e("2");
          this.a.f();
          return;
        } 
        if (nba.c()) {
          this.b.f().e("2");
          this.a.j();
          return;
        } 
        if (nba.d()) {
          this.b.f().e("2");
          this.a.k();
          return;
        } 
        if (nba.e()) {
          this.b.f().e("2");
          this.a.a(this.b.f().y().b());
          return;
        } 
        if (nba.f()) {
          this.b.f().e("2");
          this.a.e();
          return;
        } 
        if (nba.o()) {
          this.b.f().e("2");
          this.b.f().y().e(Boolean.valueOf(false));
          this.a.i();
          return;
        } 
        if (nba.b()) {
          this.b.f().e("2");
          this.b.f().y().c(Boolean.valueOf(false));
          this.a.s();
          return;
        } 
        if (nba.k()) {
          D();
          return;
        } 
        D();
        return;
      } 
      this.b.k(true);
      this.b.f().e("1");
      this.a.n();
      this.a.U();
      this.f.a((Context)this.c, this.b.f().y().c().a(), this.b.f().k());
      this.f.b((Context)this.c, this.b.f().y().c().a(), this.b.f().k());
      return;
    } 
    this.b.f().e("2");
    this.b.f().y().d(Boolean.valueOf(false));
    if (nba.t()) {
      this.a.u();
      return;
    } 
    this.b.k(true);
    this.a.n();
  }
  
  public void p() {
    this.f.b();
  }
  
  public void q() {
    Intent intent = new Intent((Context)this.c, MeusInvestimentosActivity.class);
    this.c.startActivity(intent);
  }
  
  public void r() {
    Intent intent = new Intent((Context)this.c, MeusInvestimentosActivity.class);
    this.c.startActivity(intent);
  }
  
  public void s() {
    if (this.b.s() && !this.b.t())
      this.a.S(); 
  }
  
  public void t() {
    if (this.g == null) {
      this.a.ae();
      if (this.b.f().C().b("00000107")) {
        this.f.d();
        return;
      } 
      this.f.c();
      return;
    } 
    this.a.a(this.g);
  }
  
  public void u() {
    Uri uri = this.b.a();
    if (uri != null) {
      this.a.a(uri);
      this.b.a(null);
    } 
  }
  
  public void v() {
    if (nba.a(miq.C().f().A()) || miq.C().f().y().k().booleanValue())
      this.a.Z(); 
  }
  
  public void w() {
    if (this.l)
      this.a.Y(); 
    if (this.p != null)
      this.p.a(); 
  }
  
  public void x() {
    this.f.a();
  }
  
  public boolean y() {
    return (new ieu((Context)this.c)).a();
  }
  
  public void z() {
    if (miq.C().f().C().b("00000115")) {
      zs.a().a(gnz.a().d(), miq.C().f().i(), nab.a().f(), null, Boolean.valueOf(mzr.a()));
      (new lo()).b(new irk(this));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ird.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */