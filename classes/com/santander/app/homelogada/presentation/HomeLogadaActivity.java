package com.santander.app.homelogada.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import apa;
import aqc;
import aqt;
import aqw;
import aqy;
import aqz;
import arb;
import arh;
import ark;
import arv;
import chat.santander.com.modulochatsantander.tasks.ChatTask;
import com.santander.app.PagamentoFacturaCartoesActivity;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;
import com.santander.app.components.carrossel.SelectorComponentCarrosselImpl;
import com.santander.app.components.view.avisofinalano.AvisoFinalAnoActivity;
import com.santander.app.components.view.cardLayout.CardLayout;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.fingerprint.presentation.FingerprintEnablingActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoQrOuAtmOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoSMSOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderOtimizacaoActivity;
import com.santander.app.meuperfil.presentation.EscolhaContaPreferencialActivity;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import frq;
import fsk;
import fso;
import fsp;
import fsq;
import fsr;
import fss;
import gki;
import gkj;
import gkk;
import gla;
import glb;
import gld;
import gln;
import glu;
import gly;
import gmm;
import gpu;
import grs;
import gtz;
import guf;
import gwt;
import gww;
import gxa;
import gyo;
import gyp;
import gyq;
import gyr;
import hau;
import hbr;
import iev;
import ipp;
import iqc;
import iqd;
import iqe;
import iqf;
import iqg;
import iqh;
import iqi;
import iqj;
import iqk;
import iql;
import iqm;
import iqn;
import iqo;
import iqp;
import iqq;
import iqs;
import iqu;
import iqv;
import iqw;
import iqx;
import iqy;
import iqz;
import ira;
import irb;
import irc;
import ird;
import iuu;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import jcw;
import jde;
import jdf;
import mip;
import miq;
import mwx;
import mxn;
import myg;
import myh;
import mym;
import myo;
import mzq;
import naf;
import nat;
import naz;

public class HomeLogadaActivity extends grs implements aqw, fsp, gyp, irb {
  private static String e = null;
  
  private SelectorComponentCarrosselImpl A;
  
  private SelectorComponentCarrosselImpl B;
  
  private glu C;
  
  private irc D;
  
  private Button E;
  
  private fsr F;
  
  private fsk G;
  
  private CardLayout H;
  
  private gwt I;
  
  private gyq J;
  
  private MenuItem K;
  
  private Conta L = new Conta();
  
  private fss M = new fss();
  
  private LinearLayout N;
  
  private LinearLayout O;
  
  private Dialog P;
  
  private jde Q;
  
  private boolean R = false;
  
  private boolean S = false;
  
  private int T = 0;
  
  public Dialog a = null;
  
  private final String b = "HomeLogadaActivity";
  
  private HomeLogadaActivity c;
  
  private gki d = gki.a();
  
  private mip f = (mip)miq.C();
  
  private SelectorComponentCarrosselImpl g;
  
  private SelectorComponentCarrosselImpl w;
  
  private gld x;
  
  private SelectorComponentCarrosselImpl y;
  
  private gly z;
  
  private View.OnClickListener a(ipp paramipp) {
    return (View.OnClickListener)new iqy(this, paramipp);
  }
  
  private void a(String paramString1, String paramString2) {
    byte b = -1;
    switch (paramString1.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            e(paramString2);
            return;
          case 1:
            f(paramString2);
            return;
          case 2:
            break;
        } 
        break;
      case -1018969646:
        if (paramString1.equals("pagarFatura"))
          b = 0; 
      case -2014581179:
        if (paramString1.equals("parcelarFatura"))
          b = 1; 
      case -1754110317:
        if (paramString1.equals("pagarTitulos"))
          b = 2; 
    } 
    aw();
  }
  
  private View.OnClickListener al() {
    return (View.OnClickListener)new iqz(this);
  }
  
  private View.OnClickListener am() {
    return (View.OnClickListener)new ira(this);
  }
  
  private View.OnClickListener an() {
    return (View.OnClickListener)new iqd(this);
  }
  
  private View.OnClickListener ao() {
    return (View.OnClickListener)new iqe(this);
  }
  
  private View.OnClickListener ap() {
    return (View.OnClickListener)new iqf(this);
  }
  
  private View.OnClickListener aq() {
    return (View.OnClickListener)new iqg(this);
  }
  
  private void ar() {
    String str = getSharedPreferences("SovereignBrasilProfile", 0).getString("segmento", "");
    (new iqk(this, str, getSharedPreferences("banner" + str, 0).getLong("dataAtualizacao", 0L), getSharedPreferences("banner" + str, 0).getLong("dataAtualizacaoDefault", 0L))).c((Object[])new Void[0]);
  }
  
  private gyo as() {
    return (gyo)new iql(this);
  }
  
  private void at() {
    this.J.a();
  }
  
  private void au() {
    Log.d(ChatTask.b, "ELEGIVEL - DISPONIVEL | DESABILITADO | FORA DO HORARIO");
    if (this.K != null)
      this.K.setVisible(true); 
  }
  
  private void av() {
    Log.d(ChatTask.b, "NÃO ELEGIVEL - INDISPONIVEL");
    if (this.K != null)
      this.K.setVisible(false); 
  }
  
  private void aw() {
    PagamentosCodigoBarrasActivity.b = false;
    Intent intent = new Intent((Context)this, PagamentosCodigoBarrasActivity.class);
    intent.addFlags(335577088);
    intent.putExtra("isway", true);
    startActivity(intent);
  }
  
  private void ax() {
    if (!this.S) {
      this.S = true;
      this.D.a((Context)this);
    } 
  }
  
  private void e(String paramString) {
    Intent intent = new Intent((Context)this, PagamentoFacturaCartoesActivity.class);
    intent.addFlags(335577088);
    intent.putExtra("isway", true);
    intent.putExtra("NUMEROCARTAO", paramString);
    startActivity(intent);
  }
  
  private void f(String paramString) {
    Intent intent = new Intent((Context)this, ParcelamentoFaturaActivity.class);
    intent.addFlags(335577088);
    intent.putExtra("isway", true);
    intent.putExtra("NUMEROCARTAO", paramString);
    startActivity(intent);
  }
  
  public void A() {
    this.A = (SelectorComponentCarrosselImpl)findViewById(2131758177);
    this.A.setVisibility(0);
    this.A.a((glb)new gmm((Context)this, new ArrayList()));
    this.A.setSelectedItemEvent((gla)new iqx(this));
  }
  
  public void B() {
    this.B = (SelectorComponentCarrosselImpl)findViewById(2131758179);
    this.B.setVisibility(0);
    this.C = new glu((Activity)this, a(ipp.INVESTIMENTOS));
    this.B.a((glb)this.C);
  }
  
  public void C() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, null);
    this.D.a(actionBar);
  }
  
  public void D() {
    gpu.a(mym.a((Context)this, this.f.f().k()));
  }
  
  public void E() {
    this.f.e(true);
  }
  
  public void F() {
    this.D.o();
  }
  
  public void G() {
    if (!this.f.e())
      this.f.d(true); 
  }
  
  public SelectorComponentCarrosselImpl H() {
    return this.g;
  }
  
  public SelectorComponentCarrosselImpl I() {
    return this.w;
  }
  
  public SelectorComponentCarrosselImpl J() {
    return this.y;
  }
  
  public SelectorComponentCarrosselImpl K() {
    return this.A;
  }
  
  public boolean L() {
    return (this.N.getVisibility() == 0);
  }
  
  public void M() {
    this.N.setVisibility(0);
  }
  
  public void N() {
    this.N.setVisibility(8);
  }
  
  public boolean O() {
    return (this.O.getVisibility() == 0);
  }
  
  public void P() {
    this.O.setVisibility(0);
  }
  
  public void Q() {
    this.O.setVisibility(8);
  }
  
  public void R() {
    b(getString(2131297343));
  }
  
  public void S() {
    miq.C().h(true);
    RelativeLayout relativeLayout = (RelativeLayout)findViewById(2131758181);
    relativeLayout.setVisibility(0);
    ((TextView)findViewById(2131758184)).setText((CharSequence)Html.fromHtml(getResources().getString(2131297533)));
    Handler handler = new Handler();
    handler.postDelayed((Runnable)new iqo(this, relativeLayout), 5000L);
    ((Button)findViewById(2131758185)).setOnClickListener((View.OnClickListener)new iqp(this, handler, relativeLayout));
  }
  
  public void T() {
    (new aqz()).a();
  }
  
  public void U() {
    Bundle bundle = getIntent().getExtras();
    if (bundle != null && bundle.getBoolean("isway", false))
      a(bundle.getString("way_action", ""), bundle.getString("NUMEROCARTAO")); 
  }
  
  public void V() {
    this.D.p();
  }
  
  public void W() {
    gpu.a(getSupportActionBar());
  }
  
  public gki X() {
    return this.d;
  }
  
  public void Y() {
    this.I = new gwt((Activity)this, this.H, gww.Home);
    this.J = (gyq)new gyr(this.c);
    this.I.a(as());
    at();
  }
  
  public void Z() {
    N();
    Q();
    LinearLayout linearLayout = (LinearLayout)findViewById(2131758171);
    linearLayout.setVisibility(0);
    linearLayout.setOnClickListener((View.OnClickListener)new iqs(this));
    TextView textView = (TextView)findViewById(2131758172);
    String str = this.f.f().A();
    if (naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue().equals(str) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue().equals(str)) {
      textView.setText((CharSequence)Html.fromHtml(getResources().getString(2131299045)));
      return;
    } 
    if (naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(str) || naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(str)) {
      textView.setText((CharSequence)Html.fromHtml(getResources().getString(2131299046)));
      return;
    } 
    if (naz.ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.getValue().equals(str) || naz.ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.getValue().equals(str) || naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue().equals(str) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue().equals(str)) {
      textView.setText((CharSequence)Html.fromHtml(getResources().getString(2131299047)));
      return;
    } 
    if (naz.OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO.getValue().equals(str) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE.getValue().equals(str) || naz.HOME_CONSULTIVA.getValue().equals(str)) {
      textView.setText((CharSequence)Html.fromHtml(getResources().getString(2131299044)));
      return;
    } 
    if (naz.HABILITACAO_ATM.getValue().equals(str)) {
      textView.setText((CharSequence)Html.fromHtml(getResources().getString(2131299043)));
      return;
    } 
  }
  
  public Dialog a(mwx parammwx) {
    this.c = this;
    mzq.a((Activity)this.c, false);
    Dialog dialog = new Dialog((Context)this.c, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity((Activity)this.c);
    dialog.setContentView(2130968982);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this.c));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this.c));
    ((TextView)dialog.findViewById(2131756960)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298870)));
    ((TextView)dialog.findViewById(2131756961)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298845)));
    dialog.findViewById(2131756931).setOnClickListener((View.OnClickListener)new iqc(this, parammwx, dialog));
    dialog.findViewById(2131756959).setOnClickListener((View.OnClickListener)new iqn(this, dialog));
    try {
      dialog.show();
      return dialog;
    } catch (Exception exception) {
      Log.e("HomeLogadaActivity", "Erro showLoading", exception);
      return dialog;
    } 
  }
  
  public void a() {
    this.G = new fsk((Activity)this, (fso)new iqh(this));
    this.G.show();
  }
  
  public void a(Intent paramIntent) {
    startActivity(paramIntent);
  }
  
  public void a(Uri paramUri) {
    hbr.a().a((Context)this, paramUri);
  }
  
  public void a(arh paramarh) {
    Log.e(ChatTask.b, paramarh.b().concat(" ") + paramarh.c());
  }
  
  public void a(ark paramark) {}
  
  public void a(String paramString) {
    try {
      myo.b((Context)this, paramString);
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      myo.b((Context)this, paramString);
      return;
    } 
  }
  
  public void a(jdf paramjdf) {
    this.C.a(paramjdf);
  }
  
  public void a(boolean paramBoolean) {
    if (paramBoolean) {
      au();
      return;
    } 
    av();
  }
  
  public void a(boolean paramBoolean, gxa paramgxa) {
    (new gtz((guf)new iqm(this), (Activity)this.c)).a(paramBoolean, paramgxa);
  }
  
  public void aa() {
    this.z.a(this.f.f().r().b());
  }
  
  public void ab() {
    frq.d("Investimentos_Home_Acao", "Poupanca");
    jcw.a((Activity)this, true);
  }
  
  public void ac() {
    this.R = true;
    this.x.d();
  }
  
  public boolean ad() {
    return this.R;
  }
  
  public void ae() {
    this.P = mxn.b((Activity)this);
  }
  
  public void af() {
    if (this.P != null) {
      this.P.dismiss();
      this.P = null;
    } 
  }
  
  public void ag() {
    this.C.d();
  }
  
  public gwt ah() {
    return this.I;
  }
  
  public int ai() {
    return this.T;
  }
  
  public void aj() {
    this.A.a(Integer.valueOf(7));
  }
  
  public void ak() {
    this.A.a(Integer.valueOf(8));
  }
  
  public void b() {
    if (this.G != null)
      this.G.dismiss(); 
  }
  
  public void b(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, false, "OK");
  }
  
  public void c() {
    Dialog dialog = new Dialog((Context)this.c, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText("Confirmar");
    iqi iqi = new iqi(this, dialog);
    button1.setText("Cancelar");
    iqj iqj = new iqj(this, dialog);
    mxn.a((Activity)this.c, dialog, "Atenção", getResources().getString(2131296565), (View.OnClickListener)iqi, (View.OnClickListener)iqj);
  }
  
  public void d() {
    C();
    this.H = (CardLayout)findViewById(2131756564);
    if (this.f.u()) {
      this.f.i(false);
      ar();
    } 
    this.D.o();
    D();
    E();
    V();
    G();
    this.N = (LinearLayout)findViewById(2131758168);
    this.O = (LinearLayout)findViewById(2131758174);
    this.E = (Button)findViewById(2131758169);
    Button button1 = (Button)findViewById(2131758170);
    Button button2 = (Button)findViewById(2131758175);
    Button button3 = (Button)findViewById(2131758176);
    this.E.setOnClickListener(al());
    button1.setOnClickListener(am());
    button2.setOnClickListener(an());
    button3.setOnClickListener(ao());
    this.D.l();
    this.D.g();
    this.D.h();
    this.D.j();
    this.D.i();
    this.D.k();
    this.F = (fsr)new fsq(this.c);
    this.D.s();
    this.D.v();
    this.D.a((View)this.E);
    if (this.f.y())
      this.D.a((Context)this); 
    this.D.z();
    this.D.A();
  }
  
  public void d(String paramString) {
    try {
      iqq iqq = new iqq(this, paramString);
      aqt.a((new aqy()).a((Context)this).a((arb)iqq).a("0001").b("35").c(this.d.b()).a((apa)new gkk()).a((arv)gkj.b()).a(this).a(Integer.valueOf(2131624103)).b(Integer.valueOf(2131624106)).a(false).a());
      return;
    } catch (aqc aqc) {
      Log.e("Error", aqc.getMessage());
      return;
    } 
  }
  
  public void e() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoSMSOfertaActivity.class));
  }
  
  public void f() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoQrOuAtmOfertaActivity.class));
  }
  
  public void g() {
    Intent intent = new Intent((Context)this, IdSantanderHabilitacaoActivity.class);
    intent.putExtra("atm", true);
    startActivity(intent);
  }
  
  public void h() {
    startActivity(new Intent((Context)this, EscolhaContaPreferencialActivity.class));
  }
  
  public void i() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.ID_CANCELADO);
    startActivity(intent);
  }
  
  public void j() {
    startActivity((new Intent((Context)this, IdSantanderOfertaActivity.class)).putExtra("tipoConversao", (Serializable)iuu.OBRIGATORIA));
  }
  
  public void k() {
    startActivity((new Intent((Context)this, IdSantanderOfertaActivity.class)).putExtra("tipoConversao", (Serializable)iuu.OPCIONAL));
  }
  
  public void n() {
    gpu.a((Activity)this, getSupportActionBar(), null);
  }
  
  public void o() {
    if (naz.LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM.getValue().equals(this.f.f().y().a())) {
      this.f.f().e("2");
      q();
      return;
    } 
    if (this.D.y()) {
      Intent intent = new Intent((Context)this, FingerprintEnablingActivity.class);
      intent.putExtra("action", (Serializable)iev.OFFER);
      startActivity(intent);
      return;
    } 
    F();
  }
  
  public void onBackPressed() {
    this.a = mxn.a((Activity)this.c);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969123);
    this.c = this;
    this.D = (irc)new ird(this, (Activity)this);
    this.D.u();
    d();
    try {
      frq.e("ID MBB", (new naf()).a(this.f.f().k()));
      return;
    } catch (Exception exception) {
      frq.d("ID_MBB_ERROR", exception.getMessage());
      return;
    } 
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886093, paramMenu);
    this.K = paramMenu.getItem(0);
    if (this.d.b() == null)
      this.K.setVisible(false); 
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy() {
    Date date = new Date();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy, HH:mm");
    SharedPreferences.Editor editor = getSharedPreferences("homeLogadaWidget", 0).edit();
    editor.putString("lastConecctionDate", simpleDateFormat.format(date));
    editor.commit();
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 2131759628:
        break;
    } 
    T();
  }
  
  protected void onPause() {
    hau.a().a(null);
    super.onPause();
  }
  
  protected void onResume() {
    super.onResume();
    this.D.w();
    hau.a().a((Activity)this);
  }
  
  public void p() {
    startActivity(new Intent((Context)this, AvisoFinalAnoActivity.class));
  }
  
  public void q() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.BLOQUEIO_ADM);
    startActivity(intent);
  }
  
  public void r() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.BLOQUEIO_CLIENTE);
    startActivity(intent);
  }
  
  public void s() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.APARELHO_NAO_HABILITADO);
    startActivity(intent);
  }
  
  public void t() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.BLOQUEIO_TENTATIVAS);
    startActivity(intent);
  }
  
  public void u() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.ERRO_INESPERADO);
    startActivity(intent);
  }
  
  public void v() {
    startActivity(new Intent((Context)this, IdSantanderOtimizacaoActivity.class));
  }
  
  public void w() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.USUARIO_CONSULTIVO);
    startActivity(intent);
  }
  
  public void x() {
    this.g = (SelectorComponentCarrosselImpl)findViewById(2131758167);
    this.g.a((glb)new gln((Context)this));
    this.g.setSelectedItemEvent((gla)new iqu(this));
    this.L = (Conta)this.g.b();
  }
  
  public void y() {
    this.w = (SelectorComponentCarrosselImpl)findViewById(2131758173);
    this.w.setVisibility(0);
    this.x = new gld((Context)this, a(ipp.CARTOES_CARROSSEL_SELECTED), ipp.CARTOES_CARROSSEL_SELECTED);
    this.w.a((glb)this.x);
    this.w.setSelectedItemEvent((gla)new iqv(this));
  }
  
  public void z() {
    this.y = (SelectorComponentCarrosselImpl)findViewById(2131758178);
    this.y.setVisibility(0);
    this.z = new gly((Context)this, a(ipp.POUPANCA_MENU_ITEM));
    this.y.a((glb)this.z);
    this.y.setSelectedItemEvent((gla)new iqw(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\homelogada\presentation\HomeLogadaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */