package com.santander.app.emprestimo.antecipacaoIR.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import gkx;
import gky;
import gpt;
import grs;
import hjr;
import hjs;
import hjt;
import hke;
import hkf;
import hkm;
import hkp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import mzr;
import naj;
import naq;

public class SimulacaoAntecipacaoIRPasso2Activity extends grs {
  private ArrayList<gky> A;
  
  private final String a = "SimulacaoAntecipacaoIRPasso2Activity";
  
  private Activity b;
  
  private TextView c;
  
  private TextView d;
  
  private ListView e;
  
  private ListView f;
  
  private Button g;
  
  private Button w;
  
  private ImageButton x;
  
  private hkm y;
  
  private hkp z;
  
  private void a() {
    this.y = (hkm)getIntent().getExtras().getSerializable("simularAntecipacaoIR");
    this.z = (hkp)getIntent().getExtras().getSerializable("simularAntecipacaoIRRequest");
    this.c = (TextView)findViewById(2131757182);
    this.d = (TextView)findViewById(2131757183);
    this.e = (ListView)findViewById(2131757205);
    this.f = (ListView)findViewById(2131757187);
    this.g = (Button)findViewById(2131757208);
    this.w = (Button)findViewById(2131757209);
    this.x = (ImageButton)findViewById(2131757207);
    this.x.setOnClickListener((View.OnClickListener)new hjr(this));
    this.w.setOnClickListener((View.OnClickListener)new hjs(this));
    this.g.setOnClickListener((View.OnClickListener)new hjt(this));
    c();
    this.d.setText(naq.c(mzr.e(), mzr.f()));
  }
  
  private void b() {
    gky gky = new gky("Vencimento da 1º Parcela (juros)", this.y.c());
    this.A.add(gky);
  }
  
  private void c() {
    List<gky> list = d();
    hkf hkf = new hkf((Context)this, list);
    this.e.setAdapter((ListAdapter)hkf);
    this.e.setEnabled(false);
    gpt.a(this.e);
    hkf.notifyDataSetChanged();
    gpt.a(this.e);
    if (this.A == null)
      this.A = new ArrayList<gky>(); 
    this.A.addAll(list);
    hke hke = new hke((Context)this, e());
    this.f.setAdapter((ListAdapter)hke);
    this.f.setEnabled(false);
    gpt.a(this.f);
    hke.notifyDataSetChanged();
    gpt.a(this.f);
  }
  
  private List<gky> d() {
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Valor", naj.f(this.y.s())));
    arrayList.add(new gky("Juros Mensal", naj.o(this.y.q()) + "%"));
    arrayList.add(new gky("Juros Anual", naj.o(this.y.p()) + "%"));
    arrayList.add(new gky("CET - Mensal", naj.o(this.y.b()) + "%"));
    arrayList.add(new gky("CET - Anual", naj.o(this.y.a()) + "%"));
    gky gky = new gky("IOF Total do Período", naj.f(this.y.n()));
    gky.b(true);
    arrayList.add(gky);
    arrayList.add(new gky("Total com Encargos", naj.f(this.y.r())));
    gky = new gky("Vencimento da Operação", this.y.m());
    gky.b(true);
    arrayList.add(gky);
    return arrayList;
  }
  
  private List<gkx> e() {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM");
    LinkedList<gkx> linkedList = new LinkedList();
    try {
      if (this.y.c() != null && this.y.v() != null && this.y.F() != null && this.y.P() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.c())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.F())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.v())));
        gkx.c().add(new gky("Total:", naj.f(this.y.P())));
        linkedList.add(gkx);
      } 
      if (this.y.d() != null && this.y.w() != null && this.y.G() != null && this.y.Q() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.d())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.G())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.w())));
        gkx.c().add(new gky("Total:", naj.f(this.y.Q())));
        linkedList.add(gkx);
      } 
      if (this.y.e() != null && this.y.x() != null && this.y.H() != null && this.y.R() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.e())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.H())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.x())));
        gkx.c().add(new gky("Total:", naj.f(this.y.R())));
        linkedList.add(gkx);
      } 
      if (this.y.f() != null && this.y.y() != null && this.y.I() != null && this.y.S() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.f())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.I())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.y())));
        gkx.c().add(new gky("Total:", naj.f(this.y.S())));
        linkedList.add(gkx);
      } 
      if (this.y.g() != null && this.y.z() != null && this.y.J() != null && this.y.T() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.g())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.J())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.z())));
        gkx.c().add(new gky("Total:", naj.f(this.y.T())));
        linkedList.add(gkx);
      } 
      if (this.y.h() != null && this.y.A() != null && this.y.K() != null && this.y.U() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.h())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.K())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.A())));
        gkx.c().add(new gky("Total:", naj.f(this.y.U())));
        linkedList.add(gkx);
      } 
      if (this.y.i() != null && this.y.B() != null && this.y.L() != null && this.y.V() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.i())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.L())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.B())));
        gkx.c().add(new gky("Total:", naj.f(this.y.V())));
        linkedList.add(gkx);
      } 
      if (this.y.j() != null && this.y.C() != null && this.y.M() != null && this.y.W() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.j())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.M())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.C())));
        gkx.c().add(new gky("Total:", naj.f(this.y.W())));
        linkedList.add(gkx);
      } 
      if (this.y.k() != null && this.y.D() != null && this.y.N() != null && this.y.X() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.k())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.N())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.D())));
        gkx.c().add(new gky("Total:", naj.f(this.y.X())));
        linkedList.add(gkx);
      } 
      if (this.y.l() != null && this.y.E() != null && this.y.O() != null && this.y.Y() != null) {
        gkx gkx = new gkx();
        gkx.a(simpleDateFormat.format(simpleDateFormat.parse(this.y.l())));
        gkx.a(new ArrayList());
        gkx.c().add(new gky("Principal:", naj.f(this.y.O())));
        gkx.c().add(new gky("Juros:", naj.f(this.y.E())));
        gkx.c().add(new gky("Total:", naj.f(this.y.Y())));
        linkedList.add(gkx);
      } 
      return linkedList;
    } catch (Exception exception) {
      return null;
    } 
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969019);
    c(2131298967);
    this.b = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoIR\activity\SimulacaoAntecipacaoIRPasso2Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */