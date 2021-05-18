package com.santander.app.habilitacaointernacional.activity;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.ImageView;
import com.santander.app.components.view.SegmentImageView;
import com.santander.app.widget.Indicator;
import foh;
import ghu;
import gpu;
import grs;
import imk;
import ind;
import ine;
import inf;
import ing;
import inh;
import ini;
import inj;
import mxn;
import nez;

public class HabilitacaoInternacionalActivity extends grs implements nez {
  private SegmentImageView A;
  
  private Dialog B = null;
  
  private final String a = "HabilitacaoInternacionalActivity";
  
  private int b;
  
  private String c;
  
  private ghu d;
  
  private imk e;
  
  private ImageView f;
  
  private ImageView g;
  
  private Indicator w;
  
  private ViewPager x;
  
  private SegmentImageView y;
  
  private SegmentImageView z;
  
  private void a() {
    this.y = (SegmentImageView)findViewById(2131757609);
    this.z = (SegmentImageView)findViewById(2131757610);
    this.A = (SegmentImageView)findViewById(2131757608);
    this.A.setOnClickListener((View.OnClickListener)new ind(this));
    this.y.setOnClickListener((View.OnClickListener)new ine(this));
    this.z.setOnClickListener((View.OnClickListener)new inf(this));
    if (this.c != null && this.c.equals("N")) {
      this.y.a();
      this.z.a();
    } 
    if (b()) {
      d();
      return;
    } 
    c();
  }
  
  private boolean b() {
    return (this.v.f().s().a() != null && ((ghu)this.v.f().s().a().get(0)).A() == null);
  }
  
  private void c() {
    e();
    b(this.e.a());
  }
  
  private void d() {
    this.B = mxn.b((Activity)this);
    this.v.f().t().a((foh)new ing(this));
  }
  
  private void e() {
    this.x = (ViewPager)findViewById(2131757606);
    this.x.setOnTouchListener((View.OnTouchListener)new inh(this));
    this.w = (Indicator)findViewById(2131757607);
    this.g = (ImageView)findViewById(2131756232);
    this.f = (ImageView)findViewById(2131756233);
    this.e = new imk((Activity)this, this.x, this.w, this.g, this.f, 0);
    this.g.setOnClickListener((View.OnClickListener)new ini(this));
    this.f.setOnClickListener((View.OnClickListener)new inj(this));
    this.e.a(this.b, Boolean.valueOf(false));
    this.e.a(this);
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {
    this.b = paramInt;
    this.d = (ghu)this.e.c(paramInt);
    this.c = this.d.x();
    if (!"S".equalsIgnoreCase(this.c)) {
      this.y.a();
      this.z.a();
      return;
    } 
    this.y.b();
    this.z.b();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969106);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130838158));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.b = bundle.getInt("indiceCartaoSelecionado");
      this.c = bundle.getString("possuiViagemCadastrada");
    } 
    a();
    gpu.a((Activity)this, actionBar, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\habilitacaointernacional\activity\HabilitacaoInternacionalActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */