package android.support.v4.media;

import android.media.AudioManager;

class TransportMediatorJellybeanMR2$4 implements AudioManager.OnAudioFocusChangeListener {
  public void onAudioFocusChange(int paramInt) {
    TransportMediatorJellybeanMR2.this.mTransportCallback.handleAudioFocusChange(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\TransportMediatorJellybeanMR2$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */