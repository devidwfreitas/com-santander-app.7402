package com.santander.app.formalizacaodigital.presentation;

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
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gkx;
import gky;
import gpu;
import grs;
import gvb;
import igg;
import igl;
import ihg;
import ihh;
import ihi;
import ihj;
import ihk;
import ihl;
import ihw;
import ihx;
import java.io.Serializable;
import mxn;
import mzu;
import nat;
import nau;

public class DetalheFormalizacaoDigitalActivity extends grs implements ihl, nau {
  private igg A;
  
  private final int B = 1;
  
  private ihw a;
  
  private igl b;
  
  private LinearLayout c;
  
  private TextView d;
  
  private ImageView e;
  
  private boolean f = false;
  
  private Button g;
  
  private Button w;
  
  private LinearLayout x;
  
  private LinearLayout y;
  
  private TextView z;
  
  private LinearLayout a(Context paramContext, gky paramgky, String paramString) {
    TextView textView1;
    LinearLayout linearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    if (paramString != null)
      layoutParams1.setMargins(0, 0, 0, 0); 
    linearLayout.setLayoutParams((ViewGroup.LayoutParams)layoutParams1);
    linearLayout.setPadding(10, 0, 0, 0);
    linearLayout.setOrientation(0);
    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
    if (paramString != null) {
      textView1 = new TextView(paramContext);
      textView1.setLayoutParams(layoutParams);
      textView1.setTextColor(-16777216);
      textView1.setTypeface(mzu.a((Context)this, 1));
      textView1.setText(paramString);
      linearLayout.addView((View)textView1);
      return linearLayout;
    } 
    TextView textView2 = new TextView((Context)textView1);
    textView2.setLayoutParams(layoutParams);
    textView2.setTypeface(mzu.a((Context)this, 0));
    textView2.setText(paramgky.b());
    TextView textView3 = new TextView((Context)textView1);
    if (!paramgky.d())
      textView3.setPadding(10, 0, 0, 0); 
    textView3.setLayoutParams(layoutParams);
    textView3.setTypeface(mzu.a((Context)this, 1));
    textView3.setTextColor(textView1.getResources().getColor(2131624187));
    textView3.setText(paramgky.c());
    linearLayout.addView((View)textView2);
    linearLayout.addView((View)textView3);
    return linearLayout;
  }
  
  private void a(Activity paramActivity, String paramString1, String paramString2) {
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.setContentView(2130969210);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText("Continuar");
    ihj ihj = new ihj(this, dialog);
    button1.setText("Fechar");
    ihk ihk = new ihk(this, dialog);
    mxn.a(this.i, dialog, paramString1, paramString2, (View.OnClickListener)ihj, (View.OnClickListener)ihk);
  }
  
  private void d() {
    a();
    this.c = (LinearLayout)findViewById(2131757892);
    this.d = (TextView)findViewById(2131757893);
    this.e = (ImageView)findViewById(2131757802);
    this.w = (Button)findViewById(2131757894);
    this.g = (Button)findViewById(2131757895);
    this.x = (LinearLayout)findViewById(2131757889);
    this.y = (LinearLayout)findViewById(2131757896);
    this.z = (TextView)findViewById(2131757891);
    this.b = (igl)getIntent().getExtras().get("proposta");
    this.z.setText(this.b.b());
    this.e.setOnClickListener(e());
    this.g.setOnClickListener(g());
    this.w.setOnClickListener(f());
    this.a = (ihw)new ihx(this);
  }
  
  private View.OnClickListener e() {
    return (View.OnClickListener)new ihg(this);
  }
  
  private View.OnClickListener f() {
    return (View.OnClickListener)new ihh(this);
  }
  
  private View.OnClickListener g() {
    return (View.OnClickListener)new ihi(this);
  }
  
  private void h() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.USUARIO_CONSULTIVO);
    startActivity(intent);
  }
  
  public void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getResources().getText(2131297496).toString());
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.a.a(this.b, this.A);
  }
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)paramgvb);
    startActivity(intent);
  }
  
  public void a(igg paramigg) {
    if (paramigg.e() != null && !paramigg.e().isEmpty()) {
      for (gkx gkx : paramigg.e()) {
        this.c.addView((View)a((Context)this, (gky)null, gkx.a()));
        if (gkx.c() != null)
          for (gky gky : gkx.c())
            this.c.addView((View)a((Context)this, gky, (String)null));  
      } 
      this.d.setText(paramigg.c());
      this.A = paramigg;
      this.A.f(this.z.getText().toString());
    } 
  }
  
  public void a(String paramString1, String paramString2) {
    mxn.a((Activity)this, paramString1, paramString2, true, "Fechar", true);
  }
  
  public void b() {
    this.a.c();
  }
  
  public void c() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    Fragment fragment = fragmentManager.findFragmentById(2131757836);
    this.y.setVisibility(0);
    this.x.setVisibility(8);
    if (fragment == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131757896, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  public void onBackPressed() {
    if (this.v.f().z() > 1) {
      Intent intent = new Intent((Context)this, ListagemPropostasActivity.class);
      intent.addFlags(67108864);
      startActivity(intent);
      return;
    } 
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968936);
    d();
    this.a.a(this.b.a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\formalizacaodigital\presentation\DetalheFormalizacaoDigitalActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */