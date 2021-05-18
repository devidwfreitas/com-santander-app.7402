package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import csp;
import cxb;
import dxi;
import dxk;

public class MapView extends FrameLayout {
  private final dxi a;
  
  public MapView(Context paramContext) {
    super(paramContext);
    this.a = new dxi((ViewGroup)this, paramContext, null);
    h();
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    this.a = new dxi((ViewGroup)this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    h();
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = new dxi((ViewGroup)this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    h();
  }
  
  public MapView(Context paramContext, GoogleMapOptions paramGoogleMapOptions) {
    super(paramContext);
    this.a = new dxi((ViewGroup)this, paramContext, paramGoogleMapOptions);
    h();
  }
  
  private void h() {
    setClickable(true);
  }
  
  public final void a() {
    this.a.c();
  }
  
  public final void a(Bundle paramBundle) {
    this.a.a(paramBundle);
    if (this.a.a() == null)
      cxb.b(this); 
  }
  
  public void a(dxk paramdxk) {
    csp.b("getMapAsync() must be called on the main thread");
    this.a.a(paramdxk);
  }
  
  public final void b() {
    this.a.d();
  }
  
  public final void b(Bundle paramBundle) {
    this.a.b(paramBundle);
  }
  
  public final void c() {
    this.a.b();
  }
  
  public final void c(Bundle paramBundle) {
    csp.b("onEnterAmbient() must be called on the main thread");
    this.a.c(paramBundle);
  }
  
  public final void d() {
    this.a.e();
  }
  
  public final void e() {
    this.a.g();
  }
  
  public final void f() {
    this.a.h();
  }
  
  public final void g() {
    csp.b("onExitAmbient() must be called on the main thread");
    this.a.j();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\MapView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */