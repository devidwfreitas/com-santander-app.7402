package com.santander.app.cartoes.parcelamentofatura.presentation;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.TextView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import ful;
import fuu;
import gif;
import gig;
import gjb;
import gky;
import gpu;
import grs;
import gvb;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import naf;
import naj;
import nak;
import nau;

public class ParcelamentoFaturaCorrentistaValidacaoActivity extends grs implements nau {
  public Dialog a = null;
  
  private final String b = "ParcelamentoFaturaCorrentistaValidacaoActivity";
  
  private Activity c;
  
  private gjb d;
  
  private ful e;
  
  private gig f;
  
  private fuu g = null;
  
  private gvb a(boolean paramBoolean) {
    gvb gvb = new gvb();
    gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    gvb.d(true);
    gvb.e(paramBoolean);
    gvb.e(this.f.n());
    gvb.c("Parcelamento de Fatura");
    gvb.g("Parcelamento de Fatura");
    gvb.h("O Parcelamento de fatura está sujeito à  disponibilidade e critérios de elegibilidade do Santander e inclui apenas o valor total da fatura no momento da contratação, sem considerar as compras parceladas a vencer nos próximos meses. Há incidência de encargos contratuais e o valor má­nimo para contratação é de R$ 150,00. O limite será comprometido no valor das parcelas pendentes e, ao pagar as parcelas nos próximos meses, seu limite será automaticamente recomposto. Esta opção não é válida para clientes com mais de 60 dias de atraso. Caso o pagamento da 1º parcela, ou pelo menos, o valor do Pagamento Mánimo da fatura, não seja realizado até a data do vencimento da Fatura, será cobrados encargos de mora sobre o saldo devedor em atraso. Além disso, até a identificação do pagamento o cartão poderá ser bloqueado");
    gvb.i("parcFat_Suc.end");
    gvb.j("parcFat_share");
    gvb.a(new String[] { "Cartoes_ParcelamentoDeFatura_Acao", "Compartilhar" });
    gvb.b(new String[] { "Cartoes_ParcelamentoDeFatura_Acao", "Fechar" });
    if (!paramBoolean) {
      gvb.d(getString(2131297086));
      a(gvb, this.f, paramBoolean);
      return gvb;
    } 
    gvb.d("Parcelamento de fatura Não realizado");
    a(gvb, this.f, paramBoolean);
    return gvb;
  }
  
  private void a(gvb paramgvb, gig paramgig, boolean paramBoolean) {
    String str;
    if (Float.valueOf(Float.parseFloat(paramgig.s())).floatValue() == 0.0F) {
      str = ((gif)paramgig.k().get(0)).d();
    } else {
      str = paramgig.s();
    } 
    ArrayList<gky> arrayList = new ArrayList();
    if (!paramBoolean)
      arrayList.add(new gky(getString(2131297087), "")); 
    arrayList.add(new gky("Número do Cartão: ", naj.E(b(paramgig.m()))));
    arrayList.add(new gky("Data de Vencimento: ", nak.l(paramgig.g())));
    arrayList.add(new gky("Valor a Parcelar: ", naj.a((Float.parseFloat(paramgig.v().replace("+", "")) / 100.0F))));
    arrayList.add(new gky("Número de Parcelas: ", ((gif)paramgig.k().get(0)).c()));
    arrayList.add(new gky("Valor da primeira parcela: ", naj.s(str)));
    arrayList.add(new gky("Valor das demais parcelas: ", naj.s(((gif)paramgig.k().get(0)).d())));
    arrayList.add(new gky("Valor da tarifa: ", naj.f((Float.parseFloat(paramgig.u().replace("+", "")) / 100.0F) + "")));
    arrayList.add(new gky("Valor do IOF: ", naj.f((Float.parseFloat(paramgig.r().replace("+", "")) / 100.0F) + "")));
    arrayList.add(new gky("Taxa de juros: ", naj.F(paramgig.o())));
    arrayList.add(new gky("Custo efetivo total (CET): ", naj.F(paramgig.f().replace("+", ""))));
    paramgvb.b(arrayList);
    paramgvb.i(true);
  }
  
  private String b(String paramString) {
    naf naf = new naf();
    try {
      return naf.c(Base64.decode(paramString.trim().getBytes("UTF-8"), 0));
    } catch (Exception exception) {
      Log.e("ERRO_CRYPTO", exception.getMessage());
      return "";
    } 
  }
  
  private void b() {
    if (this.a != null && this.a.isShowing()) {
      this.a.cancel();
      this.a = null;
    } 
  }
  
  public void a() {
    gvb gvb = a(false);
    Intent intent = new Intent(getApplicationContext(), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.d = new gjb(this, null);
    this.d.execute((Object[])new Void[0]);
  }
  
  public void a(String paramString) {
    gvb gvb = a(true);
    Intent intent = new Intent(getApplicationContext(), ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  public boolean a(Context paramContext) {
    boolean bool = false;
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < list.size()) {
        if (((ActivityManager.RunningAppProcessInfo)list.get(i)).processName.equals("com.santander.app")) {
          onDestroy();
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969412);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setBackgroundDrawable(getResources().getDrawable(2131623961));
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130838998));
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298342);
    gpu.a((Activity)this, actionBar, getString(2131298342));
    this.c = (Activity)this;
    this.f = (gig)getIntent().getExtras().getSerializable("parcelarFatura");
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756356) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(0);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131756356, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cartoes\parcelamentofatura\presentation\ParcelamentoFaturaCorrentistaValidacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */