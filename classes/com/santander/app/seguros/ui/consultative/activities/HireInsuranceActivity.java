package com.santander.app.seguros.ui.consultative.activities;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import br.com.zup.multistatelayout.MultiStateLayout;
import frq;
import gpu;
import grs;
import ipi;
import java.util.LinkedList;
import java.util.List;
import ktq;
import lgt;
import lik;
import lir;
import mhj;
import miq;

public class HireInsuranceActivity extends grs {
  public static String a = "insurance-family";
  
  private MultiStateLayout b;
  
  private RecyclerView c;
  
  private ktq d;
  
  private ktq e;
  
  private lir f = (lir)new lgt(this);
  
  private void b() {
    this.c.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 1, false));
    lik lik = new lik(a(), this.c);
    lik.a(this.f);
    this.c.setAdapter((RecyclerView.Adapter)lik);
  }
  
  private void c() {
    try {
      ActionBar actionBar = getSupportActionBar();
      if (actionBar != null) {
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(false);
        actionBar.setDisplayShowCustomEnabled(true);
        gpu.a((Activity)this, actionBar, getString(2131297579));
      } 
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void d() {
    this.b = (MultiStateLayout)findViewById(2131755279);
    this.c = (RecyclerView)findViewById(2131755802);
  }
  
  private void e() {
    if (getIntent() != null && getIntent().hasExtra("extra_deeplink")) {
      String str = getIntent().getStringExtra("extra_deeplink");
      if (str.equalsIgnoreCase("deeplink_vida")) {
        if (this.d.j()) {
          frq.d("DeepLink_SegurosVida", "Elegivel");
          this.f.a(this.d);
          return;
        } 
        frq.d("DeepLink_SegurosVida", "NaoElegivel");
        return;
      } 
      if (str.equalsIgnoreCase("deeplink_acidente_pessoal")) {
        if (this.e.j()) {
          frq.d("DeepLink_SegurosAcidentePessoal", "Elegivel");
          this.f.a(this.e);
          return;
        } 
        frq.d("DeepLink_SegurosAcidentePessoal", "NaoElegivel");
        return;
      } 
      if (str.equalsIgnoreCase("deeplink_lista_produtos")) {
        frq.d("DeepLink_SegurosListaProdutos", "Elegivel");
        return;
      } 
    } 
  }
  
  public List<ktq> a() {
    ipi ipi = miq.C().f().C();
    LinkedList<ktq> linkedList = new LinkedList();
    this.d = new ktq();
    this.d.f("Vida");
    this.d.b("Prote????o Vida");
    this.d.c("Com ele, voc?? e sua fam??lia estar??o protegidos.");
    this.d.a(2130838530);
    ktq ktq2 = this.d;
    if (ipi.b("00000109") && !mhj.e()) {
      bool = true;
    } else {
      bool = false;
    } 
    ktq2.e(bool);
    this.d.b(1);
    this.d.a("Em caso de morte sua fam??lia recebe uma indeniza????o.");
    this.d.a("Em caso de invalidez permanente total ou parcial voc?? recebe uma indeniza????o.");
    linkedList.add(this.d);
    this.e = new ktq();
    this.e.f("Acidente Pessoais");
    this.e.b("Acidentes Pessoais");
    this.e.c("Apoio a voc?? e sua fam??lia em caso de imprevistos.");
    this.e.a(2130838316);
    ktq2 = this.e;
    if (ipi.b("00000109") && !mhj.e()) {
      bool = true;
      ktq2.e(bool);
      this.e.b(2);
      this.e.a("Em caso de morte acidental sua fam??lia recebe uma indeniza????o.");
      this.e.a("Em caso de invalidez permanente total ou parcial voc?? recebe uma indeniza????o.");
      this.e.a("Em caso de interna????o voc?? conta com uma cobertura.");
      linkedList.add(this.e);
      ktq ktq3 = new ktq();
      ktq3.f("Residencial");
      ktq3.b("Seguro Residencial");
      ktq3.c("A prote????o ?? para sua casa, a economia ?? para voc??.");
      ktq3.a(2130838619);
      ktq3.e(true);
      ktq3.b(3);
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Prote????o da sua resid??ncia em caso de roubo, inc??ndio, danos el??tricos, vendaval, granizo, entre outros.", new String[] { "Prote????o da sua resid??ncia" }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Reparos e tarefas do dia a dia, como consertos de eletrodom??sticos, fixa????o de quadros e persianas, e chaveiro.", new String[] { "Reparos e tarefas do dia a dia," }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Servi??os preventivos, como verifica????o de poss??veis vazamentos, revis??o de instala????o el??trica, limpeza de ralos e sif??es.", new String[] { "Servi??os preventivos," }));
      linkedList.add(ktq3);
      ktq3 = new ktq();
      ktq3.f("auto");
      ktq3.b("Seguro Auto");
      ktq3.c("Tranquilidade para voc?? e prote????o para seu carro.");
      ktq3.a(2130838335);
      ktq3.e(true);
      ktq3.b(5);
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Prote????o em diversas situa????es, sua tranquilidade garantida em caso de ter seu carro batido ou roubado.", new String[] { "Prote????o em diversas situa????es," }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Assist??ncia 24 horas para o seu carro, problemas mec??nicos, el??tricos, perda de chaves, troca de pneus ou bateria.", new String[] { "Assist??ncia 24 horas para o seu carro," }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Parcerias, descontos e diversas vantagens, descontos em estacionamento e aluguel de carro de passeio.", new String[] { "Parcerias, descontos e diversas vantagens," }));
      linkedList.add(ktq3);
      return linkedList;
    } 
    boolean bool = false;
    ktq2.e(bool);
    this.e.b(2);
    this.e.a("Em caso de morte acidental sua fam??lia recebe uma indeniza????o.");
    this.e.a("Em caso de invalidez permanente total ou parcial voc?? recebe uma indeniza????o.");
    this.e.a("Em caso de interna????o voc?? conta com uma cobertura.");
    linkedList.add(this.e);
    ktq ktq1 = new ktq();
    ktq1.f("Residencial");
    ktq1.b("Seguro Residencial");
    ktq1.c("A prote????o ?? para sua casa, a economia ?? para voc??.");
    ktq1.a(2130838619);
    ktq1.e(true);
    ktq1.b(3);
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Prote????o da sua resid??ncia em caso de roubo, inc??ndio, danos el??tricos, vendaval, granizo, entre outros.", new String[] { "Prote????o da sua resid??ncia" }));
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Reparos e tarefas do dia a dia, como consertos de eletrodom??sticos, fixa????o de quadros e persianas, e chaveiro.", new String[] { "Reparos e tarefas do dia a dia," }));
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Servi??os preventivos, como verifica????o de poss??veis vazamentos, revis??o de instala????o el??trica, limpeza de ralos e sif??es.", new String[] { "Servi??os preventivos," }));
    linkedList.add(ktq1);
    ktq1 = new ktq();
    ktq1.f("auto");
    ktq1.b("Seguro Auto");
    ktq1.c("Tranquilidade para voc?? e prote????o para seu carro.");
    ktq1.a(2130838335);
    ktq1.e(true);
    ktq1.b(5);
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Prote????o em diversas situa????es, sua tranquilidade garantida em caso de ter seu carro batido ou roubado.", new String[] { "Prote????o em diversas situa????es," }));
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Assist??ncia 24 horas para o seu carro, problemas mec??nicos, el??tricos, perda de chaves, troca de pneus ou bateria.", new String[] { "Assist??ncia 24 horas para o seu carro," }));
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Parcerias, descontos e diversas vantagens, descontos em estacionamento e aluguel de carro de passeio.", new String[] { "Parcerias, descontos e diversas vantagens," }));
    linkedList.add(ktq1);
    return linkedList;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968685);
    c();
    d();
    b();
    e();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\consultative\activities\HireInsuranceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */