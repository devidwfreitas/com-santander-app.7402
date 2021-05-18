package com.santander.app.cartoes.bloqueio.presentation;

import amr;
import amt;
import amy;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import ggx;
import ghe;
import ghf;
import ghg;
import ghh;
import ghi;
import ghj;
import ghu;
import gmy;
import grs;
import gvb;
import java.io.Serializable;
import java.util.List;
import mxn;
import nau;

public class BloqueioCartaoActivity extends grs implements ghh, nau {
  private static final String E = "BloqueiodeCartaoActivity";
  
  private SantanderDropDownView A;
  
  private ghj B;
  
  private ghu C;
  
  private ggx D;
  
  private int F = 1;
  
  private RelativeLayout a;
  
  private RelativeLayout b;
  
  private RelativeLayout c;
  
  private RelativeLayout d;
  
  private LinearLayout e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private Spinner y;
  
  private Button z;
  
  private void a() {
    this.b = (RelativeLayout)findViewById(2131755322);
    this.c = (RelativeLayout)findViewById(2131755332);
    this.d = (RelativeLayout)findViewById(2131755334);
    this.f = (TextView)findViewById(2131755323);
    this.g = (TextView)findViewById(2131755327);
    this.w = (TextView)findViewById(2131755329);
    this.x = (TextView)findViewById(2131755331);
    this.y = (Spinner)findViewById(2131755333);
    this.z = (Button)findViewById(2131755335);
    this.A = (SantanderDropDownView)findViewById(2131755321);
    this.e = (LinearLayout)findViewById(2131755336);
    this.z.setOnClickListener((View.OnClickListener)new ghe(this));
  }
  
  private void b() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131755336) == null) {
      this.e.setVisibility(0);
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(this.F);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131755336, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.B.a(this.C, this.D);
  }
  
  public void a(ghu paramghu) {
    this.C = paramghu;
    this.g.setText(paramghu.g());
    this.w.setText(paramghu.z());
    this.x.setText(paramghu.k());
  }
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)paramgvb);
    startActivity(intent);
  }
  
  public void a(String paramString) {}
  
  public void a(List<ghu> paramList) {
    amy amy = gmy.d(paramList);
    this.A.setAdapter((amr)amy);
    this.A.setOnItemSelectedListener((amt)new ghf(this));
  }
  
  public void b(String paramString) {
    mxn.a((Activity)this, "Atenção", paramString, true, "OK");
  }
  
  public void b(List<ggx> paramList) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969469, paramList);
    this.y.setAdapter((SpinnerAdapter)arrayAdapter);
    this.y.setSelection(0);
    this.y.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new ghg(this));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968616);
    c(2131298936);
    this.i = (Activity)this;
    a();
    this.B = (ghj)new ghi(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cartoes\bloqueio\presentation\BloqueioCartaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */