package com.santander.app.emprestimo.antecipacaoDT.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import gky;
import grs;
import hii;
import hij;
import hit;
import hjb;
import hje;
import java.util.ArrayList;
import mzr;
import naj;
import naq;

public class SimulacaoAntecipacaoDTPasso2Activity extends grs {
  private final String a = "SimulacaoAntecipacaoDTPasso2Activity";
  
  private Activity b;
  
  private TextView c;
  
  private TextView d;
  
  private ListView e;
  
  private Button f;
  
  private Button g;
  
  private hjb w;
  
  private hje x;
  
  private ArrayList<gky> y;
  
  private void a() {
    this.w = (hjb)getIntent().getExtras().getSerializable("simularAntecipacaoDT");
    this.x = (hje)getIntent().getExtras().getSerializable("simularAntecipacaoRequest");
    b();
    this.c = (TextView)findViewById(2131757182);
    this.d = (TextView)findViewById(2131757183);
    this.e = (ListView)findViewById(2131757187);
    this.f = (Button)findViewById(2131757188);
    this.g = (Button)findViewById(2131757189);
    this.g.setOnClickListener((View.OnClickListener)new hii(this));
    this.f.setOnClickListener((View.OnClickListener)new hij(this));
    hit hit = new hit((Context)this, this.y);
    this.e.setAdapter((ListAdapter)hit);
    this.d.setText(naq.c(mzr.e(), mzr.f()));
  }
  
  private void b() {
    this.y = new ArrayList<gky>();
    gky gky = new gky("Valor do Empréstimo", naj.f(this.w.e()));
    this.y.add(gky);
    gky = new gky("Valor do IOF (financiado)", naj.f(this.w.f()));
    this.y.add(gky);
    gky = new gky("Valor Total Financiado", naj.f(this.w.i()));
    this.y.add(gky);
    gky = new gky("Valor Total do Empréstimo com Encargos", naj.f(this.w.h()));
    gky.a(true);
    this.y.add(gky);
    gky = new gky("Taxa de Juros Mensal", naj.o(this.w.k().e()) + "%");
    this.y.add(gky);
    gky = new gky("Taxa de Juros Anual", naj.o(this.w.k().d()) + "%");
    this.y.add(gky);
    gky = new gky("Custo Efetivo Total - CET - mensal", naj.o(this.w.k().b()) + "%");
    this.y.add(gky);
    gky = new gky("Custo Efetivo Total - CET - anual", naj.o(this.w.k().a()) + "%");
    this.y.add(gky);
    gky = new gky("Prazo Total da Operação", this.w.d() + " dias");
    this.y.add(gky);
    gky = new gky("Data de Vencimento", this.w.b());
    this.y.add(gky);
    gky = new gky("Valor da Parcela no Vencimento", naj.f(this.w.g()));
    this.y.add(gky);
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969017);
    c(2131298966);
    this.b = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoDT\activity\SimulacaoAntecipacaoDTPasso2Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */