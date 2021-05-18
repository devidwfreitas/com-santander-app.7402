package com.santander.app.emprestimo.cancelamento.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import gky;
import gvb;
import hlh;
import hme;
import hmf;
import hxl;
import hyb;
import java.io.Serializable;
import java.util.ArrayList;

public class ComprovanteCancelarEmprestimo extends ComprovanteBaseActivity {
  private static final String g = "extra_cancelavel";
  
  private static final String w = "Comprovante";
  
  private hxl x;
  
  private hlh y;
  
  public static void a(Context paramContext, hxl paramhxl) {
    Intent intent = new Intent(paramContext, ComprovanteCancelarEmprestimo.class);
    intent.putExtra("extra_cancelavel", (Serializable)paramhxl);
    paramContext.startActivity(intent);
  }
  
  private gvb h() {
    gvb gvb = new gvb();
    gvb.i("");
    gvb.j("");
    gvb.b(j());
    gvb.c("Comprovante");
    gvb.d(false);
    gvb.f(this.y.getDataHoraTransacao());
    gvb.e(this.y.b());
    if (this.x.a() == 11) {
      gvb.d("Solicitação de Cancelamento\nrealizada com sucesso");
      gvb.g("Cancelamento realizado com sucesso" + this.y.getDataHoraTransacao());
      return gvb;
    } 
    gvb.d("Cancelamento realizado com sucesso");
    gvb.g("Cancelamento realizado com sucesso" + this.y.getDataHoraTransacao());
    return gvb;
  }
  
  private gvb i() {
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    gvb.i("");
    gvb.j("");
    gvb.c("Comprovante");
    gvb.d(false);
    gvb.e(true);
    String str = getString(2131297343);
    if (this.y != null) {
      str = this.y.e();
      gvb.f(this.y.getDataHoraTransacao());
      gvb.e(this.y.b());
      gvb.g("Comprovante - Erro no Cancelamento " + this.y.getDataHoraTransacao());
    } 
    arrayList.add(new gky("Erro: ", str));
    gvb.b(arrayList);
    gvb.d("Cancelamento não realizado");
    return gvb;
  }
  
  private ArrayList<gky> j() {
    ArrayList<gky> arrayList = new ArrayList();
    switch (this.x.a()) {
      default:
        return arrayList;
      case 11:
        arrayList.add(new gky("Valor do empréstimo: ", this.x.g()));
        arrayList.add(new gky("Quantidade de parcelas: ", String.format("%sx", new Object[] { Integer.valueOf(this.x.i()) })));
        arrayList.add(new gky("Valor da parcela: ", this.x.k()));
        arrayList.add(new gky("Número do contrato: ", this.x.d()));
        return arrayList;
      case 10:
        break;
    } 
    arrayList.add(new gky("Valor do empréstimo: ", this.x.g()));
    arrayList.add(new gky("Quantidade de parcelas: ", String.format("%sx", new Object[] { Integer.valueOf(this.x.i()) })));
    gky gky = new gky("Número do contrato: ", this.x.d());
    gky.a(true);
    arrayList.add(gky);
    return arrayList;
  }
  
  public int a() {
    return (this.x.a() == 11) ? 2130969192 : 0;
  }
  
  protected void onCreate(Bundle paramBundle) {
    this.x = (hxl)getIntent().getSerializableExtra("extra_cancelavel");
    this.y = this.x.z();
    if (this.y != null && TextUtils.isEmpty(this.y.e())) {
      getIntent().putExtra("comprovanteBase", (Serializable)h());
      hyb.j().h();
    } else {
      getIntent().putExtra("comprovanteBase", (Serializable)i());
    } 
    super.onCreate(paramBundle);
    this.a.setOnClickListener((View.OnClickListener)new hme(this));
    this.b.setOnClickListener((View.OnClickListener)new hmf(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\cancelamento\presentation\ComprovanteCancelarEmprestimo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */