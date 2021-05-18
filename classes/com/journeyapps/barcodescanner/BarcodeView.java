package com.journeyapps.barcodescanner;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import epy;
import fco;
import fcr;
import fcs;
import fdi;
import fdj;
import fdk;
import fdl;
import fdq;
import fdw;
import java.util.HashMap;

public class BarcodeView extends CameraPreview {
  private fcs a = fcs.NONE;
  
  private fco b = null;
  
  private fdl c;
  
  private fdj d;
  
  private Handler e;
  
  private final Handler.Callback f = (Handler.Callback)new fcr(this);
  
  public BarcodeView(Context paramContext) {
    super(paramContext);
    a(paramContext, (AttributeSet)null);
  }
  
  public BarcodeView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public BarcodeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    this.d = (fdj)new fdq();
    this.e = new Handler(this.f);
  }
  
  private fdi s() {
    if (this.d == null)
      this.d = c(); 
    fdk fdk = new fdk();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put(epy.NEED_RESULT_POINT_CALLBACK, fdk);
    fdi fdi = this.d.a(hashMap);
    fdk.a(fdi);
    return fdi;
  }
  
  private void t() {
    u();
    if (this.a != fcs.NONE && q()) {
      this.c = new fdl(p(), s(), this.e);
      this.c.a(h());
      this.c.c();
    } 
  }
  
  private void u() {
    if (this.c != null) {
      this.c.d();
      this.c = null;
    } 
  }
  
  public fdj a() {
    return this.d;
  }
  
  public void a(fco paramfco) {
    this.a = fcs.SINGLE;
    this.b = paramfco;
    t();
  }
  
  public void b() {
    this.a = fcs.NONE;
    this.b = null;
    u();
  }
  
  public void b(fco paramfco) {
    this.a = fcs.CONTINUOUS;
    this.b = paramfco;
    t();
  }
  
  protected fdj c() {
    return (fdj)new fdq();
  }
  
  protected void d() {
    super.d();
    t();
  }
  
  public void e() {
    u();
    super.e();
  }
  
  public void setDecoderFactory(fdj paramfdj) {
    fdw.a();
    this.d = paramfdj;
    if (this.c != null)
      this.c.a(s()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\journeyapps\barcodescanner\BarcodeView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */