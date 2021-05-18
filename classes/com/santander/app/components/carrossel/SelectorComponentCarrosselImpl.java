package com.santander.app.components.carrossel;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import gla;
import glb;
import mzr;

public class SelectorComponentCarrosselImpl extends LinearLayout {
  private glb a;
  
  public SelectorComponentCarrosselImpl(Context paramContext) {
    super(paramContext);
  }
  
  public SelectorComponentCarrosselImpl(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public SelectorComponentCarrosselImpl(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public int a() {
    switch (mzr.d()) {
      default:
        return 2131623961;
      case 8:
        break;
    } 
    return 2131623937;
  }
  
  public void a(glb paramglb) {
    View view = LayoutInflater.from(getContext()).inflate(paramglb.a(), (ViewGroup)this);
    this.a = paramglb;
    this.a.b(a());
    this.a.a(view);
  }
  
  public void a(Object paramObject) {
    this.a.b(paramObject);
  }
  
  public <T> T b() {
    return (T)this.a.b();
  }
  
  public int c() {
    return this.a.c();
  }
  
  public void setSelectedItemEvent(gla paramgla) {
    this.a.a(paramgla);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\carrossel\SelectorComponentCarrosselImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */