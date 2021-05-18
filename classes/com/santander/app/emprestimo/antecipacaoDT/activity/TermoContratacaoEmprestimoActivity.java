package com.santander.app.emprestimo.antecipacaoDT.activity;

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
import hik;
import hil;
import him;
import hin;
import hio;
import hip;
import hix;
import hje;
import java.util.ArrayList;
import mxn;

public class TermoContratacaoEmprestimoActivity extends grs {
  private static final String F = "https://drive.google.com/viewerng/viewer?embedded=true&url=";
  
  private WebView A;
  
  private Dialog B;
  
  private hje C;
  
  private hix D;
  
  private ArrayList<gky> E;
  
  private final String a = "TermoContratacaoEmprestimoActivity";
  
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
    this.C = (hje)getIntent().getExtras().getSerializable("simularAntecipacaoRequest");
    this.E = (ArrayList<gky>)getIntent().getExtras().getSerializable("listaValoresCET");
    this.d = (RelativeLayout)findViewById(2131757146);
    this.c = (RelativeLayout)findViewById(2131757148);
    this.A = (WebView)findViewById(2131757943);
    this.y = (CheckBox)findViewById(2131757149);
    this.f = (RelativeLayout)findViewById(2131757147);
    this.e = (RelativeLayout)findViewById(2131757145);
    this.g = (Button)findViewById(2131757045);
    this.w = (Button)findViewById(2131757046);
    this.x = (Button)findViewById(2131756695);
    this.z = (WebView)findViewById(2131757941);
    this.w.setOnClickListener((View.OnClickListener)new hik(this));
    this.g.setOnClickListener((View.OnClickListener)new hil(this));
    this.y.setOnClickListener((View.OnClickListener)new him(this));
    this.x.setOnClickListener((View.OnClickListener)new hin(this));
    b();
  }
  
  private void b() {
    CaMDOWebView.loadUrl(this.z, "file:///android_asset/resumo_contratual_antecipacao13.html");
  }
  
  private void c() {
    Dialog dialog = new Dialog((Context)this.b, 2131427876);
    dialog.setContentView(2130969210);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button1 = (Button)dialog.findViewById(2131755738);
    Button button2 = (Button)dialog.findViewById(2131758433);
    button1.setText("Sim");
    hio hio = new hio(this, dialog);
    button2.setText("Não");
    hip hip = new hip(this, dialog);
    String str1 = getString(2131298982);
    String str2 = getString(2131298137);
    mxn.a(this.b, dialog, str1, str2, (View.OnClickListener)hio, (View.OnClickListener)hip);
  }
  
  public void onBackPressed() {
    if (this.f.isShown())
      c(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969012);
    c(2131298966);
    this.b = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoDT\activity\TermoContratacaoEmprestimoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */