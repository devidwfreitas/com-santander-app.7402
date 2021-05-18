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
    this.d.b("Proteção Vida");
    this.d.c("Com ele, você e sua família estarão protegidos.");
    this.d.a(2130838530);
    ktq ktq2 = this.d;
    if (ipi.b("00000109") && !mhj.e()) {
      bool = true;
    } else {
      bool = false;
    } 
    ktq2.e(bool);
    this.d.b(1);
    this.d.a("Em caso de morte sua família recebe uma indenização.");
    this.d.a("Em caso de invalidez permanente total ou parcial você recebe uma indenização.");
    linkedList.add(this.d);
    this.e = new ktq();
    this.e.f("Acidente Pessoais");
    this.e.b("Acidentes Pessoais");
    this.e.c("Apoio a você e sua família em caso de imprevistos.");
    this.e.a(2130838316);
    ktq2 = this.e;
    if (ipi.b("00000109") && !mhj.e()) {
      bool = true;
      ktq2.e(bool);
      this.e.b(2);
      this.e.a("Em caso de morte acidental sua família recebe uma indenização.");
      this.e.a("Em caso de invalidez permanente total ou parcial você recebe uma indenização.");
      this.e.a("Em caso de internação você conta com uma cobertura.");
      linkedList.add(this.e);
      ktq ktq3 = new ktq();
      ktq3.f("Residencial");
      ktq3.b("Seguro Residencial");
      ktq3.c("A proteção é para sua casa, a economia é para você.");
      ktq3.a(2130838619);
      ktq3.e(true);
      ktq3.b(3);
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Proteção da sua residência em caso de roubo, incêndio, danos elétricos, vendaval, granizo, entre outros.", new String[] { "Proteção da sua residência" }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Reparos e tarefas do dia a dia, como consertos de eletrodomésticos, fixação de quadros e persianas, e chaveiro.", new String[] { "Reparos e tarefas do dia a dia," }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Serviços preventivos, como verificação de possíveis vazamentos, revisão de instalação elétrica, limpeza de ralos e sifões.", new String[] { "Serviços preventivos," }));
      linkedList.add(ktq3);
      ktq3 = new ktq();
      ktq3.f("auto");
      ktq3.b("Seguro Auto");
      ktq3.c("Tranquilidade para você e proteção para seu carro.");
      ktq3.a(2130838335);
      ktq3.e(true);
      ktq3.b(5);
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Proteção em diversas situações, sua tranquilidade garantida em caso de ter seu carro batido ou roubado.", new String[] { "Proteção em diversas situações," }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Assistência 24 horas para o seu carro, problemas mecânicos, elétricos, perda de chaves, troca de pneus ou bateria.", new String[] { "Assistência 24 horas para o seu carro," }));
      ktq3.a(mhj.a((Context)this, Integer.valueOf(0), "Parcerias, descontos e diversas vantagens, descontos em estacionamento e aluguel de carro de passeio.", new String[] { "Parcerias, descontos e diversas vantagens," }));
      linkedList.add(ktq3);
      return linkedList;
    } 
    boolean bool = false;
    ktq2.e(bool);
    this.e.b(2);
    this.e.a("Em caso de morte acidental sua família recebe uma indenização.");
    this.e.a("Em caso de invalidez permanente total ou parcial você recebe uma indenização.");
    this.e.a("Em caso de internação você conta com uma cobertura.");
    linkedList.add(this.e);
    ktq ktq1 = new ktq();
    ktq1.f("Residencial");
    ktq1.b("Seguro Residencial");
    ktq1.c("A proteção é para sua casa, a economia é para você.");
    ktq1.a(2130838619);
    ktq1.e(true);
    ktq1.b(3);
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Proteção da sua residência em caso de roubo, incêndio, danos elétricos, vendaval, granizo, entre outros.", new String[] { "Proteção da sua residência" }));
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Reparos e tarefas do dia a dia, como consertos de eletrodomésticos, fixação de quadros e persianas, e chaveiro.", new String[] { "Reparos e tarefas do dia a dia," }));
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Serviços preventivos, como verificação de possíveis vazamentos, revisão de instalação elétrica, limpeza de ralos e sifões.", new String[] { "Serviços preventivos," }));
    linkedList.add(ktq1);
    ktq1 = new ktq();
    ktq1.f("auto");
    ktq1.b("Seguro Auto");
    ktq1.c("Tranquilidade para você e proteção para seu carro.");
    ktq1.a(2130838335);
    ktq1.e(true);
    ktq1.b(5);
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Proteção em diversas situações, sua tranquilidade garantida em caso de ter seu carro batido ou roubado.", new String[] { "Proteção em diversas situações," }));
    ktq1.a(mhj.a((Context)this, Integer.valueOf(0), "Assistência 24 horas para o seu carro, problemas mecânicos, elétricos, perda de chaves, troca de pneus ou bateria.", new String[] { "Assistência 24 horas para o seu carro," }));
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