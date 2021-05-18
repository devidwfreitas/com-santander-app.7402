package com.santander.app.dpp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.Poupanca_posicaoconsolidadaActivity;
import fqk;
import frq;
import goj;
import gpu;
import hdb;
import hdc;
import heq;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import nai;
import naq;

public class DPPComprovanteActivity extends goj {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private TextView E;
  
  private heq F;
  
  private int G;
  
  private TextView H;
  
  private TextView I;
  
  private TextView J;
  
  private TextView K;
  
  private ImageView L;
  
  private final String a = "DPPComprovanteActivity";
  
  private ListView b;
  
  private fqk c;
  
  private DPPComprovanteActivity f;
  
  private Button g;
  
  private Button w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private String a(String paramString) {
    double d = Double.parseDouble(paramString.replaceAll("[R$,.]", ""));
    paramString = NumberFormat.getCurrencyInstance().format(d / 100.0D).substring(2);
    return "R$ " + paramString;
  }
  
  private void b() {
    this.x.setText(this.F.p());
    this.y.setText(nai.j(this.F.u()));
    if (this.F.g() == null) {
      this.z.setText("Nova conta");
    } else {
      this.z.setText(naq.c(this.F.d(), this.F.g()));
    } 
    this.I.setText(naq.c(this.F.c(), this.F.f()));
    this.A.setText(a(this.F.s()));
    this.B.setText(this.F.n());
    this.C.setText(this.F.a());
    int i = Integer.parseInt(this.F.r());
    if (i == 0) {
      this.D.setText("Indeterminado");
    } else {
      this.D.setText(String.valueOf(i));
    } 
    this.E.setText(this.F.b());
    String str = (new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date());
    this.K.setText(str);
    this.J.setText(this.F.w());
    if (this.G == 2) {
      this.H.setText("Exclusão de Aplicação Programada em Poupança");
      this.C.setText(this.F.l().toString().substring(3));
      this.B.setText(this.F.l().toString().substring(0, 2));
      this.E.setText(this.F.j().toString().substring(3));
    } 
  }
  
  public String a() {
    return a(2131756334);
  }
  
  public void onBackPressed() {
    startActivity((new Intent(getApplicationContext(), Poupanca_posicaoconsolidadaActivity.class)).addFlags(67108864));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968998);
    frq.a("Poupanca");
    this.f = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    this.g = (Button)findViewById(2131757044);
    this.g.setOnClickListener((View.OnClickListener)new hdb(this));
    this.w = (Button)findViewById(2131756354);
    this.w.setOnClickListener((View.OnClickListener)new hdc(this));
    gpu.a((Activity)this, actionBar, null);
    this.L = (ImageView)findViewById(2131755251);
    this.x = (TextView)findViewById(2131757026);
    this.y = (TextView)findViewById(2131757028);
    this.z = (TextView)findViewById(2131757030);
    this.A = (TextView)findViewById(2131757032);
    this.B = (TextView)findViewById(2131757034);
    this.C = (TextView)findViewById(2131757036);
    this.D = (TextView)findViewById(2131757038);
    this.E = (TextView)findViewById(2131757040);
    this.H = (TextView)findViewById(2131757020);
    this.I = (TextView)findViewById(2131757024);
    Bundle bundle = getIntent().getExtras();
    this.F = (heq)bundle.getSerializable("dpp");
    this.G = bundle.getInt("opcao");
    this.J = (TextView)findViewById(2131757043);
    this.K = (TextView)findViewById(2131756353);
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\dpp\DPPComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */