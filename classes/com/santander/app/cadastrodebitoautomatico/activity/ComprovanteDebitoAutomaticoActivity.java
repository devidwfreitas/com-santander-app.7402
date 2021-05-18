package com.santander.app.cadastrodebitoautomatico.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import frq;
import fzz;
import gaa;
import gac;
import goj;
import gpu;
import java.text.SimpleDateFormat;
import java.util.Date;
import miq;
import mxn;
import naq;

public class ComprovanteDebitoAutomaticoActivity extends goj {
  private TextView A;
  
  private gac B;
  
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
  
  private final String a = "GerarComprovanteAgendamento";
  
  private LinearLayout b;
  
  private LinearLayout c;
  
  private LinearLayout f;
  
  private ImageView g;
  
  private ImageView w;
  
  private ComprovanteDebitoAutomaticoActivity x;
  
  private TextView y;
  
  private TextView z;
  
  private void c() {
    d();
    this.w = (ImageView)findViewById(2131756502);
    this.Q = (TextView)findViewById(2131756503);
    this.C = (TextView)findViewById(2131756505);
    this.D = (TextView)findViewById(2131756507);
    this.E = (TextView)findViewById(2131756509);
    this.F = (TextView)findViewById(2131756511);
    this.G = (TextView)findViewById(2131756513);
    this.H = (TextView)findViewById(2131756515);
    this.I = (TextView)findViewById(2131756517);
    this.O = (TextView)findViewById(2131756518);
    this.J = (TextView)findViewById(2131756519);
    this.K = (TextView)findViewById(2131756521);
    this.P = (TextView)findViewById(2131756522);
    this.L = (TextView)findViewById(2131756523);
    this.M = (TextView)findViewById(2131756493);
    this.N = (TextView)findViewById(2131756494);
    this.b = (LinearLayout)findViewById(2131756524);
    this.c = (LinearLayout)findViewById(2131755436);
    this.f = (LinearLayout)findViewById(2131755437);
    this.g = (ImageView)findViewById(2131755251);
    this.C.setText(this.v.f().j());
    this.D.setText(miq.C().f().f());
    this.E.setText(naq.h(this.B.v()));
    this.F.setText(this.B.l());
    this.G.setText(this.B.k());
    this.H.setText(this.B.p());
    if (this.B.a()) {
      this.b.setVisibility(8);
      this.w.setImageResource(2130838358);
      this.Q.setText("Não foi possível cadastrar débito automático.");
      mxn.e((Activity)this.x, "Não foi possível cadastrar débito automático.");
    } 
    if (this.B.n().equals("S")) {
      str = "Sim";
    } else {
      str = "Não";
    } 
    this.I.setText(str);
    if (!this.B.D().equals("0,00")) {
      this.J.setText("R$" + this.B.D());
    } else {
      this.O.setVisibility(8);
      this.J.setVisibility(8);
    } 
    if (this.B.o().equals("S")) {
      str = "Sim";
    } else {
      str = "Não";
    } 
    this.K.setText(str);
    if (this.B.C() != null)
      if (!this.B.C().equals("")) {
        this.L.setText(this.B.C());
      } else {
        this.P.setVisibility(8);
        this.L.setVisibility(8);
      }  
    String str = (new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date());
    this.M.setText(str);
    this.N.setText(this.B.i());
    frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_ReferOper", this.B.i());
    this.f.setOnClickListener((View.OnClickListener)new fzz(this));
    this.c.setOnClickListener((View.OnClickListener)new gaa(this, str));
    a();
  }
  
  private void d() {
    Intent intent = getIntent();
    intent.getExtras();
    this.B = (gac)intent.getSerializableExtra("EXTRADADOS");
  }
  
  public void a() {
    this.c.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setVisibility(8);
  }
  
  public String b() {
    this.c.setVisibility(8);
    this.f.setVisibility(8);
    this.g.setVisibility(0);
    return a(2131755416);
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968869);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Detalhe Agendamento");
    this.x = this;
    c();
  }
  
  protected void onResume() {
    super.onResume();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cadastrodebitoautomatico\activity\ComprovanteDebitoAutomaticoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */