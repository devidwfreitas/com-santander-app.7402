package android.support.v4.media;

import android.view.ViewTreeObserver;

class TransportMediatorJellybeanMR2$2 implements ViewTreeObserver.OnWindowFocusChangeListener {
  public void onWindowFocusChanged(boolean paramBoolean) {
    if (paramBoolean) {
      TransportMediatorJellybeanMR2.this.gainFocus();
      return;
    } 
    TransportMediatorJellybeanMR2.this.loseFocus();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\TransportMediatorJellybeanMR2$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */