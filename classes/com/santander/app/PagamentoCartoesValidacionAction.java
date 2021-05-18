package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fje;
import ghu;
import gpu;
import grs;
import java.io.Serializable;
import java.util.ArrayList;
import nak;
import nau;

public class PagamentoCartoesValidacionAction extends grs implements nau {
  private Activity A;
  
  private fje B;
  
  public Dialog a = null;
  
  private final String b = "PagamentoCartoesValidacionAction";
  
  private Conta c;
  
  private ghu d;
  
  private int e;
  
  private int f;
  
  private int g;
  
  private String w;
  
  private String x;
  
  private boolean y;
  
  private String z;
  
  private void a() {
    Intent intent = new Intent(getApplicationContext(), PagamentoCartoesTransOkAction.class);
    intent.putExtra("conta", this.e);
    intent.putExtra("cartao", (Serializable)this.d);
    intent.putExtra("tipo", this.g);
    intent.putExtra("cantidad", this.w);
    intent.putExtra("fecha", this.x);
    intent.putExtra("cartao", (Serializable)this.d);
    startActivity(intent);
  }
  
  private void b() {
    Intent intent = new Intent(getApplicationContext(), PagamentoCartoesTransErrorActivity.class);
    intent.putExtra("conta", this.e);
    intent.putExtra("cartao", this.f);
    intent.putExtra("tipo", this.g);
    intent.putExtra("cantidad", this.w);
    intent.putExtra("fecha", this.x);
    intent.putExtra("errorMsg", this.z);
    intent.putExtra("cartao", (Serializable)this.d);
    startActivity(intent);
  }
  
  private void c() {
    if (this.a != null && this.a.isShowing()) {
      this.a.cancel();
      this.a = null;
    } 
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.B = new fje(this, null);
    this.B.execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969403);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298323));
    this.A = (Activity)this;
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.e = bundle.getInt("conta");
      this.f = bundle.getInt("cartao");
      ArrayList<Conta> arrayList = new ArrayList();
      int i;
      for (i = 0; i < this.v.f().q().a().size(); i++)
        arrayList.add(this.v.f().q().a().get(i)); 
      for (i = 0; i < this.v.f().s().d().size(); i++) {
        if (i != this.f) {
          Conta conta = new Conta();
          conta.setAgencia(((ghu)this.v.f().s().d().get(i)).s());
          conta.setCuenta(((ghu)this.v.f().s().d().get(i)).d());
          conta.setValor(((ghu)this.v.f().s().d().get(i)).c());
          conta.setDescricao(((ghu)this.v.f().s().d().get(i)).a());
          conta.setNomeBanco("CARTAOPAG");
          arrayList.add(conta);
        } 
      } 
      this.c = arrayList.get(this.e);
      this.d = this.v.f().s().d().get(this.f);
      this.g = bundle.getInt("tipo");
      this.w = bundle.getString("cantidad");
      this.x = nak.l(bundle.getString("fecha"));
      this.y = bundle.getBoolean("agendado");
    } 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PagamentoCartoesValidacionAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */