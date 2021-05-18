package com.santander.app.emprestimo.antecipacaoDT.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import gkx;
import gky;
import grs;
import hhv;
import hhw;
import hhx;
import hhy;
import hir;
import hix;
import hje;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import mxn;
import mzr;
import naq;

public class CustoEfetivoTotalAntecipacaoDTActivity extends grs {
  private ListView a;
  
  private List<gkx> b;
  
  private ArrayList<gky> c;
  
  private CheckBox d;
  
  private Button e;
  
  private TextView f;
  
  private TextView g;
  
  private hix w;
  
  private ArrayList<gky> x;
  
  private hje y;
  
  private void a() {
    this.y = (hje)getIntent().getExtras().getSerializable("simularAntecipacaoRequest");
    this.b = (ArrayList)getIntent().getExtras().getSerializable("listaCET");
    this.c = (ArrayList<gky>)getIntent().getExtras().getSerializable("listaCustoCET");
    this.w = (hix)getIntent().getExtras().getSerializable("custoEfetivoTotalDTModel");
    this.a = (ListView)findViewById(2131756692);
    this.f = (TextView)findViewById(2131756684);
    this.g = (TextView)findViewById(2131756686);
    this.e = (Button)findViewById(2131756695);
    this.e.setOnClickListener((View.OnClickListener)new hhv(this));
    this.d = (CheckBox)findViewById(2131756694);
    this.d.setOnClickListener((View.OnClickListener)new hhw(this));
    d();
  }
  
  private void b() {
    gky gky = new gky("Titular: ", mzr.g());
    gky.a(true);
    this.x = new ArrayList<gky>();
    this.x.add(gky);
    gky = new gky("Conta: ", naq.c(mzr.e(), mzr.f()));
    this.x.add(gky);
    for (gky gky1 : this.c) {
      gky1.a(gky1.b() + ": ");
      this.x.add(gky1);
    } 
  }
  
  private void c() {
    hir hir = new hir((Context)this, this.b);
    this.a.setAdapter((ListAdapter)hir);
  }
  
  private void d() {
    this.f.setText(mzr.g());
    this.g.setText(naq.h(mzr.f()));
  }
  
  private void e() {
    this.v.f().i(this.w.getTokenTransacao());
    Intent intent = new Intent((Context)this, AntecipacaoDTConfirmacaoActivity.class);
    intent.putExtra("listaCustoCET", this.x);
    intent.putExtra("simularAntecipacaoRequest", (Serializable)this.y);
    startActivity(intent);
  }
  
  private void f() {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130969210);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText("Sim");
    hhx hhx = new hhx(this, dialog);
    button1.setText("Não");
    hhy hhy = new hhy(this, dialog);
    mxn.a((Activity)this, dialog, getString(2131298982), getString(2131298137), (View.OnClickListener)hhx, (View.OnClickListener)hhy);
  }
  
  public void onBackPressed() {
    f();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968897);
    c(2131298966);
    a();
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoDT\activity\CustoEfetivoTotalAntecipacaoDTActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */