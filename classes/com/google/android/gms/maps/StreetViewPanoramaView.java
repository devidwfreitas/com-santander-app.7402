package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import csp;
import cxb;
import dxl;
import dyc;

public class StreetViewPanoramaView extends FrameLayout {
  private final dyc a;
  
  public StreetViewPanoramaView(Context paramContext) {
    super(paramContext);
    this.a = new dyc((ViewGroup)this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    this.a = new dyc((ViewGroup)this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = new dyc((ViewGroup)this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions) {
    super(paramContext);
    this.a = new dyc((ViewGroup)this, paramContext, paramStreetViewPanoramaOptions);
  }
  
  public final void a() {
    this.a.c();
  }
  
  public final void a(Bundle paramBundle) {
    this.a.a(paramBundle);
    if (this.a.a() == null)
      cxb.b(this); 
  }
  
  public void a(dxl paramdxl) {
    csp.b("getStreetViewPanoramaAsync() must be called on the main thread");
    this.a.a(paramdxl);
  }
  
  public final void b() {
    this.a.d();
  }
  
  public final void b(Bundle paramBundle) {
    this.a.b(paramBundle);
  }
  
  public final void c() {
    this.a.g();
  }
  
  public final void d() {
    this.a.h();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\StreetViewPanoramaView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */