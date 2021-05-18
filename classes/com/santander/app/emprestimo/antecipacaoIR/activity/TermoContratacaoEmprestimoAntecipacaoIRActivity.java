package com.santander.app.emprestimo.antecipacaoIR.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import com.ca.android.app.CaMDOWebView;
import gky;
import grs;
import hju;
import hjv;
import hjw;
import hjx;
import hjy;
import hjz;
import hki;
import hkp;
import java.util.ArrayList;
import mxn;

public class TermoContratacaoEmprestimoAntecipacaoIRActivity extends grs {
  private WebView A;
  
  private Dialog B;
  
  private hkp C;
  
  private hki D;
  
  private ArrayList<gky> E;
  
  private final String a = "TermoContratacaoEmprestimoAntecipacaoIRActivity";
  
  private Activity b;
  
  private RelativeLayout c;
  
  private RelativeLayout d;
  
  private RelativeLayout e;
  
  private RelativeLayout f;
  
  private Button g;
  
  private Button w;
  
  private Button x;
  
  private CheckBox y;
  
  private WebView z;
  
  private void a() {
    this.C = (hkp)getIntent().getExtras().getSerializable("simularAntecipacaoRequest");
    this.E = (ArrayList<gky>)getIntent().getExtras().getSerializable("listaValoresCET");
    this.d = (RelativeLayout)findViewById(2131757151);
    this.c = (RelativeLayout)findViewById(2131757148);
    this.A = (WebView)findViewById(2131757955);
    this.y = (CheckBox)findViewById(2131757153);
    this.f = (RelativeLayout)findViewById(2131757152);
    this.e = (RelativeLayout)findViewById(2131757150);
    this.g = (Button)findViewById(2131757045);
    this.w = (Button)findViewById(2131757046);
    this.x = (Button)findViewById(2131757154);
    this.z = (WebView)findViewById(2131757942);
    this.w.setOnClickListener((View.OnClickListener)new hju(this));
    this.g.setOnClickListener((View.OnClickListener)new hjv(this));
    this.y.setOnClickListener((View.OnClickListener)new hjw(this));
    this.x.setOnClickListener((View.OnClickListener)new hjx(this));
    b();
  }
  
  private void b() {
    CaMDOWebView.loadUrl(this.z, "file:///android_asset/resumo_contratual_antecipacaoIR.html");
  }
  
  private void c() {
    Dialog dialog = new Dialog((Context)this.b, 2131427876);
    dialog.setContentView(2130969210);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button1 = (Button)dialog.findViewById(2131755738);
    Button button2 = (Button)dialog.findViewById(2131758433);
    button1.setText("Sim");
    hjy hjy = new hjy(this, dialog);
    button2.setText("Não");
    hjz hjz = new hjz(this, dialog);
    String str1 = getString(2131298983);
    String str2 = getString(2131298138);
    mxn.a(this.b, dialog, str1, str2, (View.OnClickListener)hjy, (View.OnClickListener)hjz);
  }
  
  public void onBackPressed() {
    if (this.f.isShown())
      c(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969013);
    c(2131298967);
    this.b = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoIR\activity\TermoContratacaoEmprestimoAntecipacaoIRActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */