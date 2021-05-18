package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.santander.app.sugestaocdb.presentation.SugestaoCDB;
import fmy;
import fmz;
import fna;
import fnb;
import fnc;
import fnd;
import fne;
import fnf;
import fng;
import frq;
import ftk;
import ftn;
import ftq;
import fwb;
import fwi;
import fwj;
import fwk;
import gpu;
import grs;
import hau;
import java.io.Serializable;
import java.util.Vector;
import mzr;
import naj;
import nak;
import naq;
import nfe;

public class Rendafixa_posicaoconsolidadaActivity extends grs {
  private final String a = "Rendafixa_posicaoconsolidadaActivity";
  
  private Activity b;
  
  private fwb c;
  
  private ProgressBar d;
  
  private fnf e = null;
  
  private Dialog f = null;
  
  private boolean g;
  
  private nfe w = null;
  
  private fng x;
  
  private nfe y = null;
  
  private void a(View paramView, fwb paramfwb) {
    LinearLayout linearLayout = (LinearLayout)paramView.findViewById(2131758517);
    Vector<fwj> vector = paramfwb.f();
    Vector<fwi> vector1 = new Vector();
    this.c = new fwb();
    if (vector != null && vector.size() > 0)
      for (int j = 0; j < vector.size(); j++) {
        fwj fwj = vector.get(j);
        int k;
        for (k = 0; k < fwj.g().size(); k++) {
          fwk fwk = fwj.g().get(k);
          int m;
          for (m = 0; m < fwk.g().size(); m++) {
            fwi fwi = fwk.g().get(m);
            fwi.o(fwj.a());
            fwi.p(fwj.b());
            vector1.add(fwi);
          } 
        } 
        if (fwj.c() != null)
          if (this.c.a() == null) {
            this.c.a(fwj.c());
          } else {
            k = Integer.parseInt(this.c.a());
            int m = Integer.parseInt(fwj.c());
            this.c.a((k + m) + "");
          }  
        if (fwj.d() != null)
          if (this.c.b() == null) {
            this.c.b(fwj.d());
          } else {
            k = Integer.parseInt(this.c.b());
            int m = Integer.parseInt(fwj.d());
            this.c.b((k + m) + "");
          }  
        if (fwj.f() != null)
          if (this.c.d() == null) {
            this.c.d(fwj.f());
          } else {
            k = Integer.parseInt(this.c.d());
            int m = Integer.parseInt(fwj.f());
            this.c.d((k + m) + "");
          }  
        if (fwj.e() != null)
          if (this.c.c() == null) {
            this.c.c(fwj.e());
          } else {
            k = Integer.parseInt(this.c.c());
            int m = Integer.parseInt(fwj.e());
            this.c.c((m + k) + "");
          }  
      }  
    for (int i = 0; i < vector1.size(); i++) {
      String str;
      View view2 = getLayoutInflater().inflate(2130969235, null);
      fwi fwi = vector1.get(i);
      TextView textView1 = (TextView)view2.findViewById(2131758538);
      TextView textView2 = (TextView)view2.findViewById(2131758539);
      TextView textView3 = (TextView)view2.findViewById(2131758541);
      TextView textView4 = (TextView)view2.findViewById(2131758542);
      TextView textView5 = (TextView)view2.findViewById(2131758543);
      TextView textView6 = (TextView)view2.findViewById(2131758544);
      TextView textView7 = (TextView)view2.findViewById(2131758545);
      TextView textView8 = (TextView)view2.findViewById(2131758546);
      TextView textView9 = (TextView)view2.findViewById(2131758536);
      if (fwi.e().equalsIgnoreCase("CDB RECOMP MAIS") || fwi.e().equalsIgnoreCase("CDB PROGRESSIVO 100M")) {
        str = fwi.e() + " (Antigo CDB Recompensa Mais)";
      } else if (fwi.e().equalsIgnoreCase("CDB RECOMPENSA") || fwi.e().equalsIgnoreCase("CDB PROGRESSIVO 10M")) {
        str = fwi.e() + " (Antigo CDB Recompensa)";
      } else {
        str = fwi.e();
      } 
      textView1.setText(str);
      textView2.setText(fwi.d());
      textView3.setText(nak.l(fwi.a()));
      textView4.setText(nak.l(fwi.b()));
      textView5.setText(naj.f(fwi.j()));
      textView6.setText(naj.f(fwi.h()));
      textView7.setText(naj.f(fwi.q()));
      textView8.setText(naj.f(fwi.m()));
      textView9.setText(fwi.s());
      view2.findViewById(2131758490).setOnClickListener((View.OnClickListener)new fna(this));
      View view1 = view2.findViewById(2131755118);
      view1.setTag(fwi);
      view1.setOnClickListener((View.OnClickListener)new fnb(this));
      linearLayout.addView(view2);
    } 
  }
  
  private void c() {
    LinearLayout linearLayout = (LinearLayout)findViewById(2131758531);
    fwb fwb1 = hau.a().j();
    for (int i = 0; i < 1; i++) {
      View view = getLayoutInflater().inflate(2130969233, null);
      Button button1 = (Button)view.findViewById(2131758381);
      button1.setOnClickListener((View.OnClickListener)new fmy(this));
      Button button2 = (Button)view.findViewById(2131758532);
      button2.setOnClickListener((View.OnClickListener)new fmz(this));
      if (mzr.a()) {
        button1.setEnabled(false);
        button2.setEnabled(false);
      } else {
        button1.setEnabled(true);
        button2.setEnabled(true);
      } 
      TextView textView1 = (TextView)view.findViewById(2131758506);
      TextView textView2 = (TextView)view.findViewById(2131758507);
      TextView textView3 = (TextView)view.findViewById(2131758533);
      TextView textView4 = (TextView)view.findViewById(2131758535);
      TextView textView5 = (TextView)view.findViewById(2131758516);
      TextView textView6 = (TextView)view.findViewById(2131758534);
      a(view, fwb1);
      textView1.setText(naq.c(mzr.e(), mzr.f()));
      textView2.setText(nak.m(nak.a()));
      textView3.setText(naj.f(this.c.a()));
      textView4.setText(naj.f(this.c.b()));
      textView5.setText(naj.f(this.c.d()));
      textView6.setText(naj.f(this.c.c()));
      linearLayout.addView(view);
    } 
  }
  
  private void d() {
    String str = getResources().getString(2131297765);
    View view = getLayoutInflater().inflate(2130969216, null);
    ftn ftn = this.c.h();
    LinearLayout linearLayout = (LinearLayout)view.findViewById(2131758448);
    for (int i = 0; i < ftn.a().size(); i++) {
      LinearLayout linearLayout1 = (LinearLayout)getLayoutInflater().inflate(2130969223, null);
      ((TextView)linearLayout1.findViewById(2131758487)).setText(((ftk)ftn.a().get(i)).b());
      linearLayout1.setTag(ftn.a().get(i));
      linearLayout1.setOnClickListener((View.OnClickListener)new fnc(this, ftn, i));
      linearLayout.addView((View)linearLayout1);
    } 
    this.y = new nfe((Activity)this, str, view);
  }
  
  private void e() {
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
      linearLayout1.setOnClickListener((View.OnClickListener)new fnd(this));
      linearLayout.addView((View)linearLayout1);
    } 
    this.w = new nfe((Activity)this, str, view);
  }
  
  public void a() {
    setContentView(2130969234);
    this.d = (ProgressBar)findViewById(2131757077);
    (new fne(this, null)).execute((Object[])new Void[0]);
  }
  
  public void a(ftq paramftq) {
    Intent intent = new Intent((Context)this, RendaFixaAplicacaoActivity.class);
    intent.putExtra("listaProdutos", this.c.g().a());
    intent.putExtra("data", (Serializable)paramftq);
    startActivity(intent);
  }
  
  public void a(String paramString) {
    frq.a("Rendafixa_Aplicar", "Investimentos");
    frq.d("Investimentos_MeusInvestimentos_Acao", "Produto");
    frq.d("Investimentos_MeusInvestimentos", "CDB/LCI");
    Vector vector = this.c.g().a();
    Intent intent = new Intent((Context)this, SugestaoCDB.class);
    intent.putExtra("listaProdutos", vector);
    intent.putExtra("cdb", paramString);
    startActivity(intent);
  }
  
  public void b() {
    d();
    this.y.a();
  }
  
  public void goAplicar(View paramView) {
    frq.a("Rendafixa_Aplicar", "Investimentos");
    frq.d("Investimentos_RendaFixa_Acao", "Aplicar");
    this.e = new fnf(this, null);
    this.e.execute((Object[])new Void[0]);
  }
  
  public void goResgatar(View paramView) {
    frq.a("Rendafixa_Resgatar", "Investimentos");
    frq.d("Investimentos_RendaFixa_Acao", "Resgatar");
    this.x = new fng(this, null);
    this.x.execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298409));
    this.b = (Activity)this;
    this.g = getIntent().getBooleanExtra("exibe_lista", false);
    if (this.g) {
      this.e = new fnf(this, null);
      this.e.execute((Object[])new Void[0]);
      return;
    } 
    a();
  }
  
  public void openAplicacaoRendaFixa(View paramView) {
    this.w.b();
    ftq ftq = (ftq)paramView.getTag();
    Intent intent = new Intent((Context)this, RendaFixaAplicacaoActivity.class);
    intent.putExtra("listaProdutos", this.c.g().a());
    intent.putExtra("data", (Serializable)ftq);
    startActivity(intent);
  }
  
  public void openRendafixaDetahle(View paramView) {
    startActivity(new Intent((Context)this, Rendafixa_posicaoconsolidada_Detahle.class));
  }
  
  public void openRendafixaResgate(View paramView) {
    Intent intent = new Intent((Context)this, RendaFixaResgateActivity.class);
    intent.putExtra("itemListarProductosResgateRendaFixaBean", (Serializable)paramView.getTag());
    intent.putExtra("listaProdutos", (Serializable)this.c.h());
    startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\Rendafixa_posicaoconsolidadaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */