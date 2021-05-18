package com.santander.app.emprestimo.antecipacaoIR.activity;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gky;
import grs;
import gvb;
import hjg;
import hkj;
import hkp;
import java.util.ArrayList;
import nau;

public class AntecipacaoIRConfirmacaoActivity extends grs implements nau {
  private static final String a = "AntecipacaoIRConfirmacaoActivity";
  
  private int b = 1;
  
  private Dialog c;
  
  private hkp d;
  
  private void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131757156) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(this.b);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131757156, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  private void a(gvb paramgvb, hkj paramhkj, ArrayList<gky> paramArrayList, boolean paramBoolean) {
    paramgvb.g("Comprovante - Contrato de Antecipação de Imposto de Renda");
    paramgvb.c(getString(2131298967));
    paramgvb.x(true);
    if (!paramBoolean) {
      paramgvb.e(paramhkj.getAutenticacao());
      if (paramhkj.a() != null && !"".equals(paramhkj.a())) {
        paramgvb.f(paramhkj.a() + " " + paramhkj.b());
      } else {
        paramgvb.f(paramhkj.c() + " " + paramhkj.d());
      } 
      paramgvb.d(true);
      paramgvb.b(paramArrayList);
      paramgvb.h(getString(2131298215).replaceAll("@@br", "<br/>"));
      paramgvb.d("Contratação de Antecipação de Imposto de Renda realizado com sucesso");
      return;
    } 
    paramgvb.e("");
    paramgvb.f("");
    paramgvb.d(false);
    paramgvb.b(paramArrayList);
    paramgvb.h("");
    paramgvb.d("Não foi possível solicitar a Antecipação de Imposto de Renda");
    paramgvb.e(true);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    (new hjg(this, null)).execute((Object[])new hkp[] { this.d });
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969015);
    c(2131298967);
    this.d = (hkp)getIntent().getExtras().getSerializable("simularAntecipacaoRequest");
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\antecipacaoIR\activity\AntecipacaoIRConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */