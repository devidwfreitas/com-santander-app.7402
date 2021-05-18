package android.support.v7.app;

import android.support.v7.widget.ContentFrameLayout;

class AppCompatDelegateImplV9$4 implements ContentFrameLayout.OnAttachListener {
  public void onAttachedFromWindow() {}
  
  public void onDetachedFromWindow() {
    AppCompatDelegateImplV9.this.dismissPopups();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */