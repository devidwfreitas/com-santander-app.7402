package com.santander.app.agendamentos.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Indicator;
import fqm;
import fqn;
import fqo;
import fqp;
import fqq;
import fqr;
import frb;
import frc;
import frq;
import goo;
import gpm;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;
import naq;

public class AgendamentosActivity extends grs implements ViewPager.OnPageChangeListener, View.OnClickListener {
  private HashMap<String, List<frb>> A;
  
  private int B;
  
  private goo C;
  
  private Indicator D;
  
  private ViewPager E;
  
  private ImageView F;
  
  private ImageView G;
  
  private List<Conta> H;
  
  private Conta I = null;
  
  private LinearLayout J;
  
  private ImageView K;
  
  private int L;
  
  private final String a = "AgendamentosActivity";
  
  private GridView b;
  
  private fqq c;
  
  private Calendar d;
  
  private TextView e;
  
  private ImageView f;
  
  private ImageView g;
  
  @SuppressLint({"NewApi"})
  private int w;
  
  @SuppressLint({"NewApi"})
  private int x;
  
  @SuppressLint({"NewApi", "NewApi", "NewApi", "NewApi"})
  private final DateFormat y = new DateFormat();
  
  private frc z;
  
  private View a() {
    RelativeLayout relativeLayout = new RelativeLayout((Context)this);
    relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    relativeLayout.setBackgroundDrawable(getResources().getDrawable(2130838151));
    ImageView imageView = new ImageView((Context)this);
    imageView.setImageDrawable(getResources().getDrawable(2130837593));
    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
    layoutParams.addRule(15);
    layoutParams.setMargins(10, 10, 10, 10);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    relativeLayout.addView((View)imageView);
    imageView = new ImageView((Context)this);
    layoutParams = new RelativeLayout.LayoutParams(1, -1);
    layoutParams.addRule(1, 1);
    layoutParams.setMargins(10, 10, 10, 10);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    imageView.setBackgroundColor(getResources().getColor(2131624186));
    relativeLayout.addView((View)imageView);
    imageView = new ImageView((Context)this);
    imageView.setImageDrawable(getResources().getDrawable(2130837592));
    layoutParams = new RelativeLayout.LayoutParams(-2, -2);
    layoutParams.addRule(11);
    layoutParams.addRule(15);
    layoutParams.setMargins(10, 10, 10, 10);
    imageView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    relativeLayout.addView((View)imageView);
    relativeLayout.setGravity(16);
    return (View)relativeLayout;
  }
  
  private void a(int paramInt) {
    fqr fqr = new fqr(this, null);
    fqr.a(paramInt);
    fqr.a(true);
    fqr.c((Object[])new Void[0]);
  }
  
  private void a(int paramInt1, int paramInt2) {
    this.c = new fqq(this, getApplicationContext(), 2131759477, paramInt1, paramInt2);
    this.d.set(paramInt2, paramInt1 - 1, this.d.get(5));
    this.e.setText(String.format("%s %s", new Object[] { naq.a(this.d.get(2) + 1), Integer.valueOf(this.d.get(1)) }));
    this.c.notifyDataSetChanged();
    this.b.setAdapter((ListAdapter)this.c);
  }
  
  private void b() {
    this.d = Calendar.getInstance(TimeZone.getDefault());
    this.w = this.d.get(2) + 1;
    this.x = this.d.get(1);
    this.f = (ImageView)findViewById(2131756235);
    this.f.setOnClickListener(this);
    this.e = (TextView)findViewById(2131756236);
    this.e.setText(String.format("%s %s", new Object[] { naq.a(this.d.get(2) + 1), Integer.valueOf(this.d.get(1)) }));
    this.g = (ImageView)findViewById(2131756237);
    this.g.setOnClickListener(this);
    this.b = (GridView)findViewById(2131756239);
    this.c = new fqq(this, getApplicationContext(), 2131759477, this.w, this.x);
    this.c.notifyDataSetChanged();
    this.b.setAdapter((ListAdapter)this.c);
  }
  
  private void c() {
    if (this.z != null && this.z.ai() != null)
      for (frb frb : this.z.ai()) {
        if (frb.J() != null || frb.K() != null) {
          if (!this.A.containsKey(frb.J()))
            this.A.put(frb.J(), new ArrayList<frb>()); 
          ((List<frb>)this.A.get(frb.J())).add(frb);
        } 
      }  
  }
  
  private void d() {
    this.E = (ViewPager)findViewById(2131756231);
    this.E.addOnPageChangeListener(this);
    this.E.setOnTouchListener((View.OnTouchListener)new fqm(this));
    this.D = (Indicator)findViewById(2131756234);
    this.G = (ImageView)findViewById(2131756232);
    this.F = (ImageView)findViewById(2131756233);
    this.C = new goo((Activity)this, this.E, this.D, this.G, this.F);
    int j = this.H.indexOf(this.I);
    int i = j;
    if (j < 0)
      i = 0; 
    this.C.a(this.H, i);
    this.G.setOnClickListener((View.OnClickListener)new fqn(this));
    this.F.setOnClickListener((View.OnClickListener)new fqo(this));
  }
  
  public void onClick(View paramView) {
    if (paramView == this.f && this.B >= -3) {
      this.B--;
      if (this.w <= 1) {
        this.w = 12;
        this.x--;
      } else {
        this.w--;
      } 
      a(this.w, this.x);
    } 
    if (paramView == this.g && this.B <= 11) {
      this.B++;
      if (this.w > 11) {
        this.w = 1;
        this.x++;
      } else {
        this.w++;
      } 
      a(this.w, this.x);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968798);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.i = (Activity)this;
    actionBar.setCustomView(a());
    findViewById(2131756230).requestFocus();
    this.H = this.v.f().q().a();
    if (this.H.size() > 0) {
      this.I = this.H.get(0);
      a(0);
      this.L = 0;
    } 
    (new fqp(this)).c((Object[])new Void[0]);
    gpu.a((Activity)this, actionBar, getString(2131296402));
    this.J = (LinearLayout)findViewById(2131756240);
    this.A = new HashMap<String, List<frb>>();
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    frq.d("Outros_Agendamentos_Acao", "SelecionarConta");
    gpm.a(this.E, this.F, this.G, this.D, paramInt, (Activity)this);
    this.L = paramInt;
    if (this.H != null && !this.H.isEmpty()) {
      this.I = this.H.get(paramInt);
      (new fqp(this)).c((Object[])new Void[0]);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\agendamentos\activity\AgendamentosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */