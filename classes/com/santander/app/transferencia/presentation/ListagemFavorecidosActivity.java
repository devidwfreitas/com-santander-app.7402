package com.santander.app.transferencia.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.santander.app.contacorrente.domain.Conta;
import gpu;
import grs;
import java.io.Serializable;
import java.util.ArrayList;
import mkt;
import mkw;
import mol;
import mom;
import mon;
import moo;
import mpf;
import mpy;
import mpz;
import mxn;

public class ListagemFavorecidosActivity extends grs implements moo {
  private static final String a = "ListagemFavorecidosActivity";
  
  private static final int b = 9898;
  
  private Conta c;
  
  private mpy d;
  
  private RecyclerView e;
  
  private Button f;
  
  private mpf g;
  
  private EditText w;
  
  private void a() {
    this.e = (RecyclerView)findViewById(2131758216);
    this.f = (Button)findViewById(2131758217);
    this.w = (EditText)findViewById(2131758215);
    this.f.setOnClickListener((View.OnClickListener)new mol(this));
    this.c = (Conta)getIntent().getExtras().getSerializable("contaSelecionada");
    this.d = (mpy)new mpz(this);
    this.d.a(this.c);
    this.w.addTextChangedListener((TextWatcher)new mom(this));
  }
  
  private View.OnClickListener b() {
    return (View.OnClickListener)new mon(this);
  }
  
  private void b(String paramString) {
    if (this.g != null)
      this.g.a(paramString); 
  }
  
  public void a(String paramString) {
    mxn.d(this.i, paramString);
  }
  
  public void a(mkt parammkt) {
    this.e.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.e.setHasFixedSize(true);
    ArrayList arrayList = new ArrayList();
    if (parammkt.a() != null && !parammkt.a().isEmpty())
      arrayList.addAll(parammkt.a()); 
    if (parammkt.b() != null && !parammkt.b().isEmpty())
      arrayList.addAll(parammkt.b()); 
    this.g = new mpf(arrayList, b());
    this.e.setAdapter((RecyclerView.Adapter)this.g);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 9898) {
      if (paramInt2 == -1) {
        mkw mkw = (mkw)paramIntent.getSerializableExtra("result");
        Intent intent = new Intent();
        intent.putExtra("result", (Serializable)mkw);
        setResult(-1, intent);
        finish();
        return;
      } 
    } else {
      return;
    } 
    if (paramInt2 == 0) {
      gpu.b((Activity)this);
      return;
    } 
  }
  
  public void onBackPressed() {
    setResult(0, new Intent());
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969351);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131299085));
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transferencia\presentation\ListagemFavorecidosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */