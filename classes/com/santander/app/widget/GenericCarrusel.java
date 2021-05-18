package com.santander.app.widget;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import fqg;
import mip;
import miq;
import nfa;
import nfb;
import nfc;
import nfd;

public class GenericCarrusel extends LinearLayout implements ViewPager.OnPageChangeListener {
  private ViewPager a = null;
  
  private Indicator b = null;
  
  private ImageView c = null;
  
  private ImageView d = null;
  
  private mip e = (mip)miq.C();
  
  private nfd f = null;
  
  public GenericCarrusel(Context paramContext) {
    super(paramContext);
  }
  
  public GenericCarrusel(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public int a() {
    return this.a.getCurrentItem();
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    if (this.a.getCurrentItem() > 0) {
      if (this.e.f().i().equals("SE")) {
        this.d.setImageDrawable(getResources().getDrawable(2130837604));
      } else {
        this.d.setImageDrawable(getResources().getDrawable(2130837602));
      } 
    } else {
      this.d.setImageDrawable(getResources().getDrawable(2130837603));
    } 
    if (this.a.getCurrentItem() < this.a.getAdapter().getCount() - 1) {
      if (this.e.f().i().equals("SE")) {
        this.c.setImageDrawable(getResources().getDrawable(2130837608));
      } else {
        this.c.setImageDrawable(getResources().getDrawable(2130837606));
      } 
    } else {
      this.c.setImageDrawable(getResources().getDrawable(2130837607));
    } 
    this.b.setSelected(paramInt);
    if (this.f != null)
      this.f.a(paramInt); 
  }
  
  public void setAdapter(fqg paramfqg) {
    this.a = (ViewPager)findViewById(2131756039);
    this.a.setOnTouchListener((View.OnTouchListener)new nfa(this));
    this.b = (Indicator)findViewById(2131756042);
    this.d = (ImageView)findViewById(2131756232);
    this.c = (ImageView)findViewById(2131756233);
    if (paramfqg.getCount() > 1) {
      if (this.e.f().i().equals("SE")) {
        this.c.setImageDrawable(getResources().getDrawable(2130837608));
      } else {
        this.c.setImageDrawable(getResources().getDrawable(2130837606));
      } 
    } else {
      this.c.setImageDrawable(getResources().getDrawable(2130837607));
    } 
    this.b.setSize(paramfqg.getCount());
    this.b.setSelected(0);
    paramfqg.a(this.f);
    this.a.setAdapter((PagerAdapter)paramfqg);
    this.a.setOnPageChangeListener(this);
    this.d.setOnClickListener((View.OnClickListener)new nfb(this));
    this.c.setOnClickListener((View.OnClickListener)new nfc(this));
    if (this.a.getAdapter().getCount() < 2) {
      this.c.setVisibility(4);
      this.d.setVisibility(4);
      return;
    } 
    this.c.setVisibility(0);
    this.d.setVisibility(0);
  }
  
  public void setCurrentItem(int paramInt) {
    this.a.setCurrentItem(paramInt);
  }
  
  public void setListener(nfd paramnfd) {
    this.f = paramnfd;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\widget\GenericCarrusel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */