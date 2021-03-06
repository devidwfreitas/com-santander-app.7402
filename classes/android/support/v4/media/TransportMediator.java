package android.support.v4.media;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import java.util.ArrayList;

@Deprecated
public class TransportMediator extends TransportController {
  @Deprecated
  public static final int FLAG_KEY_MEDIA_FAST_FORWARD = 64;
  
  @Deprecated
  public static final int FLAG_KEY_MEDIA_NEXT = 128;
  
  @Deprecated
  public static final int FLAG_KEY_MEDIA_PAUSE = 16;
  
  @Deprecated
  public static final int FLAG_KEY_MEDIA_PLAY = 4;
  
  @Deprecated
  public static final int FLAG_KEY_MEDIA_PLAY_PAUSE = 8;
  
  @Deprecated
  public static final int FLAG_KEY_MEDIA_PREVIOUS = 1;
  
  @Deprecated
  public static final int FLAG_KEY_MEDIA_REWIND = 2;
  
  @Deprecated
  public static final int FLAG_KEY_MEDIA_STOP = 32;
  
  @Deprecated
  public static final int KEYCODE_MEDIA_PAUSE = 127;
  
  @Deprecated
  public static final int KEYCODE_MEDIA_PLAY = 126;
  
  @Deprecated
  public static final int KEYCODE_MEDIA_RECORD = 130;
  
  final AudioManager mAudioManager;
  
  final TransportPerformer mCallbacks;
  
  final Context mContext;
  
  final TransportMediatorJellybeanMR2 mController;
  
  final Object mDispatcherState;
  
  final KeyEvent.Callback mKeyEventCallback;
  
  final ArrayList<TransportStateListener> mListeners;
  
  final TransportMediatorCallback mTransportKeyCallback;
  
  final View mView;
  
  @Deprecated
  public TransportMediator(Activity paramActivity, TransportPerformer paramTransportPerformer) {
    this(paramActivity, null, paramTransportPerformer);
  }
  
  private TransportMediator(Activity paramActivity, View paramView, TransportPerformer paramTransportPerformer) {
    Context context;
    this.mListeners = new ArrayList<TransportStateListener>();
    this.mTransportKeyCallback = new TransportMediator$1(this);
    this.mKeyEventCallback = new TransportMediator$2(this);
    if (paramActivity != null) {
      Activity activity = paramActivity;
    } else {
      context = paramView.getContext();
    } 
    this.mContext = context;
    this.mCallbacks = paramTransportPerformer;
    this.mAudioManager = (AudioManager)this.mContext.getSystemService("audio");
    if (paramActivity != null)
      paramView = paramActivity.getWindow().getDecorView(); 
    this.mView = paramView;
    this.mDispatcherState = this.mView.getKeyDispatcherState();
    if (Build.VERSION.SDK_INT >= 18) {
      this.mController = new TransportMediatorJellybeanMR2(this.mContext, this.mAudioManager, this.mView, this.mTransportKeyCallback);
      return;
    } 
    this.mController = null;
  }
  
  @Deprecated
  public TransportMediator(View paramView, TransportPerformer paramTransportPerformer) {
    this(null, paramView, paramTransportPerformer);
  }
  
  private TransportStateListener[] getListeners() {
    if (this.mListeners.size() <= 0)
      return null; 
    TransportStateListener[] arrayOfTransportStateListener = new TransportStateListener[this.mListeners.size()];
    this.mListeners.toArray(arrayOfTransportStateListener);
    return arrayOfTransportStateListener;
  }
  
  static boolean isMediaKey(int paramInt) {
    switch (paramInt) {
      default:
        return false;
      case 79:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 126:
      case 127:
      case 130:
        break;
    } 
    return true;
  }
  
  private void pushControllerState() {
    if (this.mController != null)
      this.mController.refreshState(this.mCallbacks.onIsPlaying(), this.mCallbacks.onGetCurrentPosition(), this.mCallbacks.onGetTransportControlFlags()); 
  }
  
  private void reportPlayingChanged() {
    TransportStateListener[] arrayOfTransportStateListener = getListeners();
    if (arrayOfTransportStateListener != null) {
      int j = arrayOfTransportStateListener.length;
      for (int i = 0; i < j; i++)
        arrayOfTransportStateListener[i].onPlayingChanged(this); 
    } 
  }
  
  private void reportTransportControlsChanged() {
    TransportStateListener[] arrayOfTransportStateListener = getListeners();
    if (arrayOfTransportStateListener != null) {
      int j = arrayOfTransportStateListener.length;
      for (int i = 0; i < j; i++)
        arrayOfTransportStateListener[i].onTransportControlsChanged(this); 
    } 
  }
  
  @Deprecated
  public void destroy() {
    this.mController.destroy();
  }
  
  @Deprecated
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent) {
    return paramKeyEvent.dispatch(this.mKeyEventCallback, (KeyEvent.DispatcherState)this.mDispatcherState, this);
  }
  
  @Deprecated
  public int getBufferPercentage() {
    return this.mCallbacks.onGetBufferPercentage();
  }
  
  @Deprecated
  public long getCurrentPosition() {
    return this.mCallbacks.onGetCurrentPosition();
  }
  
  @Deprecated
  public long getDuration() {
    return this.mCallbacks.onGetDuration();
  }
  
  @Deprecated
  public Object getRemoteControlClient() {
    return (this.mController != null) ? this.mController.getRemoteControlClient() : null;
  }
  
  @Deprecated
  public int getTransportControlFlags() {
    return this.mCallbacks.onGetTransportControlFlags();
  }
  
  @Deprecated
  public boolean isPlaying() {
    return this.mCallbacks.onIsPlaying();
  }
  
  @Deprecated
  public void pausePlaying() {
    if (this.mController != null)
      this.mController.pausePlaying(); 
    this.mCallbacks.onPause();
    pushControllerState();
    reportPlayingChanged();
  }
  
  @Deprecated
  public void refreshState() {
    pushControllerState();
    reportPlayingChanged();
    reportTransportControlsChanged();
  }
  
  @Deprecated
  public void registerStateListener(TransportStateListener paramTransportStateListener) {
    this.mListeners.add(paramTransportStateListener);
  }
  
  @Deprecated
  public void seekTo(long paramLong) {
    this.mCallbacks.onSeekTo(paramLong);
  }
  
  @Deprecated
  public void startPlaying() {
    if (this.mController != null)
      this.mController.startPlaying(); 
    this.mCallbacks.onStart();
    pushControllerState();
    reportPlayingChanged();
  }
  
  @Deprecated
  public void stopPlaying() {
    if (this.mController != null)
      this.mController.stopPlaying(); 
    this.mCallbacks.onStop();
    pushControllerState();
    reportPlayingChanged();
  }
  
  @Deprecated
  public void unregisterStateListener(TransportStateListener paramTransportStateListener) {
    this.mListeners.remove(paramTransportStateListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\TransportMediator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */