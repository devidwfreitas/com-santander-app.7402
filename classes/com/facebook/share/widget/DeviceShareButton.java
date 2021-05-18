package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import bhd;
import bhl;
import bhv;
import bjy;
import bnl;
import bvv;
import bvx;
import cbw;
import com.facebook.FacebookButtonBase;
import com.facebook.share.model.ShareContent;

public final class DeviceShareButton extends FacebookButtonBase {
  private ShareContent a;
  
  private int b = 0;
  
  private boolean c = false;
  
  private bvv d = null;
  
  public DeviceShareButton(Context paramContext) {
    this(paramContext, (AttributeSet)null, 0);
  }
  
  public DeviceShareButton(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  private DeviceShareButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt, 0, "fb_device_share_button_create", "fb_device_share_button_did_tap");
    if (isInEditMode()) {
      paramInt = 0;
    } else {
      paramInt = a();
    } 
    this.b = paramInt;
    a(false);
  }
  
  private void a(int paramInt) {
    if (bhv.b(paramInt))
      throw new IllegalArgumentException("Request code " + paramInt + " cannot be within the range reserved by the Facebook SDK."); 
    this.b = paramInt;
  }
  
  private void a(boolean paramBoolean) {
    setEnabled(paramBoolean);
    this.c = false;
  }
  
  private boolean i() {
    return (new bvv(e())).a(g());
  }
  
  private bvv j() {
    if (this.d != null)
      return this.d; 
    if (b() != null) {
      this.d = new bvv(b());
      return this.d;
    } 
    if (c() != null) {
      this.d = new bvv(c());
      return this.d;
    } 
    this.d = new bvv(e());
    return this.d;
  }
  
  protected int a() {
    return bnl.Share.toRequestCode();
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super.a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(h());
  }
  
  public void a(bhd parambhd, bhl<bvx> parambhl) {
    j().a(parambhd, parambhl);
  }
  
  public void a(bhd parambhd, bhl<bvx> parambhl, int paramInt) {
    a(paramInt);
    j().a(parambhd, parambhl, paramInt);
  }
  
  public int d() {
    return this.b;
  }
  
  protected int f() {
    return bjy.com_facebook_button_share;
  }
  
  public ShareContent g() {
    return this.a;
  }
  
  protected View.OnClickListener h() {
    return (View.OnClickListener)new cbw(this);
  }
  
  public void setEnabled(boolean paramBoolean) {
    super.setEnabled(paramBoolean);
    this.c = true;
  }
  
  public void setShareContent(ShareContent paramShareContent) {
    this.a = paramShareContent;
    if (!this.c)
      a(i()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\widget\DeviceShareButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */