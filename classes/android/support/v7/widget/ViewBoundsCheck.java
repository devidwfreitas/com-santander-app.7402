package android.support.v7.widget;

import android.view.View;

class ViewBoundsCheck {
  static final int CVE_PVE_POS = 12;
  
  static final int CVE_PVS_POS = 8;
  
  static final int CVS_PVE_POS = 4;
  
  static final int CVS_PVS_POS = 0;
  
  static final int EQ = 2;
  
  static final int FLAG_CVE_EQ_PVE = 8192;
  
  static final int FLAG_CVE_EQ_PVS = 512;
  
  static final int FLAG_CVE_GT_PVE = 4096;
  
  static final int FLAG_CVE_GT_PVS = 256;
  
  static final int FLAG_CVE_LT_PVE = 16384;
  
  static final int FLAG_CVE_LT_PVS = 1024;
  
  static final int FLAG_CVS_EQ_PVE = 32;
  
  static final int FLAG_CVS_EQ_PVS = 2;
  
  static final int FLAG_CVS_GT_PVE = 16;
  
  static final int FLAG_CVS_GT_PVS = 1;
  
  static final int FLAG_CVS_LT_PVE = 64;
  
  static final int FLAG_CVS_LT_PVS = 4;
  
  static final int GT = 1;
  
  static final int LT = 4;
  
  static final int MASK = 7;
  
  ViewBoundsCheck$BoundFlags mBoundFlags;
  
  final ViewBoundsCheck$Callback mCallback;
  
  ViewBoundsCheck(ViewBoundsCheck$Callback paramViewBoundsCheck$Callback) {
    this.mCallback = paramViewBoundsCheck$Callback;
    this.mBoundFlags = new ViewBoundsCheck$BoundFlags();
  }
  
  View findOneViewWithinBoundFlags(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    byte b;
    int i = this.mCallback.getParentStart();
    int j = this.mCallback.getParentEnd();
    if (paramInt2 > paramInt1) {
      b = 1;
    } else {
      b = -1;
    } 
    View view = null;
    while (paramInt1 != paramInt2) {
      View view1 = this.mCallback.getChildAt(paramInt1);
      int k = this.mCallback.getChildStart(view1);
      int m = this.mCallback.getChildEnd(view1);
      this.mBoundFlags.setBounds(i, j, k, m);
      if (paramInt3 != 0) {
        this.mBoundFlags.resetFlags();
        this.mBoundFlags.addFlags(paramInt3);
        if (this.mBoundFlags.boundsMatch())
          return view1; 
      } 
      if (paramInt4 != 0) {
        this.mBoundFlags.resetFlags();
        this.mBoundFlags.addFlags(paramInt4);
        if (this.mBoundFlags.boundsMatch())
          view = view1; 
      } 
      paramInt1 += b;
    } 
    return view;
  }
  
  boolean isViewWithinBoundFlags(View paramView, int paramInt) {
    this.mBoundFlags.setBounds(this.mCallback.getParentStart(), this.mCallback.getParentEnd(), this.mCallback.getChildStart(paramView), this.mCallback.getChildEnd(paramView));
    if (paramInt != 0) {
      this.mBoundFlags.resetFlags();
      this.mBoundFlags.addFlags(paramInt);
      return this.mBoundFlags.boundsMatch();
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ViewBoundsCheck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */