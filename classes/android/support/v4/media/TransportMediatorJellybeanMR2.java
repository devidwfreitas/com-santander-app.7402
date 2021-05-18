package android.support.v4.media;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewTreeObserver;

@TargetApi(18)
@RequiresApi(18)
class TransportMediatorJellybeanMR2 {
  AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListener = new TransportMediatorJellybeanMR2$4(this);
  
  boolean mAudioFocused;
  
  final AudioManager mAudioManager;
  
  final Context mContext;
  
  boolean mFocused;
  
  final RemoteControlClient.OnGetPlaybackPositionListener mGetPlaybackPositionListener = new TransportMediatorJellybeanMR2$5(this);
  
  final Intent mIntent;
  
  final BroadcastReceiver mMediaButtonReceiver = new TransportMediatorJellybeanMR2$3(this);
  
  PendingIntent mPendingIntent;
  
  int mPlayState = 0;
  
  final RemoteControlClient.OnPlaybackPositionUpdateListener mPlaybackPositionUpdateListener = new TransportMediatorJellybeanMR2$6(this);
  
  final String mReceiverAction;
  
  final IntentFilter mReceiverFilter;
  
  RemoteControlClient mRemoteControl;
  
  final View mTargetView;
  
  final TransportMediatorCallback mTransportCallback;
  
  final ViewTreeObserver.OnWindowAttachListener mWindowAttachListener = new TransportMediatorJellybeanMR2$1(this);
  
  final ViewTreeObserver.OnWindowFocusChangeListener mWindowFocusListener = new TransportMediatorJellybeanMR2$2(this);
  
  public TransportMediatorJellybeanMR2(Context paramContext, AudioManager paramAudioManager, View paramView, TransportMediatorCallback paramTransportMediatorCallback) {
    this.mContext = paramContext;
    this.mAudioManager = paramAudioManager;
    this.mTargetView = paramView;
    this.mTransportCallback = paramTransportMediatorCallback;
    this.mReceiverAction = paramContext.getPackageName() + ":transport:" + System.identityHashCode(this);
    this.mIntent = new Intent(this.mReceiverAction);
    this.mIntent.setPackage(paramContext.getPackageName());
    this.mReceiverFilter = new IntentFilter();
    this.mReceiverFilter.addAction(this.mReceiverAction);
    this.mTargetView.getViewTreeObserver().addOnWindowAttachListener(this.mWindowAttachListener);
    this.mTargetView.getViewTreeObserver().addOnWindowFocusChangeListener(this.mWindowFocusListener);
  }
  
  public void destroy() {
    windowDetached();
    this.mTargetView.getViewTreeObserver().removeOnWindowAttachListener(this.mWindowAttachListener);
    this.mTargetView.getViewTreeObserver().removeOnWindowFocusChangeListener(this.mWindowFocusListener);
  }
  
  void dropAudioFocus() {
    if (this.mAudioFocused) {
      this.mAudioFocused = false;
      this.mAudioManager.abandonAudioFocus(this.mAudioFocusChangeListener);
    } 
  }
  
  void gainFocus() {
    if (!this.mFocused) {
      this.mFocused = true;
      this.mAudioManager.registerMediaButtonEventReceiver(this.mPendingIntent);
      this.mAudioManager.registerRemoteControlClient(this.mRemoteControl);
      if (this.mPlayState == 3)
        takeAudioFocus(); 
    } 
  }
  
  public Object getRemoteControlClient() {
    return this.mRemoteControl;
  }
  
  void loseFocus() {
    dropAudioFocus();
    if (this.mFocused) {
      this.mFocused = false;
      this.mAudioManager.unregisterRemoteControlClient(this.mRemoteControl);
      this.mAudioManager.unregisterMediaButtonEventReceiver(this.mPendingIntent);
    } 
  }
  
  public void pausePlaying() {
    if (this.mPlayState == 3) {
      this.mPlayState = 2;
      this.mRemoteControl.setPlaybackState(2);
    } 
    dropAudioFocus();
  }
  
  public void refreshState(boolean paramBoolean, long paramLong, int paramInt) {
    if (this.mRemoteControl != null) {
      float f;
      boolean bool;
      RemoteControlClient remoteControlClient = this.mRemoteControl;
      if (paramBoolean) {
        bool = true;
      } else {
        bool = true;
      } 
      if (paramBoolean) {
        f = 1.0F;
      } else {
        f = 0.0F;
      } 
      remoteControlClient.setPlaybackState(bool, paramLong, f);
      this.mRemoteControl.setTransportControlFlags(paramInt);
    } 
  }
  
  public void startPlaying() {
    if (this.mPlayState != 3) {
      this.mPlayState = 3;
      this.mRemoteControl.setPlaybackState(3);
    } 
    if (this.mFocused)
      takeAudioFocus(); 
  }
  
  public void stopPlaying() {
    if (this.mPlayState != 1) {
      this.mPlayState = 1;
      this.mRemoteControl.setPlaybackState(1);
    } 
    dropAudioFocus();
  }
  
  void takeAudioFocus() {
    if (!this.mAudioFocused) {
      this.mAudioFocused = true;
      this.mAudioManager.requestAudioFocus(this.mAudioFocusChangeListener, 3, 1);
    } 
  }
  
  void windowAttached() {
    this.mContext.registerReceiver(this.mMediaButtonReceiver, this.mReceiverFilter);
    this.mPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, this.mIntent, 268435456);
    this.mRemoteControl = new RemoteControlClient(this.mPendingIntent);
    this.mRemoteControl.setOnGetPlaybackPositionListener(this.mGetPlaybackPositionListener);
    this.mRemoteControl.setPlaybackPositionUpdateListener(this.mPlaybackPositionUpdateListener);
  }
  
  void windowDetached() {
    loseFocus();
    if (this.mPendingIntent != null) {
      this.mContext.unregisterReceiver(this.mMediaButtonReceiver);
      this.mPendingIntent.cancel();
      this.mPendingIntent = null;
      this.mRemoteControl = null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\TransportMediatorJellybeanMR2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */