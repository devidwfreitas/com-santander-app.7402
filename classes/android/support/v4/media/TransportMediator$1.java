package android.support.v4.media;

import android.view.KeyEvent;

class TransportMediator$1 implements TransportMediatorCallback {
  public long getPlaybackPosition() {
    return TransportMediator.this.mCallbacks.onGetCurrentPosition();
  }
  
  public void handleAudioFocusChange(int paramInt) {
    TransportMediator.this.mCallbacks.onAudioFocusChange(paramInt);
  }
  
  public void handleKey(KeyEvent paramKeyEvent) {
    paramKeyEvent.dispatch(TransportMediator.this.mKeyEventCallback);
  }
  
  public void playbackPositionUpdate(long paramLong) {
    TransportMediator.this.mCallbacks.onSeekTo(paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\TransportMediator$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */