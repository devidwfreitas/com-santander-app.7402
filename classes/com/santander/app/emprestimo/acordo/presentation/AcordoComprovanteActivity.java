package com.santander.app.emprestimo.acordo.presentation;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.pagamentos.titulos.presentation.PagamentosCodigoBarrasActivity;
import gky;
import gpl;
import gvb;
import hfy;
import hgp;
import hhr;
import hys;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class AcordoComprovanteActivity extends ComprovanteBaseActivity implements View.OnClickListener {
  private static final String g = "EXTRA_CONTRATACAO";
  
  private static final String w = "EXTRA_SUCCESS";
  
  private ClipboardManager A;
  
  private String B;
  
  private int C;
  
  private hfy D;
  
  private LinearLayout x;
  
  private LinearLayout y;
  
  private TextView z;
  
  private gvb a(hfy paramhfy) {
    gvb gvb = new gvb();
    if (paramhfy.e() == 2) {
      this.C = 2130969159;
    } else {
      this.C = 0;
    } 
    gvb.i("");
    gvb.j("");
    gvb.b(c(paramhfy));
    gvb.c("Renegociação");
    gvb.d(false);
    if (paramhfy.e() == 2)
      gvb.a(getApplicationContext().getString(2131298183)); 
    gvb.f(paramhfy.x() + " - " + paramhfy.y());
    gvb.e(paramhfy.getAutenticacao());
    gvb.d("Renegociação de dívida contratada com sucesso");
    gvb.g("Renegociação de dívida" + gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb.c(true);
    return gvb;
  }
  
  public static void a(Context paramContext, hfy paramhfy, boolean paramBoolean) {
    Intent intent = new Intent(paramContext, AcordoComprovanteActivity.class);
    intent.putExtra("EXTRA_CONTRATACAO", (Serializable)paramhfy);
    intent.putExtra("EXTRA_SUCCESS", paramBoolean);
    paramContext.startActivity(intent);
  }
  
  private gvb b(hfy paramhfy) {
    gvb gvb = new gvb();
    ArrayList<gky> arrayList = new ArrayList();
    gvb.i("");
    gvb.j("");
    arrayList.add(new gky("Erro: ", paramhfy.z()));
    gvb.b(arrayList);
    gvb.c("Renegociação");
    gvb.d(false);
    gvb.e(true);
    gvb.f(paramhfy.x() + " - " + paramhfy.y());
    gvb.e(paramhfy.getAutenticacao());
    gvb.d("Renegociação de dívida não realizada");
    gvb.b("Transação não efetuada");
    gvb.g("Comprovante - Erro na Renegociação");
    return gvb;
  }
  
  private ArrayList<gky> c(hfy paramhfy) {
    ArrayList<gky> arrayList = new ArrayList();
    gky gky2 = new gky("Valor renegociado:  ", paramhfy.k());
    gky2.a(true);
    arrayList.add(gky2);
    gky2 = new gky("Quantidade de Parcelas: ", paramhfy.q());
    gky2.a(true);
    arrayList.add(gky2);
    gky2 = new gky("Valor da Parcela: ", paramhfy.l());
    gky2.a(true);
    arrayList.add(gky2);
    if (paramhfy.e() == 1) {
      gky2 = new gky("Conta corrente: ", paramhfy.N());
      gky2.a(true);
      arrayList.add(gky2);
    } 
    gky gky1 = new gky("Número do contrato: ", paramhfy.i());
    gky1.a(true);
    arrayList.add(gky1);
    return arrayList;
  }
  
  public int a() {
    return this.C;
  }
  
  public void onClick(View paramView) {
    Intent intent;
    switch (paramView.getId()) {
      default:
        return;
      case 2131757961:
        hhr.g();
        try {
          ClipData clipData = ClipData.newPlainText("codigo_barras", this.B);
          this.A.setPrimaryClip(clipData);
          Toast.makeText((Context)this, getString(2131296877), 0).show();
          return;
        } catch (Exception exception) {
          Toast.makeText((Context)this, getString(2131296876), 0).show();
          return;
        } 
      case 2131757962:
        hhr.h();
        intent = new Intent((Context)this, PagamentosCodigoBarrasActivity.class);
        intent.putExtra("cod_barras_acordo", this.B);
        startActivity(intent);
        return;
      case 2131755437:
        hhr.f();
        hys.a((Context)this, 2131298139, 2131298819, 2131298820, (DialogInterface.OnClickListener)new hgp(this));
        return;
      case 2131755436:
        break;
    } 
    hhr.h();
    this.x.setVisibility(8);
    this.y.setVisibility(8);
    c();
    this.x.setVisibility(0);
    this.y.setVisibility(0);
  }
  
  protected void onCreate(Bundle paramBundle) {
    if (getIntent() == null)
      return; 
    this.D = (hfy)getIntent().getSerializableExtra("EXTRA_CONTRATACAO");
    if (getIntent().getBooleanExtra("EXTRA_SUCCESS", false)) {
      getIntent().putExtra("comprovanteBase", (Serializable)a(this.D));
    } else {
      getIntent().putExtra("comprovanteBase", (Serializable)b(this.D));
    } 
    super.onCreate(paramBundle);
  }
  
  public void onCreateContentExtra(View paramView) {
    this.A = (ClipboardManager)getSystemService("clipboard");
    this.z = (TextView)paramView.findViewById(2131757960);
    this.z.setText(this.D.O());
    this.x = (LinearLayout)paramView.findViewById(2131757961);
    this.y = (LinearLayout)paramView.findViewById(2131757962);
    this.B = this.z.getText().toString();
    this.x.setOnClickListener(this);
    this.y.setOnClickListener(this);
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\acordo\presentation\AcordoComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */