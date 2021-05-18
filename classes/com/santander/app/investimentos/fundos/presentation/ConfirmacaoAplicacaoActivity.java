package com.santander.app.investimentos.fundos.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gpu;
import grs;
import gvb;
import hav;
import java.io.Serializable;
import java.util.List;
import jdx;
import jdy;
import jft;
import jfu;
import jfv;
import jfw;
import jfx;
import jfy;
import jfz;
import jga;
import jgb;
import jgc;
import jgd;
import jhr;
import jik;
import jil;
import mxn;
import nau;

public class ConfirmacaoAplicacaoActivity extends grs implements jgd, nau {
  private TextView A;
  
  private LinearLayout B;
  
  private TextView C;
  
  private TextView D;
  
  private RecyclerView E;
  
  private SantanderTextView F;
  
  private ImageView a;
  
  private boolean b = false;
  
  private Button c;
  
  private jik d;
  
  private jdx e;
  
  private LinearLayout f;
  
  private LinearLayout g;
  
  private LinearLayout w;
  
  private final int x = 1;
  
  private RelativeLayout y;
  
  private RelativeLayout z;
  
  private void a(TextView paramTextView) {
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
    spannableStringBuilder.append("Declaro aderir aos termos e condições do Regulamento");
    spannableStringBuilder.setSpan(new jga(this), spannableStringBuilder.length() - "Regulamento".length(), spannableStringBuilder.length(), 0);
    spannableStringBuilder.append(", Formulário de Informações Complementares");
    spannableStringBuilder.setSpan(new jgb(this), spannableStringBuilder.length() - "Formulário de Informações Complementares".length(), spannableStringBuilder.length(), 0);
    spannableStringBuilder.append(" e Lâmina de Informações Essenciais");
    spannableStringBuilder.setSpan(new jgc(this), spannableStringBuilder.length() - "Lâmina de informações Essenciais".length(), spannableStringBuilder.length(), 0);
    spannableStringBuilder.append(", se houver, do fundo de investimento em referência, os quais me foram previamente disponibilizados.");
    spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor((Context)this, 2131624040)), 41, 52, 0);
    spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor((Context)this, 2131624040)), 54, 94, 0);
    spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor((Context)this, 2131624040)), 97, 129, 0);
    paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
    paramTextView.setText((CharSequence)spannableStringBuilder, TextView.BufferType.SPANNABLE);
  }
  
  private void c() {
    this.w = (LinearLayout)findViewById(2131757793);
    this.a = (ImageView)findViewById(2131757802);
    this.c = (Button)findViewById(2131757804);
    this.D = (TextView)findViewById(2131757803);
    a(this.D);
    this.c.setEnabled(false);
    this.c.setOnClickListener((View.OnClickListener)new jft(this));
    this.a.setOnClickListener(d());
    this.f = (LinearLayout)findViewById(2131757835);
    this.f.setVisibility(8);
    this.g = (LinearLayout)findViewById(2131755504);
    this.g.setVisibility(0);
    this.y = (RelativeLayout)findViewById(2131757795);
    this.z = (RelativeLayout)findViewById(2131757800);
    this.A = (TextView)findViewById(2131757794);
    this.B = (LinearLayout)findViewById(2131757801);
    this.y.setOnClickListener((View.OnClickListener)new jfv(this));
    this.z.setOnClickListener((View.OnClickListener)new jfw(this));
    this.E = (RecyclerView)findViewById(2131755794);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.E.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
  }
  
  private View.OnClickListener d() {
    return (View.OnClickListener)new jfx(this);
  }
  
  public void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131757835) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131757835, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
    this.f.setVisibility(0);
    this.g.setVisibility(8);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    switch (jfu.a[this.e.t().ordinal()]) {
      default:
        return;
      case 1:
      case 2:
        this.d.a(this.e, false);
        return;
      case 3:
        break;
    } 
    this.d.b(this.e, false);
  }
  
  public void a(gvb paramgvb) {
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)paramgvb);
    startActivity(intent);
  }
  
  public void a(String paramString) {
    hav.d((Activity)this, paramString);
  }
  
  public void a(List<jdy> paramList) {
    this.E.setAdapter((RecyclerView.Adapter)new jhr(paramList));
  }
  
  public void b() {
    if (this.e != null) {
      switch (jfu.a[this.e.t().ordinal()]) {
        default:
          return;
        case 1:
          this.w.setVisibility(8);
          this.c.setEnabled(true);
          return;
        case 3:
          break;
      } 
      this.w.setVisibility(8);
      this.c.setEnabled(true);
      return;
    } 
  }
  
  public void b(String paramString) {
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText(getString(2131296619));
    jfy jfy = new jfy(this, dialog, paramString);
    button1.setText(getString(2131296618));
    jfz jfz = new jfz(this, dialog);
    mxn.a(this.i, dialog, getString(2131297207), getString(2131296563), (View.OnClickListener)jfy, (View.OnClickListener)jfz);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968636);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    this.e = (jdx)getIntent().getExtras().getSerializable("fundos_confirmacao");
    switch (jfu.a[this.e.t().ordinal()]) {
      default:
        c();
        this.d = (jik)new jil(this.i, this);
        this.d.a(this.e);
        return;
      case 1:
      case 2:
        gpu.a((Activity)this, actionBar, getString(2131297846));
      case 3:
        break;
    } 
    gpu.a((Activity)this, actionBar, getString(2131297994));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\ConfirmacaoAplicacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */