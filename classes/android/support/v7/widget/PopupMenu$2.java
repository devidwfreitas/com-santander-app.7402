package android.support.v7.widget;

import android.widget.PopupWindow;

class PopupMenu$2 implements PopupWindow.OnDismissListener {
  public void onDismiss() {
    if (PopupMenu.this.mOnDismissListener != null)
      PopupMenu.this.mOnDismissListener.onDismiss(PopupMenu.this); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\PopupMenu$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */