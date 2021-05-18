package android.support.v4.media;

import android.view.KeyEvent;

class TransportMediator$2 implements KeyEvent.Callback {
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    return TransportMediator.isMediaKey(paramInt) ? TransportMediator.this.mCallbacks.onMediaButtonDown(paramInt, paramKeyEvent) : false;
  }
  
  public boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent) {
    return false;
  }
  
  public boolean onKeyMultiple(int paramInt1, int paramInt2, KeyEvent paramKeyEvent) {
    return false;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
    return TransportMediator.isMediaKey(paramInt) ? TransportMediator.this.mCallbacks.onMediaButtonUp(paramInt, paramKeyEvent) : false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\TransportMediator$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */