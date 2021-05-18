package com.santander.app.comprovantes.activity;

import aep;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;
import com.santander.app.MinhaConta;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import gku;
import gky;
import goj;
import guy;
import guz;
import gvt;
import java.util.ArrayList;
import java.util.Date;
import jsp;
import jsr;
import mzu;
import nak;

public class ComprovanteBaseDDAActivity extends goj {
  private LinearLayout A;
  
  private LinearLayout B;
  
  private jsp C;
  
  private jsr D;
  
  private String E;
  
  protected LinearLayout a;
  
  protected LinearLayout b;
  
  protected LinearLayout c;
  
  private ImageView f;
  
  private TextView g;
  
  private TextView w;
  
  private ImageView x;
  
  private TextView y;
  
  private TextView z;
  
  private String a(ArrayList<gku> paramArrayList, String paramString) {
    for (gku gku : paramArrayList) {
      if (gku.b() != null && gku.b().equals(paramString))
        return gku.c(); 
    } 
    return "";
  }
  
  private void f() {
    this.c = (LinearLayout)findViewById(2131755416);
    this.A = (LinearLayout)findViewById(2131756501);
    this.B = (LinearLayout)findViewById(2131755419);
    this.a = (LinearLayout)findViewById(2131755436);
    this.b = (LinearLayout)findViewById(2131755437);
    this.f = (ImageView)findViewById(2131755251);
    this.g = (TextView)findViewById(2131755417);
    this.w = (TextView)findViewById(2131756495);
    this.x = (ImageView)findViewById(2131755418);
    this.y = (TextView)findViewById(2131755425);
    this.z = (TextView)findViewById(2131755423);
    if (this.E != null) {
      this.g.setText("Agendamento não realizado");
    } else {
      this.g.setText("Agendamento realizado com sucesso!");
    } 
    this.z.setText(nak.a(new Date(), "dd/MM/yyyy - HH:mm:ss"));
    if (this.D.getAutenticacao() == null || this.D.getAutenticacao().isEmpty()) {
      ((TextView)findViewById(2131755424)).setVisibility(8);
      this.y.setVisibility(8);
    } else {
      this.y.setText(this.D.getAutenticacao());
    } 
    this.b.setOnClickListener((View.OnClickListener)new guy(this));
    this.a.setOnClickListener((View.OnClickListener)new guz(this));
    if (this.E != null) {
      this.x.setImageResource(2130838702);
      this.w.setText(this.E);
      return;
    } 
    this.w.setVisibility(8);
    this.x.setImageResource(2130838238);
  }
  
  private void g() {
    try {
      if (this.E == null) {
        TextView textView1 = new TextView((Context)this);
        textView1.setText("Nome do beneficiário original: " + a(this.D.m(), "Beneficiário"));
        TextView textView2 = new TextView((Context)this);
        textView2.setText("Valor do título: " + a(this.D.m(), "Valor a receber "));
        TextView textView3 = new TextView((Context)this);
        Date date = nak.a(this.D.q(), "yyyyMMdd");
        textView3.setText("Data de vencimento: " + nak.a(date, "dd/MM/yyyy"));
        TextView textView4 = new TextView((Context)this);
        textView4.setText("Agendado para: " + nak.a(this.C.c().getTime(), "dd/MM/yyyy"));
        TextView textView5 = new TextView((Context)this);
        textView5.setText("Número de recorrências: " + String.valueOf(this.C.a()));
        TextView textView6 = new TextView((Context)this);
        textView6.setText("Valor máximo para pagamento recorrente: R$ ".concat(aep.a(Double.valueOf(this.C.b()))));
        this.B.addView((View)textView1);
        this.B.addView((View)textView2);
        this.B.addView((View)textView3);
        this.B.addView((View)textView4);
        this.B.addView((View)textView5);
        this.B.addView((View)textView6);
        return;
      } 
      this.B.setVisibility(8);
      return;
    } catch (Exception exception) {
      Log.e(ComprovanteBaseDDAActivity.class.getSimpleName(), Log.getStackTraceString(exception));
      return;
    } 
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
  
  public void a() {
    Intent intent;
    if (this.v.f().e().booleanValue()) {
      intent = new Intent((Context)this, HomeLogadaNaoCorrentistaActivity.class);
    } else {
      intent = new Intent((Context)this, HomeLogadaActivity.class);
    } 
    startActivity(intent);
  }
  
  public void a(ArrayList<gky> paramArrayList) {
    if (paramArrayList != null)
      for (gky gky : paramArrayList)
        this.A.addView((View)a((Context)this, gky));  
  }
  
  public void b() {
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
  
  public void c() {
    this.a.setVisibility(0);
    this.b.setVisibility(0);
    this.f.setVisibility(8);
  }
  
  public String d() {
    this.a.setVisibility(8);
    this.b.setVisibility(8);
    this.f.setVisibility(0);
    return a(2131755416);
  }
  
  public void e() {
    a((new gvt()).a());
  }
  
  public void k() {
    a("", "", d());
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968868);
    c("Comprovante");
    this.C = (jsp)getIntent().getSerializableExtra("AgendamentoRecorrente");
    this.D = (jsr)getIntent().getSerializableExtra("Titulos");
    this.E = getIntent().getStringExtra("errorMessage");
    f();
    g();
    e();
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
  
  protected void onResume() {
    super.onResume();
    c();
    if (this.E != null)
      this.a.setVisibility(8); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\comprovantes\activity\ComprovanteBaseDDAActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */