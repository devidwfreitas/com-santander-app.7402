import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.URLUtil;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;
import com.santander.app.components.view.cardLayout.CardLayout;
import com.santander.app.emprestimo.acordo.presentation.AcordoSimulacaoActivity;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;
import com.santander.app.investimentos.presentation.MeusInvestimentosActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import java.util.ArrayList;

public class gwt implements gyf {
  private gxu a;
  
  private Activity b;
  
  private CardLayout c;
  
  private CardLayout d;
  
  private CardLayout e;
  
  private gww f;
  
  private Dialog g;
  
  private gyo h;
  
  private boolean i;
  
  private int j;
  
  public gwt(Activity paramActivity, CardLayout paramCardLayout1, CardLayout paramCardLayout2, CardLayout paramCardLayout3, gww paramgww) {
    this.b = paramActivity;
    this.c = paramCardLayout1;
    this.d = paramCardLayout2;
    this.e = paramCardLayout3;
    this.f = paramgww;
    this.j = 3;
    this.a = new gxt(this, paramActivity, paramgww);
    this.a.b();
    this.a.a();
  }
  
  public gwt(Activity paramActivity, CardLayout paramCardLayout, gww paramgww) {
    this.b = paramActivity;
    this.c = paramCardLayout;
    this.f = paramgww;
    this.j = 1;
    this.a = new gxt(this, paramActivity, paramgww);
    this.a.b();
    this.a.a();
  }
  
  private void g() {
    Intent intent = new Intent((Context)this.b, AcordoSimulacaoActivity.class);
    intent.setFlags(67108864);
    this.b.startActivity(intent);
  }
  
  private void h() {
    Intent intent = new Intent((Context)this.b, CPSimulacaoActivity.class);
    intent.setFlags(67108864);
    this.b.startActivity(intent);
  }
  
  private void i() {
    Intent intent = new Intent((Context)this.b, MeusInvestimentosActivity.class);
    intent.setFlags(67108864);
    this.b.startActivity(intent);
  }
  
  private void j() {
    Intent intent = new Intent((Context)this.b, Poupanca_posicaoconsolidadaActivity.class);
    intent.setFlags(67108864);
    this.b.startActivity(intent);
  }
  
  public void a() {
    h();
  }
  
  public void a(int paramInt) {
    this.c.setNumberOfDisplayedCards(paramInt);
    if (this.j == 3) {
      this.d.setNumberOfDisplayedCards(paramInt);
      this.e.setNumberOfDisplayedCards(paramInt);
    } 
  }
  
  public void a(Intent paramIntent) {
    this.b.startActivity(paramIntent);
  }
  
  public void a(gsz paramgsz) {
    this.c.setContractor(paramgsz);
    if (this.j == 3) {
      this.d.setContractor(paramgsz);
      this.e.setContractor(paramgsz);
    } 
  }
  
  public void a(gta paramgta) {
    this.c.a(paramgta);
    if (this.j == 3) {
      this.d.a(paramgta);
      this.e.a(paramgta);
    } 
  }
  
  public void a(gxa paramgxa) {
    if (this.h != null)
      this.h.a(paramgxa); 
  }
  
  public void a(gyo paramgyo) {
    this.h = paramgyo;
  }
  
  public void a(Boolean paramBoolean) {
    this.i = paramBoolean.booleanValue();
  }
  
  public void a(Class paramClass) {
    this.b.startActivity(new Intent((Context)this.b, paramClass));
  }
  
  public void a(ArrayList<gta> paramArrayList) {
    this.c.a();
    this.c.a(paramArrayList);
    if (this.j == 3) {
      this.d.a();
      this.e.a();
      this.d.a(paramArrayList);
      this.e.a(paramArrayList);
    } 
  }
  
  public void b() {
    g();
  }
  
  public void b(gta paramgta) {
    String str1;
    String str2 = paramgta.b();
    if (!URLUtil.isValidUrl(str2))
      return; 
    if (str2.contains("santanderpf://deeplink")) {
      hbr.a().a((Context)this.b, Uri.parse(paramgta.b()));
      return;
    } 
    Activity activity = this.b;
    gwu gwu = new gwu(this, paramgta);
    gwv gwv = new gwv(this);
    if (miq.C().s()) {
      str1 = this.b.getResources().getString(2131296564);
    } else {
      str1 = this.b.getResources().getString(2131296563);
    } 
    this.g = mxn.b(activity, gwu, gwv, str1, this.b.getResources().getString(2131296657), this.b.getResources().getString(2131296654));
  }
  
  public void c() {
    i();
  }
  
  public void c(gta paramgta) {
    this.c.b(paramgta);
    if (this.j == 3) {
      this.d.b(paramgta);
      this.e.b(paramgta);
    } 
  }
  
  public void d() {
    j();
  }
  
  public void e() {
    Intent intent = new Intent((Context)this.b, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.USUARIO_CONSULTIVO);
    this.b.startActivity(intent);
  }
  
  public boolean f() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gwt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */