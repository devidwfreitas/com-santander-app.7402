package com.santander.app.emprestimo.antecipacaoIR.activity;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import frq;
import grs;
import guj;
import hjm;
import hjn;
import hjo;
import hjp;
import hkh;
import hkk;
import hxk;
import mzr;
import naq;

public class SimulacaoAntecipacaoIRPasso1Activity extends grs {
  private Dialog A;
  
  private guj B;
  
  private guj C;
  
  private TextView D;
  
  private final String a = "SimulacaoAntecipacaoIRPasso1Activity";
  
  private Button b;
  
  private RelativeLayout c;
  
  private EditText d;
  
  private TextView e;
  
  private TextView f;
  
  private EditText g;
  
  private TextView w;
  
  private Activity x;
  
  private hkk y;
  
  private hkh z;
  
  private void a() {
    this.B = new guj();
    this.C = new guj();
    b();
    this.c = (RelativeLayout)findViewById(2131757198);
    this.b = (Button)findViewById(2131757200);
    this.d = (EditText)findViewById(2131757197);
    this.e = (TextView)findViewById(2131757948);
    this.f = (TextView)findViewById(2131757951);
    this.g = (EditText)findViewById(2131757957);
    this.w = (TextView)findViewById(2131757958);
    this.w.setText(getResources().getString(2131298063) + " " + this.y.c());
    this.C.a(this.d);
    this.d.addTextChangedListener((TextWatcher)this.C);
    this.B.a(this.g);
    this.g.addTextChangedListener((TextWatcher)this.B);
    this.D = (TextView)findViewById(2131757163);
    c();
    this.d.setOnFocusChangeListener((View.OnFocusChangeListener)new hjm(this));
    this.d.setOnEditorActionListener((TextView.OnEditorActionListener)new hjn(this));
    this.b.setOnClickListener((View.OnClickListener)new hjo(this));
  }
  
  private void b() {
    hxk hxk = this.v.f().u().a().f();
    this.y = new hkk();
    this.y.a(hxk.a());
    this.y.c(hxk.d());
    this.y.b(hxk.b());
    this.y.d(hxk.c());
  }
  
  private void c() {
    this.D.setText(naq.c(mzr.e(), mzr.f()));
  }
  
  private void d() {
    (new hjp(this, null)).execute((Object[])new hkk[] { this.y });
  }
  
  private boolean e() {
    Double double_;
    double d1 = Double.parseDouble(this.z.a());
    double d2 = Double.parseDouble(this.z.b());
    if (this.g.getText() != null || !this.g.getText().equals("")) {
      double_ = Double.valueOf(Double.parseDouble(this.g.getText().toString().replace(".", "").replace(",", ".")));
      frq.a("CreditoFinanciamento_AnteciparIR_ValorAContratar_Acao", double_.doubleValue());
    } else {
      double_ = new Double("0.00");
    } 
    return (double_.doubleValue() <= Double.valueOf(d1).doubleValue() && double_.doubleValue() >= Double.valueOf(d2).doubleValue());
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969018);
    c(2131298967);
    this.x = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoIR\activity\SimulacaoAntecipacaoIRPasso1Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */