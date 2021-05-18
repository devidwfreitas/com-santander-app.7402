package com.santander.app.widget;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import fom;
import mzr;
import new;
import nex;
import ney;
import nez;

public class Carrossel extends LinearLayout implements ViewPager.OnPageChangeListener {
  public ViewPager a = null;
  
  protected Indicator b = null;
  
  protected ImageView c = null;
  
  protected ImageView d = null;
  
  private nez e = null;
  
  public Carrossel(Context paramContext) {
    super(paramContext);
  }
  
  public Carrossel(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public int a() {
    return this.a.getCurrentItem();
  }
  
  public ViewPager b() {
    return this.a;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    int i = mzr.d();
    if (this.a.getCurrentItem() > 0) {
      if (i == 3) {
        this.d.setImageDrawable(getResources().getDrawable(2130837604));
      } else if (i == 4 || i == 5) {
        this.d.setImageDrawable(getResources().getDrawable(2130837605));
      } else {
        this.d.setImageDrawable(getResources().getDrawable(2130837602));
      } 
    } else {
      this.d.setImageDrawable(getResources().getDrawable(2130837603));
    } 
    if (this.a.getCurrentItem() < this.a.getAdapter().getCount() - 1) {
      if (i == 3) {
        this.c.setImageDrawable(getResources().getDrawable(2130837608));
      } else if (i == 4 || i == 5) {
        this.c.setImageDrawable(getResources().getDrawable(2130837609));
      } else {
        this.c.setImageDrawable(getResources().getDrawable(2130837606));
      } 
    } else {
      this.c.setImageDrawable(getResources().getDrawable(2130837607));
    } 
    this.b.setSelected(paramInt);
    if (this.e != null)
      this.e.b(paramInt); 
  }
  
  public void setAdapter(fom paramfom) {
    this.a = (ViewPager)findViewById(2131756039);
    this.a.setOnTouchListener((View.OnTouchListener)new new(this));
    this.b = (Indicator)findViewById(2131756042);
    this.d = (ImageView)findViewById(2131756232);
    this.c = (ImageView)findViewById(2131756233);
    if (paramfom.getCount() > 0) {
      this.b.setSize(paramfom.getCount());
      this.b.setSelected(0);
      if (paramfom.getCount() > 1) {
        int i = mzr.d();
        if (i == 3) {
          this.c.setImageDrawable(getResources().getDrawable(2130837608));
        } else if (i == 4 || i == 5) {
          this.c.setImageDrawable(getResources().getDrawable(2130837609));
        } else {
          this.c.setImageDrawable(getResources().getDrawable(2130837606));
        } 
      } else {
        this.c.setImageDrawable(getResources().getDrawable(2130837607));
      } 
    } else {
      this.c.setImageDrawable(getResources().getDrawable(2130837607));
    } 
    paramfom.a(this.e);
    this.a.setAdapter((PagerAdapter)paramfom);
    this.a.setOnPageChangeListener(this);
    this.d.setOnClickListener((View.OnClickListener)new nex(this));
    this.c.setOnClickListener((View.OnClickListener)new ney(this));
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
  
  public void setListener(nez paramnez) {
    this.e = paramnez;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\widget\Carrossel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */