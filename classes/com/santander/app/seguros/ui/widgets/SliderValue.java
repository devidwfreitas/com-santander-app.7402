package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import mcm;
import mcn;
import mcq;
import mcr;
import mhb;
import mhj;

public class SliderValue extends LinearLayout {
  private final int a = 50;
  
  private final String b = getContext().getString(2131299197);
  
  private TextWatcher c;
  
  private TextWatcher d;
  
  private TextWatcher e;
  
  private mcr f;
  
  private EditText g;
  
  private SeekBar h;
  
  private double i = 0.0D;
  
  private double j = 0.0D;
  
  private double k;
  
  private boolean l = false;
  
  private boolean m;
  
  public SliderValue(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SliderValue(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SliderValue(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a();
    b();
  }
  
  private Double a(int paramInt) {
    double d = (paramInt / 50 * 50);
    return (d > this.j) ? Double.valueOf(this.j) : ((d < this.i) ? Double.valueOf(this.i) : Double.valueOf(d));
  }
  
  private void a() {
    View view = inflate(getContext(), 2130969492, (ViewGroup)this);
    this.g = (EditText)view.findViewById(2131759546);
    this.h = (SeekBar)view.findViewById(2131759547);
  }
  
  private void a(Double paramDouble) {
    if (this.f != null)
      this.f.a(paramDouble); 
  }
  
  private int b(Double paramDouble) {
    return (int)((paramDouble.doubleValue() - this.i) * 100.0D / (this.j - this.i));
  }
  
  private Double b(int paramInt) {
    return Double.valueOf((this.j - this.i) * paramInt / 100.0D + this.i);
  }
  
  private void b() {
    this.h.setOnSeekBarChangeListener((SeekBar.OnSeekBarChangeListener)new mcm(this));
    c();
  }
  
  private void c() {
    this.e = mhb.a(this.g);
    this.d = (TextWatcher)new mcn(this);
    this.c = (TextWatcher)new mcq(this);
    this.g.addTextChangedListener(this.e);
    this.g.addTextChangedListener(this.d);
  }
  
  private void c(Double paramDouble) {
    int i = b(paramDouble);
    this.h.setProgress(i);
  }
  
  private void d() {
    this.g.removeTextChangedListener(this.e);
    this.g.removeTextChangedListener(this.d);
    this.g.setText(this.b);
    this.g.setSelection(this.b.length());
    this.g.addTextChangedListener(this.c);
    mhj.a(getContext(), (View)this.g);
  }
  
  private void e() {
    this.g.removeTextChangedListener(this.c);
    this.g.addTextChangedListener(this.e);
    this.g.addTextChangedListener(this.d);
  }
  
  public void a(Double paramDouble1, Double paramDouble2, Double paramDouble3, boolean paramBoolean, mcr parammcr) {
    this.l = paramBoolean;
    this.i = paramDouble1.doubleValue();
    this.j = paramDouble2.doubleValue();
    this.f = parammcr;
    this.k = paramDouble3.doubleValue();
    this.g.setText(String.valueOf(paramDouble3));
    c(paramDouble3);
  }
  
  public void setSliderEnabled(boolean paramBoolean) {
    this.h.setEnabled(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\SliderValue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */