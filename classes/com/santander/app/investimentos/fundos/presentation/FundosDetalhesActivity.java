package com.santander.app.investimentos.fundos.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import gpu;
import grs;
import gtg;
import gti;
import java.io.Serializable;
import java.util.List;
import jdk;
import jdx;
import jdz;
import jgt;
import jgu;
import jgv;
import jgw;
import jht;
import jiq;
import jir;
import nat;

public class FundosDetalhesActivity extends grs implements jgw {
  private RecyclerView a;
  
  private jdx b;
  
  private jiq c;
  
  private TextView d;
  
  private gtg e;
  
  private boolean f;
  
  private LinearLayout g;
  
  private LinearLayout a(jdx paramjdx) {
    LinearLayout linearLayout = new LinearLayout((Context)this.i);
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-2, -2, 1.0F));
    linearLayout.setOrientation(0);
    linearLayout.setGravity(17);
    linearLayout.setBackground(this.i.getDrawable(2130837626));
    Button button = new Button((Context)this.i);
    button.setTextColor(ContextCompat.getColor((Context)this.i, 2131624003));
    button.setBackgroundColor(ContextCompat.getColor((Context)this.i, 2131623972));
    button.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-2, -2));
    button.setText(paramjdx.t().label());
    button.setTag(paramjdx);
    button.setOnClickListener((View.OnClickListener)new jgu(this));
    linearLayout.addView((View)button);
    return linearLayout;
  }
  
  private void b() {
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131297781);
    this.d = (TextView)findViewById(2131755792);
    this.d.setText(this.b.M());
    this.a = (RecyclerView)findViewById(2131755794);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.a.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.e = new gtg(this.i, (gti)new jgt(this));
    this.g = (LinearLayout)findViewById(2131755793);
    c();
  }
  
  private void c() {
    jdx jdx2 = new jdx();
    jdx jdx1 = jdx2;
    if (this.b.o()) {
      try {
        jdx1 = this.b.a();
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.toString());
        jdx1 = jdx2;
      } 
      jdx1.a(jdk.RESGATAR);
      this.g.addView((View)a(jdx1));
    } 
    jdx2 = jdx1;
    if (this.b.p()) {
      try {
        jdx2 = this.b.a();
        jdx1 = jdx2;
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
      } 
      jdx1.a(jdk.APLICAR);
      this.g.addView((View)a(jdx1));
      jdx2 = jdx1;
    } 
    jdx1 = jdx2;
    if (this.b.q()) {
      try {
        jdx1 = this.b.a();
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
        jdx1 = jdx2;
      } 
      jdx1.a(jdk.CANCELAR);
      this.g.addView((View)a(jdx1));
    } 
    jdx2 = jdx1;
    if (this.b.s()) {
      try {
        jdx2 = this.b.a();
        jdx1 = jdx2;
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
      } 
      jdx1.a(jdk.EXTRATO);
      this.g.addView((View)a(jdx1));
      jdx2 = jdx1;
    } 
    if (this.b.r()) {
      jdx jdx3;
      try {
        jdx1 = this.b.a();
      } catch (CloneNotSupportedException cloneNotSupportedException) {
        Log.e("Error", cloneNotSupportedException.getMessage());
        jdx3 = jdx2;
      } 
      jdx3.a(jdk.REAPLICAR);
      this.g.addView((View)a(jdx3));
    } 
  }
  
  private View.OnClickListener d() {
    return (View.OnClickListener)new jgv(this);
  }
  
  public void a() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.USUARIO_CONSULTIVO);
    startActivity(intent);
  }
  
  public void a(List<jdz> paramList) {
    this.a.setAdapter((RecyclerView.Adapter)new jht(paramList, d()));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968683);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getResources().getString(2131297927));
    this.b = (jdx)getIntent().getExtras().getSerializable("fundos_detalhes");
    this.f = getIntent().getBooleanExtra("perfil_n_cadastrado", false);
    b();
    this.c = (jiq)new jir(this);
    this.c.a(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\FundosDetalhesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */