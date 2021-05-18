package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import bhd;
import bhl;
import bhv;
import bny;
import bwo;
import bze;
import ccu;
import com.facebook.FacebookButtonBase;
import com.facebook.share.model.ShareContent;

public abstract class ShareButtonBase extends FacebookButtonBase {
  private ShareContent a;
  
  private int b = 0;
  
  private boolean c = false;
  
  protected ShareButtonBase(Context paramContext, AttributeSet paramAttributeSet, int paramInt, String paramString1, String paramString2) {
    super(paramContext, paramAttributeSet, paramInt, 0, paramString1, paramString2);
    if (isInEditMode()) {
      paramInt = 0;
    } else {
      paramInt = a();
    } 
    this.b = paramInt;
    a(false);
  }
  
  private void a(boolean paramBoolean) {
    setEnabled(paramBoolean);
    this.c = false;
  }
  
  protected void a(int paramInt) {
    if (bhv.b(paramInt))
      throw new IllegalArgumentException("Request code " + paramInt + " cannot be within the range reserved by the Facebook SDK."); 
    this.b = paramInt;
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super.a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(j());
  }
  
  public void a(bhd parambhd, bhl<bwo> parambhl) {
    bze.a(d(), parambhd, parambhl);
  }
  
  public void a(bhd parambhd, bhl<bwo> parambhl, int paramInt) {
    a(paramInt);
    a(parambhd, parambhl);
  }
  
  public int d() {
    return this.b;
  }
  
  public abstract bny<ShareContent, bwo> g();
  
  public ShareContent h() {
    return this.a;
  }
  
  protected boolean i() {
    return g().a(h());
  }
  
  protected View.OnClickListener j() {
    return (View.OnClickListener)new ccu(this);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\widget\ShareButtonBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */