package com.santander.app;

import amr;
import amt;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.cardLayout.CardLayout;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.contacorrente.domain.SaldoDetalhado;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;
import fnh;
import fni;
import fnj;
import fnk;
import gmy;
import grs;
import gwa;
import gwc;
import gwe;
import gwt;
import gww;
import hat;
import java.util.List;
import jow;
import mxn;
import naj;

public class SaldoActivity extends grs {
  private static final String b = "SaldoActivity";
  
  public Dialog a = null;
  
  private LinearLayout c;
  
  private Conta d;
  
  private SaldoDetalhado e;
  
  private CardLayout f;
  
  private gwt g;
  
  private gwa w;
  
  private SantanderDropDownView x;
  
  private gwc y = (gwc)new fni(this);
  
  private void a() {
    b();
    if (this.w.a()) {
      this.w.a(this.d, this.y);
      return;
    } 
    this.w.b(this.d, this.y);
  }
  
  private void a(String paramString) {
    String str = paramString;
    if (paramString == null)
      str = getString(2131297343); 
    (new AlertDialog.Builder((Context)this)).setTitle(2131297207).setMessage(str).setCancelable(false).setPositiveButton(getString(2131298298), (DialogInterface.OnClickListener)new fnj(this));
  }
  
  private void b() {
    this.a = mxn.b((Activity)this);
  }
  
  private void c() {
    if (this.a != null && this.a.isShowing()) {
      this.a.dismiss();
      this.a = null;
    } 
  }
  
  private void d() {
    this.c.setVisibility(0);
    int i = (int)((getResources().getDisplayMetrics()).density * 20.0F + 0.5F);
    RelativeLayout relativeLayout = (RelativeLayout)findViewById(2131759355);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoContaCorrenteContaMax()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759358)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759357);
      textView3.setText(naj.f(this.e.getSaldoContaCorrenteContaMax()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759356);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759359);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoBloqueioDia()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759362)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759361);
      textView3.setText(naj.f(this.e.getSaldoBloqueioDia()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759360);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759363);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getDesbloqueio1Dia()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759366)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759365);
      textView3.setText(naj.f(this.e.getDesbloqueio1Dia()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759364);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759367);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getDesbloqueio2Dias()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759370)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759369);
      textView3.setText(naj.f(this.e.getDesbloqueio2Dias()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759368);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759371);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getDesbloqueioMais2Dias()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759374)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759373);
      textView3.setText(naj.f(this.e.getDesbloqueioMais2Dias()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759372);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759375);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getLancamentosProvisionadosCredito()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759378)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759377);
      textView3.setText(naj.f(this.e.getLancamentosProvisionadosCredito()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759376);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759379);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getLancamentosProvisionadosDebito()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759382)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759381);
      textView3.setText(naj.f(this.e.getLancamentosProvisionadosDebito()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759380);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759383);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoTotalContaCorrenteContaMax()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759386)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759385);
      textView3.setText(naj.f(this.e.getSaldoTotalContaCorrenteContaMax()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759384);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759387);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoBloqueado()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759390)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759389);
      textView3.setText(naj.f(this.e.getSaldoBloqueado()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759388);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759391);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoBloqueadoJudicial()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759394)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759393);
      textView3.setText(naj.f(this.e.getSaldoBloqueadoJudicial()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759392);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759395);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getProvisaoEncargos()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759398)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759397);
      textView3.setText(naj.f(this.e.getProvisaoEncargos()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759396);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759399);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getJurosAcumuladosAteData()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759402)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759401);
      textView3.setText(naj.f(this.e.getJurosAcumuladosAteData()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759400);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759403);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getIofAcumuladosAteData()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759406)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759405);
      textView3.setText(naj.f(this.e.getIofAcumuladosAteData()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759404);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759407);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoDisponivelContaCorrenteContaMax()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759410)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759409);
      textView3.setText(naj.f(this.e.getSaldoDisponivelContaCorrenteContaMax()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759408);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759411);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoFundosComResgateAutomatico()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759414)).setVisibility(8);
    } else {
      TextView textView3 = (TextView)findViewById(2131759413);
      textView3.setText(naj.f(this.e.getSaldoFundosComResgateAutomatico()));
      if (textView3.getText().toString().contains("-"))
        textView3.setTextColor(-65536); 
      TextView textView4 = (TextView)findViewById(2131759412);
      Rect rect1 = new Rect();
      textView3.getPaint().getTextBounds(textView3.getText().toString(), 0, textView3.getText().toString().length(), rect1);
      int k = rect1.width();
      if (relativeLayout.getWidth() < textView4.getWidth() + k)
        textView3.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759415);
    relativeLayout.setVisibility(0);
    TextView textView1 = (TextView)findViewById(2131759417);
    textView1.setText(naj.f(this.e.getSaldoDisponivel()));
    if (textView1.getText().toString().contains("-"))
      textView1.setTextColor(-65536); 
    TextView textView2 = (TextView)findViewById(2131759416);
    Rect rect = new Rect();
    textView1.getPaint().getTextBounds(textView1.getText().toString(), 0, textView1.getText().toString().length(), rect);
    int j = rect.width();
    if (relativeLayout.getWidth() < textView2.getWidth() + j)
      textView1.setPadding(0, i, 0, 0); 
    relativeLayout = (RelativeLayout)findViewById(2131759419);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getLimiteValor1()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759422)).setVisibility(8);
    } else {
      ((TextView)findViewById(2131759420)).setText(String.format("(+)Limite %s", new Object[] { this.e.getLimiteDescricao1() }));
      textView1 = (TextView)findViewById(2131759421);
      textView1.setText(naj.f(this.e.getLimiteValor1()));
      if (textView1.getText().toString().contains("-"))
        textView1.setTextColor(-65536); 
      textView2 = (TextView)findViewById(2131759420);
      rect = new Rect();
      textView1.getPaint().getTextBounds(textView1.getText().toString(), 0, textView1.getText().toString().length(), rect);
      j = rect.width();
      if (relativeLayout.getWidth() < textView2.getWidth() + j)
        textView1.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759423);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getLimiteValor2()) == 0L) {
      relativeLayout.setVisibility(8);
      ((ImageView)findViewById(2131759426)).setVisibility(8);
    } else {
      ((TextView)findViewById(2131759424)).setText(String.format("(+)Limite %s", new Object[] { this.e.getLimiteDescricao2() }));
      textView1 = (TextView)findViewById(2131759425);
      textView1.setText(naj.f(this.e.getLimiteValor2()));
      if (textView1.getText().toString().contains("-"))
        textView1.setTextColor(-65536); 
      textView2 = (TextView)findViewById(2131759424);
      rect = new Rect();
      textView1.getPaint().getTextBounds(textView1.getText().toString(), 0, textView1.getText().toString().length(), rect);
      j = rect.width();
      if (relativeLayout.getWidth() < textView2.getWidth() + j)
        textView1.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759427);
    relativeLayout.setVisibility(0);
    if (Long.parseLong(this.e.getSaldoDisponivelTotal()) == 0L) {
      ((TextView)findViewById(2131759429)).setText(naj.f(this.e.getSaldoDisponivelTotal()));
      ((ImageView)findViewById(2131759430)).setVisibility(8);
    } else {
      textView1 = (TextView)findViewById(2131759429);
      textView1.setText(naj.f(this.e.getSaldoDisponivelTotal()));
      if (textView1.getText().toString().contains("-"))
        textView1.setTextColor(-65536); 
      textView2 = (TextView)findViewById(2131759428);
      rect = new Rect();
      textView1.getPaint().getTextBounds(textView1.getText().toString(), 0, textView1.getText().toString().length(), rect);
      j = rect.width();
      if (relativeLayout.getWidth() < textView2.getWidth() + j)
        textView1.setPadding(0, i, 0, 0); 
    } 
    relativeLayout = (RelativeLayout)findViewById(2131759432);
    relativeLayout.setOnClickListener((View.OnClickListener)new fnk(this));
    relativeLayout.setVisibility(8);
  }
  
  public void goEmprestimos(View paramView) {
    List<jow> list = hat.v().a();
    if (list != null && !list.isEmpty() && ((jow)list.get(5)).e() == 1) {
      Intent intent = new Intent((Context)this, CPSimulacaoActivity.class);
      intent.setFlags(67108864);
      startActivity(intent);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969460);
    c(2131297796);
    this.c = (LinearLayout)findViewById(2131759258);
    this.c.setVisibility(4);
    this.f = (CardLayout)findViewById(2131756564);
    this.g = new gwt((Activity)this, this.f, gww.Saldo);
    this.w = (gwa)new gwe();
    this.x = (SantanderDropDownView)findViewById(2131755321);
    this.x.setAdapter((amr)gmy.e());
    this.x.setOnItemSelectedListener((amt)new fnh(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\SaldoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */