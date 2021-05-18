package com.santander.app.investimentos.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.PoupancaAplicacaoActivity;
import com.santander.app.RendaFixaAplicacaoActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.sugestaocdb.presentation.SugestaoCDB;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import frq;
import ftc;
import ftq;
import fwb;
import gpu;
import grs;
import java.io.Serializable;
import java.util.Vector;
import jkh;
import jki;
import jkj;
import jkk;
import jkl;
import jkm;
import jkn;
import jko;
import jkv;
import jkw;
import mzr;
import nat;
import nfe;

public class SemProdutoActivity extends grs implements jko {
  private Button A;
  
  private LinearLayout B;
  
  private RelativeLayout C;
  
  private RelativeLayout D;
  
  private nfe E = null;
  
  private jkv F;
  
  private Context G;
  
  private String a = "";
  
  private ftc b = new ftc();
  
  private fwb c = new fwb();
  
  private jkm d = null;
  
  private jkn e = null;
  
  private boolean f = false;
  
  private Dialog g = null;
  
  private ActionBar w;
  
  private ImageView x;
  
  private TextView y;
  
  private TextView z;
  
  private ftq b(String paramString) {
    Vector<ftq> vector = this.c.g().a();
    for (int i = 0; i < vector.size(); i++) {
      if (paramString != null) {
        if ("cdb10m".equalsIgnoreCase(paramString)) {
          if (((ftq)vector.get(i)).a().equalsIgnoreCase("0019"))
            return vector.get(i); 
        } else if ("cdb100m".equalsIgnoreCase(paramString) && ((ftq)vector.get(i)).a().equalsIgnoreCase("0025")) {
          return vector.get(i);
        } 
      } else {
        if (((ftq)vector.get(i)).a().equalsIgnoreCase("0011"))
          return vector.get(i); 
        if (((ftq)vector.get(i)).a().equalsIgnoreCase("0006"))
          return vector.get(i); 
        if (((ftq)vector.get(i)).a().equalsIgnoreCase("0022"))
          return vector.get(i); 
        if (((ftq)vector.get(i)).a().equalsIgnoreCase("0013"))
          return vector.get(i); 
      } 
    } 
    return null;
  }
  
  private void e() {
    this.i = (Activity)this;
    this.f = mzr.a();
    this.w = getSupportActionBar();
    this.w.setDisplayShowHomeEnabled(false);
    this.w.setDisplayShowTitleEnabled(false);
    this.C = (RelativeLayout)findViewById(2131756030);
    this.D = (RelativeLayout)findViewById(2131756034);
    this.C.setOnClickListener((View.OnClickListener)new jkh(this));
    this.D.setOnClickListener((View.OnClickListener)new jki(this));
    this.x = (ImageView)findViewById(2131756025);
    this.y = (TextView)findViewById(2131756026);
    this.z = (TextView)findViewById(2131756027);
    this.A = (Button)findViewById(2131756028);
    this.B = (LinearLayout)findViewById(2131756029);
    this.A.setVisibility(8);
    this.B.setVisibility(8);
  }
  
  private void f() {
    String str = getResources().getString(2131297762);
    View view = getLayoutInflater().inflate(2130969216, null);
    Vector<ftq> vector = this.c.g().a();
    LinearLayout linearLayout = (LinearLayout)view.findViewById(2131758448);
    for (int i = 0; i < vector.size(); i++) {
      LinearLayout linearLayout1 = (LinearLayout)getLayoutInflater().inflate(2130969223, null);
      ((TextView)linearLayout1.findViewById(2131758487)).setText(((ftq)vector.get(i)).b());
      linearLayout1.setTag(vector.get(i));
      if (this.v.f().i().equals("SE"))
        ((ImageView)linearLayout1.findViewById(2131756347)).setImageResource(2130837608); 
      linearLayout1.setOnClickListener((View.OnClickListener)new jkl(this));
      linearLayout.addView((View)linearLayout1);
    } 
    this.E = new nfe((Activity)this, str, view);
  }
  
  private void g() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.USUARIO_CONSULTIVO);
    startActivity(intent);
  }
  
  public void a() {
    this.a = "Poupança";
    gpu.a((Activity)this, this.w, getString(2131298407));
    this.A.setVisibility(0);
    this.z.setVisibility(8);
    this.B.setVisibility(8);
    if (Build.VERSION.SDK_INT >= 21) {
      this.x.setImageDrawable(getDrawable(2130838781));
    } else {
      this.x.setImageDrawable(getResources().getDrawable(2130838781));
    } 
    this.y.setText(getString(2131298399));
    this.A.setOnClickListener((View.OnClickListener)new jkj(this));
  }
  
  public void a(ftc paramftc) {
    Intent intent = new Intent((Context)this, PoupancaAplicacaoActivity.class);
    if (paramftc.a().size() > 0)
      intent.putExtra("data", (Serializable)paramftc); 
    startActivity(intent);
  }
  
  public void a(ftq paramftq) {
    Intent intent = new Intent((Context)this, RendaFixaAplicacaoActivity.class);
    intent.putExtra("listaProdutos", this.c.g().a());
    intent.putExtra("data", (Serializable)paramftq);
    startActivity(intent);
  }
  
  public void a(String paramString) {
    frq.a("Rendafixa_Aplicar", "Investimentos");
    Vector vector = this.c.g().a();
    Intent intent = new Intent((Context)this, SugestaoCDB.class);
    intent.putExtra("listaProdutos", vector);
    intent.putExtra("cdb", paramString);
    startActivity(intent);
  }
  
  public void b() {
    this.a = "Previdência";
    gpu.a((Activity)this, this.w, getString(2131298408));
    this.A.setVisibility(8);
    this.y.setVisibility(0);
    this.z.setVisibility(0);
    this.B.setVisibility(0);
    this.x.setImageDrawable(getDrawable(2130838761));
    this.y.setText(getString(2131298402));
    this.z.setText(getString(2131298401));
  }
  
  public void c() {
    this.a = "RendaFixa";
    gpu.a((Activity)this, this.w, getString(2131298409));
    this.A.setVisibility(0);
    this.z.setVisibility(8);
    this.B.setVisibility(8);
    this.x.setImageDrawable(ContextCompat.getDrawable(this.G, 2130838761));
    this.y.setText(getString(2131298467));
    this.A.setOnClickListener((View.OnClickListener)new jkk(this));
  }
  
  public void d() {
    this.A.callOnClick();
  }
  
  public void goAplicacaoPoupanca(View paramView) {
    frq.d("Investimentos_Poupanca_NovaPoupanca_Acao", "Aplicar");
    if (!this.f) {
      this.d = new jkm(this, null);
      this.d.execute((Object[])new Void[0]);
      return;
    } 
    g();
  }
  
  public void goAplicacaoRendafixa(View paramView) {
    if (!this.f) {
      this.e = new jkn(this, null);
      this.e.execute((Object[])new Void[0]);
      return;
    } 
    g();
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968742);
    this.G = (Context)this;
    e();
    this.F = (jkv)new jkw(this);
    this.F.a(getIntent());
  }
  
  protected void onPause() {
    super.onPause();
  }
  
  protected void onResume() {
    super.onResume();
  }
  
  public void openAplicacaoRendaFixa(View paramView) {
    this.E.b();
    ftq ftq = (ftq)paramView.getTag();
    Intent intent = new Intent((Context)this, RendaFixaAplicacaoActivity.class);
    intent.putExtra("listaProdutos", this.c.g().a());
    intent.putExtra("data", (Serializable)ftq);
    startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\presentation\SemProdutoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */