package com.santander.app.transferencia.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gpu;
import grs;
import gvb;
import java.io.Serializable;
import mlo;
import mnp;
import mnq;
import mnr;
import mns;
import mps;
import mpt;
import naj;
import nak;
import naq;
import nau;

public class ConfirmacaoTransferenciaActivity extends grs implements mns, nau {
  private static final String J = "ConfirmacaoTransferenciaActivity";
  
  private EditText A;
  
  private ImageButton B;
  
  private Button C;
  
  private LinearLayout D;
  
  private LinearLayout E;
  
  private ScrollView F;
  
  private mps G;
  
  private mlo H;
  
  private final int I = 1;
  
  private Activity a = (Activity)this;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void c() {
    this.H = (mlo)getIntent().getSerializableExtra("transferencia");
    this.b = (TextView)findViewById(2131757809);
    this.c = (TextView)findViewById(2131757811);
    this.d = (TextView)findViewById(2131757813);
    this.e = (TextView)findViewById(2131757815);
    this.f = (TextView)findViewById(2131757816);
    this.g = (TextView)findViewById(2131757817);
    this.w = (TextView)findViewById(2131757818);
    this.x = (TextView)findViewById(2131757820);
    this.y = (TextView)findViewById(2131757821);
    this.z = (TextView)findViewById(2131757822);
    this.A = (EditText)findViewById(2131757825);
    this.B = (ImageButton)findViewById(2131757826);
    this.C = (Button)findViewById(2131757806);
    this.C.setOnClickListener((View.OnClickListener)new mnp(this));
    if (this.H.f().equalsIgnoreCase("tef")) {
      findViewById(2131757823).setVisibility(8);
    } else {
      findViewById(2131757823).setVisibility(0);
    } 
    this.D = (LinearLayout)findViewById(2131757819);
    this.F = (ScrollView)findViewById(2131757807);
    this.E = (LinearLayout)findViewById(2131757836);
    a();
  }
  
  private void d() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    Fragment fragment = fragmentManager.findFragmentById(2131757836);
    this.E.setVisibility(0);
    this.F.setVisibility(8);
    if (fragment == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131757836, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  private void e() {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968953);
    dialog.setCancelable(true);
    Window window = dialog.getWindow();
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    layoutParams.gravity = 17;
    layoutParams.width = -1;
    layoutParams.height = -2;
    window.setAttributes(layoutParams);
    dialog.findViewById(2131756888).setOnClickListener((View.OnClickListener)new mnr(this, dialog));
    dialog.show();
  }
  
  public void a() {
    String str;
    if (this.H.f().equalsIgnoreCase("tef")) {
      str = "Transferência entre contas";
    } else {
      str = this.H.f();
    } 
    this.b.setText(str);
    this.c.setText(naq.c(this.H.a().getAgencia(), this.H.a().getCuenta()));
    this.d.setText(naj.f(this.H.a().getExtractoHome().u()));
    if (this.H.b() != null) {
      this.e.setText(this.H.b().e());
      this.f.setText(this.H.b().i());
      TextView textView = this.g;
      StringBuilder stringBuilder = (new StringBuilder()).append("ag: ").append(this.H.b().h()).append(" - conta: ");
      if (naq.l(this.H.b().g()) == 33.0D) {
        str = naq.h(this.H.b().k());
      } else {
        str = this.H.b().k();
      } 
      textView.setText(stringBuilder.append(str).toString());
    } else {
      this.e.setText(this.H.c().h());
      this.f.setText(this.H.c().l());
      this.g.setText("ag: " + this.H.c().d() + " - conta: " + this.H.c().e() + this.H.c().j());
    } 
    this.w.setText(naj.Q(this.H.d()));
    if (this.H.i()) {
      this.x.setText(nak.a(this.H.g(), "yyyyMMdd", "dd/MM/yyyy"));
      if (this.H.j().equalsIgnoreCase("S")) {
        this.y.setText(getResources().getString(2131298309));
      } else if (this.H.j().equalsIgnoreCase("Q")) {
        this.y.setText(getResources().getString(2131298308));
      } else {
        this.y.setText(getResources().getString(2131298307));
      } 
      this.z.setText(this.H.k());
    } else {
      this.D.setVisibility(8);
    } 
    this.B.setOnClickListener((View.OnClickListener)new mnq(this));
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.G.a(this.H);
  }
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)paramgvb);
    startActivity(intent);
  }
  
  public mlo b() {
    return this.H;
  }
  
  public void finish() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968637);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131299085));
    c();
    this.G = (mps)new mpt(this.a, this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transferencia\presentation\ConfirmacaoTransferenciaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */