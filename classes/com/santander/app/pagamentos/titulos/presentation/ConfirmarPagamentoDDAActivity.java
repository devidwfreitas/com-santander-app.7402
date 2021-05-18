package com.santander.app.pagamentos.titulos.presentation;

import aep;
import amr;
import amy;
import anb;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.comprovantes.activity.ComprovanteBaseDDAActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import frq;
import gku;
import gpu;
import grs;
import is;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import jsp;
import jsr;
import juj;
import jvv;
import jvw;
import nak;
import nau;
import org.json.JSONObject;

public class ConfirmarPagamentoDDAActivity extends grs implements View.OnClickListener, juj, nau {
  public static List<anb> a;
  
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private jsr b;
  
  private jsp c;
  
  private SantanderButtonView d;
  
  private jvv e;
  
  private final int f = 1;
  
  private LinearLayout g;
  
  private SantanderDropDownView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private String a(ArrayList<gku> paramArrayList, String paramString) {
    for (gku gku : paramArrayList) {
      if (gku.b() != null && gku.b().equals(paramString))
        return gku.c(); 
    } 
    return "";
  }
  
  private void a() {
    this.w = (SantanderDropDownView)findViewById(2131755321);
    this.w.setAdapter((amr)new amy(a));
    this.g = (LinearLayout)findViewById(2131758302);
    this.g.setVisibility(8);
    this.d = (SantanderButtonView)findViewById(2131758317);
    this.d.setOnClickListener(this);
    this.x = (TextView)findViewById(2131758311);
    this.y = (TextView)findViewById(2131758312);
    this.z = (TextView)findViewById(2131758313);
    this.A = (TextView)findViewById(2131758314);
    this.B = (TextView)findViewById(2131758315);
    this.C = (TextView)findViewById(2131758316);
    this.x.setText(a(this.b.m(), "Beneficiário"));
    this.y.setText(a(this.b.m(), "Valor a receber "));
    if (this.b.q() != null) {
      Date date = nak.a(this.b.q(), "yyyyMMdd");
      this.z.setText(nak.a(date, "dd/MM/yyyy"));
    } 
    this.A.setText(nak.a(this.c.c().getTime(), "dd/MM/yyyy"));
    this.B.setText(String.valueOf(this.c.a()));
    this.C.setText("R$ ".concat(aep.a(Double.valueOf(this.c.b()))));
  }
  
  private void b() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131758302) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131758302, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
    this.g.setVisibility(0);
    this.w.setVisibility(8);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.e.b();
  }
  
  public void a(is paramis) {
    Intent intent = new Intent((Context)this, ComprovanteBaseDDAActivity.class);
    if (paramis != null) {
      frq.d("Pagamentos_DDA_Resultado", "Falha");
      try {
        intent.putExtra("errorMessage", (new JSONObject(paramis.b())).getString("message"));
      } catch (Exception exception) {
        Log.e(ConfirmarPagamentoDDAActivity.class.getSimpleName(), Log.getStackTraceString(exception));
      } 
    } else {
      frq.d("Pagamentos_DDA_Resultado", "Sucesso");
    } 
    intent.putExtra("Titulos", (Serializable)this.b);
    intent.putExtra("AgendamentoRecorrente", (Serializable)this.c);
    startActivity(intent);
  }
  
  public void onBackPressed() {
    if (this.g.getVisibility() == 0) {
      this.g.setVisibility(8);
      this.w.setVisibility(0);
      return;
    } 
    super.onBackPressed();
    finish();
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131758317:
        break;
    } 
    b();
    frq.d("Pagamentos_Pagamento_Confirmacao_Acao", "Continuar");
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298957));
    setContentView(2130968724);
    Bundle bundle = getIntent().getExtras();
    this.b = (jsr)bundle.getSerializable("Titulos");
    this.c = (jsp)bundle.getSerializable("AgendamentoRecorrente");
    a();
    this.e = (jvv)new jvw(this.b, this.c, this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\pagamentos\titulos\presentation\ConfirmarPagamentoDDAActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */