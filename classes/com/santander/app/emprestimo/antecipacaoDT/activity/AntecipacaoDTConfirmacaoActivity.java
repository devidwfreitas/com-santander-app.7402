package com.santander.app.emprestimo.antecipacaoDT.activity;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gky;
import grs;
import gvb;
import hht;
import hiy;
import hje;
import java.util.ArrayList;
import nau;

public class AntecipacaoDTConfirmacaoActivity extends grs implements nau {
  private static final String a = "AntecipacaoDTConfirmacaoActivity";
  
  private int b = 1;
  
  private Dialog c;
  
  private hje d;
  
  private void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131757155) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(this.b);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131757155, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  private void a(gvb paramgvb, hiy paramhiy, ArrayList<gky> paramArrayList, boolean paramBoolean) {
    paramgvb.g("Comprovante - Contrato de Antecipação de 13º Salário");
    paramgvb.c(getString(2131298966));
    paramgvb.t(true);
    if (!paramBoolean) {
      paramgvb.e(paramhiy.getAutenticacao());
      if (paramhiy.a() != null && !"".equals(paramhiy.a())) {
        paramgvb.f(paramhiy.a() + " " + paramhiy.b());
      } else {
        paramgvb.f(paramhiy.c() + " " + paramhiy.d());
      } 
      paramgvb.d(true);
      paramgvb.b(paramArrayList);
      paramgvb.h(getString(2131298215).replaceAll("@@br", "<br/>"));
      paramgvb.d("Contratação de Antecipação de 13º Salário realizado com sucesso");
      return;
    } 
    paramgvb.e("");
    paramgvb.f("");
    paramgvb.d(false);
    paramgvb.b(paramArrayList);
    paramgvb.h("");
    paramgvb.d("Não foi possível solicitar a Antecipação de 13º Salário");
    paramgvb.e(true);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    (new hht(this, null)).execute((Object[])new hje[] { this.d });
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969014);
    c(2131298966);
    this.d = (hje)getIntent().getExtras().getSerializable("simularAntecipacaoRequest");
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoDT\activity\AntecipacaoDTConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */