package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import bjy;
import bnl;
import bny;
import bwo;
import ccv;
import com.facebook.share.model.ShareContent;

public final class ShareButton extends ShareButtonBase {
  public ShareButton(Context paramContext) {
    super(paramContext, (AttributeSet)null, 0, "fb_share_button_create", "fb_share_button_did_tap");
  }
  
  public ShareButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet, 0, "fb_share_button_create", "fb_share_button_did_tap");
  }
  
  public ShareButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt, "fb_share_button_create", "fb_share_button_did_tap");
  }
  
  protected int a() {
    return bnl.Share.toRequestCode();
  }
  
  protected int f() {
    return bjy.com_facebook_button_share;
  }
  
  protected bny<ShareContent, bwo> g() {
    return (bny<ShareContent, bwo>)((b() != null) ? new ccv(b(), d()) : ((c() != null) ? new ccv(c(), d()) : new ccv(e(), d())));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\widget\ShareButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */