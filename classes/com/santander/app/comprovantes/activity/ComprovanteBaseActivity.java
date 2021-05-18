package com.santander.app.comprovantes.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.ViewStubCompat;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;
import com.santander.app.MinhaConta;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import frq;
import gky;
import goj;
import gus;
import gut;
import guu;
import guv;
import guw;
import gux;
import gvb;
import gvs;
import gvt;
import gvu;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import mzu;

public class ComprovanteBaseActivity extends goj {
  private ImageView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private LinearLayout E;
  
  private RelativeLayout F;
  
  private LinearLayout G;
  
  private TextView H;
  
  private ImageView I;
  
  private ImageView J;
  
  private TextView K;
  
  private TextView L;
  
  private LinearLayout M;
  
  private LinearLayout N;
  
  private LinearLayout O;
  
  private ViewStubCompat P;
  
  private String Q = "";
  
  public LinearLayout a;
  
  public LinearLayout b;
  
  public gvb c;
  
  public LinearLayout f;
  
  private String g = "ComprovanteBaseActivity";
  
  private LinearLayout w;
  
  private LinearLayout x;
  
  private LinearLayout y;
  
  private LinearLayout z;
  
  private LinearLayout b(Context paramContext, gky paramgky) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    if (paramgky.d()) {
      linearLayout.setOrientation(1);
      linearLayout.setPadding(5, 15, 0, 0);
    } else {
      linearLayout.setPadding(5, 15, 0, 0);
      linearLayout.setOrientation(0);
    } 
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView2 = new TextView(paramContext);
    textView2.setLayoutParams(layoutParams);
    textView2.setTypeface(mzu.a((Context)this, 1));
    textView2.setText(paramgky.b());
    TextView textView1 = new TextView(paramContext);
    if (!paramgky.d())
      textView1.setPadding(10, 0, 0, 0); 
    textView1.setLayoutParams(layoutParams);
    textView1.setTypeface(mzu.a((Context)this, 0));
    textView1.setText(paramgky.c());
    linearLayout.addView((View)textView2);
    linearLayout.addView((View)textView1);
    return linearLayout;
  }
  
  private void h() {
    String str;
    this.f = (LinearLayout)findViewById(2131755416);
    this.F = (RelativeLayout)findViewById(2131755426);
    this.I = (ImageView)findViewById(2131755429);
    this.H = (TextView)findViewById(2131755431);
    this.G = (LinearLayout)findViewById(2131755430);
    this.N = (LinearLayout)findViewById(2131756499);
    this.O = (LinearLayout)findViewById(2131756501);
    this.P = (ViewStubCompat)findViewById(2131756498);
    this.y = (LinearLayout)findViewById(2131756497);
    this.E = (LinearLayout)findViewById(2131755419);
    this.x = (LinearLayout)findViewById(2131756496);
    this.w = (LinearLayout)findViewById(2131755434);
    this.a = (LinearLayout)findViewById(2131755436);
    this.b = (LinearLayout)findViewById(2131755437);
    this.z = (LinearLayout)findViewById(2131756500);
    this.A = (ImageView)findViewById(2131755251);
    this.B = (TextView)findViewById(2131755417);
    this.C = (TextView)findViewById(2131756495);
    this.J = (ImageView)findViewById(2131755418);
    this.K = (TextView)findViewById(2131755425);
    this.L = (TextView)findViewById(2131755423);
    this.D = (TextView)findViewById(2131755435);
    this.M = (LinearLayout)findViewById(2131755432);
    this.B.setText(this.c.j());
    this.K.setText(this.c.k());
    this.L.setText(this.c.l());
    if (this.c.k() == null || this.c.k().isEmpty()) {
      ((TextView)findViewById(2131755424)).setVisibility(8);
      this.K.setVisibility(8);
    } else {
      this.y.setVisibility(0);
    } 
    i();
    j();
    if (this.c.n()) {
      this.F.setVisibility(0);
    } else {
      this.F.setVisibility(8);
    } 
    TextView textView = this.H;
    if (this.c.o() != null) {
      str = this.c.o();
    } else {
      str = "";
    } 
    textView.setText((CharSequence)Html.fromHtml(str));
    this.b.setOnClickListener((View.OnClickListener)new gus(this));
    this.a.setOnClickListener((View.OnClickListener)new gut(this));
    this.z.setOnClickListener((View.OnClickListener)new guu(this));
    this.I.setOnClickListener((View.OnClickListener)new guv(this));
    if (this.c.p()) {
      this.J.setImageResource(2130838702);
      this.C.setText(this.c.g());
    } else {
      this.C.setVisibility(8);
      this.J.setImageResource(2130838238);
    } 
    if (this.c.A())
      p(); 
  }
  
  private void i() {
    if (this.c.u()) {
      this.M.setVisibility(0);
      this.w.setVisibility(0);
      this.D.setText(this.c.s());
      this.w.setOnClickListener((View.OnClickListener)new guw(this));
      return;
    } 
    this.M.setVisibility(8);
    this.w.setVisibility(8);
  }
  
  private void j() {
    if (this.c.d() == gvu.COMPROVANTE_PAGAMENTO) {
      this.z.setVisibility(0);
      return;
    } 
    this.z.setVisibility(8);
  }
  
  private void n() {
    String str = this.c.x();
    if (str != null && !str.isEmpty()) {
      TextView textView = new TextView((Context)this);
      LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
      layoutParams.setMargins(10, 10, 10, 10);
      textView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
      textView.setText(str);
      this.x.addView((View)textView);
      this.x.setVisibility(0);
      return;
    } 
    this.x.setVisibility(8);
  }
  
  private void o() {
    if (this.c.h() == null) {
      this.E.setVisibility(8);
      return;
    } 
    Iterator<gky> iterator = this.c.h().iterator();
    while (true) {
      if (iterator.hasNext()) {
        gky gky = iterator.next();
        this.E.addView((View)b((Context)this, gky));
        continue;
      } 
      return;
    } 
  }
  
  private void p() {
    if (this.c.z() != null && this.c.z().size() > 0)
      for (Map.Entry entry : this.c.z().entrySet()) {
        if (entry.getValue() instanceof Double) {
          frq.a((String)entry.getKey(), ((Double)entry.getValue()).doubleValue());
          continue;
        } 
        frq.d((String)entry.getKey(), String.valueOf(entry.getValue()));
      }  
  }
  
  private void q() {
    if (this.c.B())
      frq.d("Cartoes_Bloqueio_Comprovante_Acao", "Compartilhar"); 
    if (this.c.C())
      frq.d("Cartoes_ParcelamentoDeFatura_Comprovante_Acao", "Compartilhar"); 
    if (this.c.A())
      frq.d("Transferencia_Acao", "BotaoCompartilhar"); 
    if (this.c.G())
      frq.d("Pagamentos_Pagamento_TitulosEmCatorio_Comprovante_Acao", "Compartilhar"); 
    if (this.c.H())
      frq.d("Investimentos_Poupanca_Aplicar_Comprovante_Acao", "Compartilhar"); 
    if (this.c.I())
      frq.d("Investimentos_Poupanca_Resgatar_Comprovante_Acao", "Compartilhar"); 
    if (this.c.J())
      frq.d("Pagamentos_Pagamento_Comprovante_Acao", "Compartilhar"); 
    if (this.c.a())
      frq.d("CreditoFinanciamento_Emprestimos_Comprovante_Compartilhar_Acao", "Consignado"); 
    if (this.c.b())
      frq.d("CreditoFinanciamento_Emprestimos_Comprovante_Compartilhar_Acao", "CreditoPessoal"); 
    if (this.c.c())
      frq.d("CreditoFinanciamento_Emprestimos_Comprovante_Compartilhar_Acao", "Refinanciamento"); 
    if (this.c.L())
      frq.d("Outros_RecargaDeTelefone_Comprovante_Acao", "Compartilhar"); 
    if (this.c.M())
      frq.d("ServicosInternacionais_Cambio_Comprovante_Acao", "Compartilhar"); 
    if (this.c.N())
      frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Comprovante_Acao", "Compartilhar"); 
    if (this.c.O())
      frq.d("Outros_PropostasEmAberto_Comprovante_Acao", "Compartilhar"); 
    if (this.c.P())
      frq.d("CreditoFinanciamento_Antecipar13_Comprovante_Acao", "Compartilhar"); 
    if (this.c.Q())
      frq.d("Investimentos_Fundos_Aplicar_Comprovante_Acao", "Compartilhar"); 
    if (this.c.R())
      frq.d("Investimentos_Fundos_Resgate_Comprovante_Acao", "Compartilhar"); 
    if (this.c.S())
      frq.d("Investimentos_RendaFixa_Resgate_Comprovante_Acao", "Compartilhar"); 
    if (this.c.T())
      frq.d("CreditoFinanciamento_AnteciparIR_Comprovante_Acao", "Compartilhar"); 
  }
  
  private void r() {
    if (this.c.A())
      frq.d("Transferencia_Acao", "BotaoFechar"); 
    if (this.c.B())
      frq.d("Cartoes_Bloqueio_Comprovante_Acao", "Fechar"); 
    if (this.c.C())
      frq.d("Cartoes_ParcelamentoDeFatura_Comprovante_Acao", "Fechar"); 
    if (this.c.G())
      frq.d("Pagamentos_Pagamento_TitulosEmCatorio_Comprovante_Acao", "Fechar"); 
    if (this.c.H())
      frq.d("Investimentos_Poupanca_Aplicar_Comprovante_Acao", "Fechar"); 
    if (this.c.I())
      frq.d("Investimentos_Poupanca_Resgatar_Comprovante_Acao", "Fechar"); 
    if (this.c.J())
      frq.d("Pagamentos_Pagamento_Comprovante_Acao", "Fechar"); 
    if (this.c.a())
      frq.d("CreditoFinanciamento_Emprestimos_Comprovante_Fechar_Acao", "Consignado"); 
    if (this.c.b())
      frq.d("CreditoFinanciamento_Emprestimos_Comprovante_Fechar_Acao", "CreditoPessoal"); 
    if (this.c.c())
      frq.d("CreditoFinanciamento_Emprestimos_Comprovante_Fechar_Acao", "Refinanciamento"); 
    if (this.c.L())
      frq.d("Outros_RecargaDeTelefone_Comprovante_Acao", "Fechar"); 
    if (this.c.M())
      frq.d("ServicosInternacionais_Cambio_Comprovante_Acao", "Fechar"); 
    if (this.c.N())
      frq.d("Outros_InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa_Comprovante_Acao", "Fechar"); 
    if (this.c.O())
      frq.d("Outros_PropostasEmAberto_Comprovante_Acao", "Fechar"); 
    if (this.c.P())
      frq.d("CreditoFinanciamento_Antecipar13_Comprovante_Acao", "Fechar"); 
    if (this.c.Q())
      frq.d("Investimentos_Fundos_Aplicar_Comprovante_Acao", "Fechar"); 
    if (this.c.R())
      frq.d("Investimentos_Fundos_Resgate_Comprovante_Acao", "Fechar"); 
    if (this.c.S())
      frq.d("Investimentos_RendaFixa_Resgate_Comprovante_Acao", "Fechar"); 
    if (this.c.T())
      frq.d("CreditoFinanciamento_AnteciparIR_Comprovante_Acao", "Fechar"); 
  }
  
  private void s() {
    if (this.c.A())
      this.Q = "Transferencia"; 
    if (this.c.B())
      this.Q = "Cartoes_BloqueioDeCartao"; 
    if (this.c.C())
      this.Q = "Cartoes_ParcelamentoDeFatura"; 
    if (this.c.G() || this.c.J())
      this.Q = "Pagamento"; 
    if (this.c.H())
      this.Q = "Poupanca_Aplicar"; 
    if (this.c.I())
      this.Q = "Poupanca_Resgatar"; 
    if (this.c.a() || this.c.b() || this.c.c())
      this.Q = "Emprestimos"; 
    if (this.c.K())
      this.Q = "TrocarSenha"; 
    if (this.c.L())
      this.Q = "RecargaDeTelefone"; 
    if (this.c.M())
      this.Q = "Cambio_TransferenciaParaOExterior"; 
    if (this.c.N())
      this.Q = "InvestimentosNoATM_BloqueioDeInvestimentosELimitesNoCaixa"; 
    if (this.c.O())
      this.Q = "Formalizacao"; 
    if (this.c.P())
      this.Q = "Antecipacao13"; 
    if (this.c.Q())
      this.Q = "Fundos_Aplicar"; 
    if (this.c.R())
      this.Q = "Fundos_Resgatar"; 
    if (this.c.S())
      this.Q = "Rendafixa_Resgatar"; 
    if (this.c.T())
      this.Q = "AntecipacaoIR"; 
    if (this.c.g() != null || this.c.p()) {
      frq.b(this.Q, "TransacaoNaoPermitida");
      return;
    } 
    frq.a(this.Q);
  }
  
  @LayoutRes
  public int a() {
    return 0;
  }
  
  public LinearLayout a(Context paramContext, gky paramgky) {
    LinearLayout linearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    linearLayout.setGravity(17);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
    if (paramgky.d()) {
      linearLayout.setOrientation(1);
      linearLayout.setPadding(0, 0, 0, 0);
    } else {
      linearLayout.setPadding(0, 0, 0, 0);
      linearLayout.setOrientation(0);
    } 
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    TextView textView = new TextView(paramContext);
    textView.setLayoutParams(layoutParams);
    textView.setTypeface(mzu.a((Context)this, 0));
    if (paramgky.b() != null) {
      textView.setText(paramgky.b());
      linearLayout.addView((View)textView);
      return linearLayout;
    } 
    if (paramgky.a() != null)
      textView.setText(paramgky.a()); 
    linearLayout.addView((View)textView);
    return linearLayout;
  }
  
  public void a(ArrayList<gky> paramArrayList) {
    if (paramArrayList != null)
      for (gky gky : paramArrayList)
        this.O.addView((View)a((Context)this, gky));  
  }
  
  public void b() {
    Intent intent;
    if (this.c.F() != null && (this.c.F()).length > 0)
      frq.d(this.c.F()[0], this.c.F()[1]); 
    if (this.v.f().e().booleanValue()) {
      intent = new Intent((Context)this, HomeLogadaNaoCorrentistaActivity.class);
    } else {
      intent = new Intent((Context)this, HomeLogadaActivity.class);
    } 
    startActivity(intent);
  }
  
  public void c() {
    if (this.c.F() != null && (this.c.F()).length > 0)
      frq.d(this.c.E()[0], this.c.E()[1]); 
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission(MinhaConta.b(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
        ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.READ_EXTERNAL_STORAGE" }, 8);
        return;
      } 
      k();
      return;
    } 
    k();
  }
  
  public void d() {
    this.a.setVisibility(0);
    this.b.setVisibility(0);
    j();
    if (this.c.u()) {
      this.w.setVisibility(0);
      this.M.setVisibility(0);
    } else {
      this.w.setVisibility(8);
      this.M.setVisibility(8);
    } 
    this.A.setVisibility(8);
  }
  
  public String e() {
    this.a.setVisibility(8);
    this.b.setVisibility(8);
    this.z.setVisibility(8);
    this.w.setVisibility(8);
    this.M.setVisibility(8);
    this.A.setVisibility(0);
    if (this.c.n()) {
      this.G.setVisibility(0);
      this.I.setImageResource(2130838908);
    } 
    return a(2131755416);
  }
  
  public void f() {
    String str = this.c.f();
    if (this.c.d() != null && this.c.d() == gvu.COMPROVANTE_PREVIDENCIA) {
      str = getString(2131297618);
      TextView textView = new TextView((Context)this);
      LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
      layoutParams.setMargins(10, 10, 10, 10);
      textView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
      textView.setText(str);
      this.N.addView((View)textView);
      this.N.setVisibility(0);
      return;
    } 
    if (str != null && !str.isEmpty()) {
      TextView textView = new TextView((Context)this);
      LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
      layoutParams.setMargins(10, 10, 10, 10);
      textView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
      textView.setText(str);
      this.N.addView((View)textView);
      this.N.setVisibility(0);
      return;
    } 
    this.N.setVisibility(8);
  }
  
  public void g() {
    switch (gux.a[this.c.d().ordinal()]) {
      default:
        a((new gvt()).a());
        return;
      case 1:
        a((new gvt()).a());
        return;
      case 2:
        break;
    } 
    a((new gvs()).a());
  }
  
  public void k() {
    String str = e();
    a(this.c.m(), "", str);
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.c = (gvb)getIntent().getExtras().getSerializable("comprovanteBase");
    s();
    setContentView(2130968867);
    c(this.c.i());
    h();
    o();
    n();
    f();
    g();
    if (a() != 0) {
      this.P.setLayoutResource(a());
      onCreateContentExtra(this.P.inflate());
    } 
  }
  
  public void onCreateContentExtra(View paramView) {}
  
  protected void onDestroy() {
    super.onDestroy();
  }
  
  protected void onResume() {
    super.onResume();
    d();
    if (this.c.n()) {
      this.G.setVisibility(8);
      this.I.setImageResource(2130838907);
    } 
    if (this.c.p())
      this.a.setVisibility(8); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\comprovantes\activity\ComprovanteBaseActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */