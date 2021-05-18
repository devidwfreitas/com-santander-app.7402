package com.facebook.share.internal;

import android.content.Context;
import android.util.AttributeSet;
import bjt;
import bjx;
import bjy;
import com.facebook.FacebookButtonBase;

public class LikeButton extends FacebookButtonBase {
  public LikeButton(Context paramContext, boolean paramBoolean) {
    super(paramContext, null, 0, 0, "fb_like_button_create", "fb_like_button_did_tap");
    setSelected(paramBoolean);
  }
  
  private void g() {
    if (isSelected()) {
      setCompoundDrawablesWithIntrinsicBounds(bjt.com_facebook_button_like_icon_selected, 0, 0, 0);
      setText(getResources().getString(bjx.com_facebook_like_button_liked));
      return;
    } 
    setCompoundDrawablesWithIntrinsicBounds(bjt.com_facebook_button_icon, 0, 0, 0);
    setText(getResources().getString(bjx.com_facebook_like_button_not_liked));
  }
  
  protected int a() {
    return 0;
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super.a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    g();
  }
  
  protected int f() {
    return bjy.com_facebook_button_like;
  }
  
  public void setSelected(boolean paramBoolean) {
    super.setSelected(paramBoolean);
    g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\internal\LikeButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */