package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import bjy;
import bnl;
import bny;
import bwo;
import ccq;
import com.facebook.share.model.ShareContent;

public final class SendButton extends ShareButtonBase {
  public SendButton(Context paramContext) {
    super(paramContext, (AttributeSet)null, 0, "fb_send_button_create", "fb_send_button_did_tap");
  }
  
  public SendButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet, 0, "fb_send_button_create", "fb_send_button_did_tap");
  }
  
  public SendButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt, "fb_send_button_create", "fb_send_button_did_tap");
  }
  
  protected int a() {
    return bnl.Message.toRequestCode();
  }
  
  protected int f() {
    return bjy.com_facebook_button_send;
  }
  
  protected bny<ShareContent, bwo> g() {
    return (bny<ShareContent, bwo>)((b() != null) ? new ccq(b(), d()) : ((c() != null) ? new ccq(c(), d()) : new ccq(e(), d())));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\widget\SendButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */