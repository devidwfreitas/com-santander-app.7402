package com.santander.app.emprestimo.creditounificado.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import gky;
import gvb;
import hvs;
import hvt;
import hxn;
import java.io.Serializable;
import java.util.ArrayList;

public class CPUComprovanteActivity extends ComprovanteBaseActivity {
  private static final String g = "EXTRA_CONTRATACAO";
  
  private static final String w = "EXTRA_SUCCESS";
  
  private gvb a(hxn paramhxn) {
    gvb gvb = new gvb();
    gvb.b(c(paramhxn));
    gvb.c("Comprovante");
    gvb.d(false);
    gvb.f(paramhxn.getDataHoraTransacao());
    gvb.e(paramhxn.getAutenticacao());
    gvb.d("Renegociação de Dívidas contratada com sucesso");
    if (paramhxn.s()) {
      String str1 = getString(2131298998);
      gvb.g(String.format("Renegociação de Dívidas – %s %s", new Object[] { str1, paramhxn.getDataHoraTransacao() }));
      return gvb;
    } 
    String str = getString(2131298977);
    gvb.g(String.format("Renegociação de Dívidas – %s %s", new Object[] { str, paramhxn.getDataHoraTransacao() }));
    return gvb;
  }
  
  public static void a(Context paramContext, hxn paramhxn, boolean paramBoolean) {
    Intent intent = new Intent(paramContext, CPUComprovanteActivity.class);
    intent.putExtra("EXTRA_CONTRATACAO", (Serializable)paramhxn);
    intent.putExtra("EXTRA_SUCCESS", paramBoolean);
    paramContext.startActivity(intent);
  }
  
  private gvb b(hxn paramhxn) {
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Erro: ", paramhxn.t()));
    gvb.b(arrayList);
    gvb.c("Comprovante");
    gvb.d(false);
    gvb.e(true);
    gvb.f(paramhxn.getDataHoraTransacao());
    gvb.e(paramhxn.getAutenticacao());
    gvb.d("Renegociação de Dívidas não realizada");
    gvb.b("Renegociação de dívida não realizada");
    if (paramhxn.s()) {
      String str1 = getString(2131298998);
      gvb.g(String.format("Renegociação de Dívidas – %s %s", new Object[] { str1, paramhxn.getDataHoraTransacao() }));
      return gvb;
    } 
    String str = getString(2131298977);
    gvb.g(String.format("Renegociação de Dívidas – %s %s", new Object[] { str, paramhxn.getDataHoraTransacao() }));
    return gvb;
  }
  
  private ArrayList<gky> c(hxn paramhxn) {
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Valor solicitado: ", paramhxn.w()));
    arrayList.add(new gky("Quantidade de parcelas: ", paramhxn.u()));
    arrayList.add(new gky("Valor da parcela: ", paramhxn.G()));
    arrayList.add(new gky("Número do contrato: ", paramhxn.L()));
    arrayList.add(new gky("Dia de débito: ", paramhxn.K()));
    arrayList.add(new gky("Primeira parcela: ", paramhxn.I()));
    arrayList.add(new gky("Taxa de juros: ", paramhxn.a(false)));
    arrayList.add(new gky("Custo Efetivo Total (CET): ", paramhxn.b(false)));
    arrayList.add(new gky("Valor do IOF: ", paramhxn.C()));
    if (!paramhxn.s() && paramhxn.p() > 0)
      arrayList.add(new gky("Valor do Seguro: ", paramhxn.E())); 
    return arrayList;
  }
  
  protected void onCreate(Bundle paramBundle) {
    if (getIntent() == null)
      return; 
    hxn hxn = (hxn)getIntent().getSerializableExtra("EXTRA_CONTRATACAO");
    if (getIntent().getBooleanExtra("EXTRA_SUCCESS", false)) {
      getIntent().putExtra("comprovanteBase", (Serializable)a(hxn));
    } else {
      getIntent().putExtra("comprovanteBase", (Serializable)b(hxn));
    } 
    super.onCreate(paramBundle);
    this.a.setOnClickListener((View.OnClickListener)new hvs(this, hxn));
    this.b.setOnClickListener((View.OnClickListener)new hvt(this, hxn));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditounificado\presentation\CPUComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */