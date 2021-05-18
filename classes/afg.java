import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.transition.TransitionManager;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class afg {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private TextView E;
  
  private TextView F;
  
  private TextView G;
  
  private TextView H;
  
  private TextView I;
  
  private TextView J;
  
  private TextView K;
  
  private TextView L;
  
  private TextView M;
  
  private TextView N;
  
  private TextView O;
  
  private TextView P;
  
  private TextView Q;
  
  private TextView R;
  
  private TextView S;
  
  private TextView T;
  
  private TextView U;
  
  private TextView V;
  
  private TextView W;
  
  private TextView X;
  
  private LinearLayout Y;
  
  private LinearLayout Z;
  
  private Activity a;
  
  private LinearLayout aa;
  
  private LinearLayout ab;
  
  private Button ac;
  
  private aeb b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private TextView k;
  
  private TextView l;
  
  private TextView m;
  
  private TextView n;
  
  private TextView o;
  
  private TextView p;
  
  private TextView q;
  
  private TextView r;
  
  private TextView s;
  
  private TextView t;
  
  private TextView u;
  
  private TextView v;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  public afg(Activity paramActivity) {
    this.a = paramActivity;
    this.b = (aeb)paramActivity.getIntent().getSerializableExtra("title");
    a();
    b();
  }
  
  private String a(String paramString) {
    return paramString.substring(0, paramString.length() - 3);
  }
  
  private void a() {
    this.c = (TextView)this.a.findViewById(adr.text_view_dados_endereco);
    this.d = (TextView)this.a.findViewById(adr.text_view_dados_pagador_original);
    this.e = (TextView)this.a.findViewById(adr.text_view_dados_registro_titulo);
    this.f = (TextView)this.a.findViewById(adr.text_view_dados_pagamento_titulo);
    this.g = (TextView)this.a.findViewById(adr.text_view_valor_titulo);
    this.h = (TextView)this.a.findViewById(adr.text_view_codigo_instituicao_beneficiaria_destinataria);
    this.i = (TextView)this.a.findViewById(adr.text_view_nome_beneficiario_original);
    this.j = (TextView)this.a.findViewById(adr.text_view_cnpj);
    this.k = (TextView)this.a.findViewById(adr.text_view_endereco);
    this.l = (TextView)this.a.findViewById(adr.text_view_cep);
    this.m = (TextView)this.a.findViewById(adr.text_view_cidade);
    this.n = (TextView)this.a.findViewById(adr.text_view_estado);
    this.o = (TextView)this.a.findViewById(adr.text_view_nome_pagador);
    this.p = (TextView)this.a.findViewById(adr.text_view_cpf_pagador);
    this.q = (TextView)this.a.findViewById(adr.text_view_endereco_pagador);
    this.r = (TextView)this.a.findViewById(adr.text_view_cep_pagador);
    this.s = (TextView)this.a.findViewById(adr.text_view_cidade_pagador);
    this.t = (TextView)this.a.findViewById(adr.text_view_estado_pagador);
    this.u = (TextView)this.a.findViewById(adr.text_view_data_vencimento);
    this.v = (TextView)this.a.findViewById(adr.text_view_data_processamento);
    this.w = (TextView)this.a.findViewById(adr.text_view_valor_documento);
    this.x = (TextView)this.a.findViewById(adr.text_view_desconto);
    this.y = (TextView)this.a.findViewById(adr.text_view_juros);
    this.z = (TextView)this.a.findViewById(adr.text_view_origem);
    this.A = (TextView)this.a.findViewById(adr.text_view_situacao_titulo);
    this.B = (TextView)this.a.findViewById(adr.text_view_data_documento);
    this.C = (TextView)this.a.findViewById(adr.text_view_multa);
    this.D = (TextView)this.a.findViewById(adr.text_view_autoriza_pagamento_valor_divergente);
    this.E = (TextView)this.a.findViewById(adr.text_view_abatimento);
    this.F = (TextView)this.a.findViewById(adr.text_view_nosso_numero);
    this.G = (TextView)this.a.findViewById(adr.text_view_especie);
    this.H = (TextView)this.a.findViewById(adr.text_view_seu_numero);
    this.I = (TextView)this.a.findViewById(adr.text_view_desconto_calculado);
    this.J = (TextView)this.a.findViewById(adr.text_view_valor_calculado);
    this.K = (TextView)this.a.findViewById(adr.text_view_juros_calculados);
    this.L = (TextView)this.a.findViewById(adr.text_view_multa_calculada);
    this.M = (TextView)this.a.findViewById(adr.text_view_abatimento_calculado);
    this.N = (TextView)this.a.findViewById(adr.text_view_valor_titulo_desc);
    this.O = (TextView)this.a.findViewById(adr.text_view_valor_documento_desc);
    this.P = (TextView)this.a.findViewById(adr.text_view_valor_calculado_desc);
    this.Q = (TextView)this.a.findViewById(adr.text_view_desconto_desc);
    this.R = (TextView)this.a.findViewById(adr.text_view_juros_desc);
    this.S = (TextView)this.a.findViewById(adr.text_view_multa_desc);
    this.T = (TextView)this.a.findViewById(adr.text_view_abatimento_desc);
    this.U = (TextView)this.a.findViewById(adr.text_view_desconto_calculado_desc);
    this.V = (TextView)this.a.findViewById(adr.text_view_juros_calculados_desc);
    this.W = (TextView)this.a.findViewById(adr.text_view_multa_calculada_desc);
    this.X = (TextView)this.a.findViewById(adr.text_view_abatimento_calculado_desc);
    this.Y = (LinearLayout)this.a.findViewById(adr.layout_address_data);
    this.Z = (LinearLayout)this.a.findViewById(adr.layout_payer_data);
    this.aa = (LinearLayout)this.a.findViewById(adr.layout_register_title_data);
    this.ab = (LinearLayout)this.a.findViewById(adr.layout_payment_data);
    this.ac = (Button)this.a.findViewById(adr.button_buy);
    this.c.setOnClickListener(new afl(this));
    this.d.setOnClickListener(new afm(this));
    this.f.setOnClickListener(new afn(this));
    this.e.setOnClickListener(new afo(this));
    this.ac.setOnClickListener(new afp(this));
  }
  
  @TargetApi(21)
  private void a(LinearLayout paramLinearLayout, TextView paramTextView) {
    TransitionManager.beginDelayedTransition((ViewGroup)paramLinearLayout.getParent());
    if (paramLinearLayout.getVisibility() == 0) {
      paramLinearLayout.setVisibility(8);
      paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, null, ContextCompat.getDrawable((Context)this.a, adq.ic_arrow_down), null);
      return;
    } 
    paramLinearLayout.setVisibility(0);
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, null, ContextCompat.getDrawable((Context)this.a, adq.ic_arrow_up), null);
  }
  
  private void a(String paramString, TextView paramTextView1, TextView paramTextView2) {
    paramString = aep.a(a(paramString));
    if (!paramString.equals("0,00")) {
      paramTextView1.setText(this.a.getString(adw.currency_format) + paramString);
      return;
    } 
    paramTextView2.setVisibility(8);
    paramTextView1.setVisibility(8);
  }
  
  private String b(String paramString) {
    return paramString.substring(3, paramString.length());
  }
  
  private void b() {
    aec aec = this.b.j();
    ji ji = aea.a().d();
    try {
      int i;
      this.h.setText(ji.c(aec.k()) + " - " + ji.c(aec.l()));
      this.i.setText(ji.c(aec.o()));
      this.j.setText(aes.a(ji.c(aec.n())));
      this.k.setText(ji.c(aec.p()).replaceAll("\\s+", " "));
      this.l.setText(aes.b(ji.c(aec.s())));
      this.m.setText(ji.c(aec.q()));
      this.n.setText(ji.c(aec.r()));
      this.o.setText(ji.c(aec.f()));
      this.p.setText(aes.c(b(ji.c(aec.e()))));
      this.q.setText(ji.c(aec.g()));
      this.r.setText(aes.b(ji.c(aec.j())));
      this.s.setText(ji.c(aec.h()));
      this.t.setText(ji.c(aec.i()));
      this.u.setText(aeo.b(ji.c(aec.z())));
      this.v.setText(aeo.b(ji.c(aec.P())));
      this.z.setText(aec.W());
      this.A.setText(aec.L().a());
      this.B.setText(aeo.b(ji.c(aec.M())));
      TextView textView = this.D;
      Activity activity = this.a;
      if (aec.ae().equals("S")) {
        i = adw.sim;
      } else {
        i = adw.nao;
      } 
      textView.setText(activity.getString(i));
      this.F.setText(ji.c(aec.x()));
      this.G.setText(aec.O());
      this.H.setText(ji.c(aec.y()));
      a(ji.c(aec.as()), this.w, this.O);
      a(ji.c(aec.as()), this.g, this.N);
      a(ji.c(aec.aj()), this.J, this.P);
      a(aec.J(), this.C, this.S);
      a(ji.c(aec.G()), this.E, this.T);
      a(aec.F(), this.x, this.Q);
      a(aec.I(), this.y, this.R);
      a(ji.c(aec.af()), this.I, this.U);
      a(ji.c(aec.ah()), this.K, this.V);
      a(ji.c(aec.ai()), this.L, this.W);
      a(ji.c(aec.ag()), this.M, this.X);
      return;
    } catch (Exception exception) {
      Log.e(afg.class.getName(), Log.getStackTraceString(exception));
      return;
    } 
  }
  
  private void c() {
    try {
      adh.a().a("Pagamentos_DDA_Acao", aea.a().d().c(this.b.c()));
      adh.a().a("Pagamentos_DDA_Acao", "Pagar");
      Intent intent = new Intent();
      intent.setClassName(this.a.getPackageName(), this.a.getPackageName() + ".pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity");
      intent.putExtra("codigoBarrasDDA", this.b.j().u());
      intent.putExtra("dda", true);
      this.a.startActivity(intent);
      this.a.finish();
      return;
    } catch (Exception exception) {
      Log.e(afg.class.getName(), Log.getStackTraceString(exception));
      return;
    } 
  }
  
  private void d() {
    a(this.Y, this.c);
  }
  
  private void e() {
    a(this.Z, this.d);
  }
  
  private void f() {
    a(this.aa, this.e);
  }
  
  private void g() {
    a(this.ab, this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\afg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */