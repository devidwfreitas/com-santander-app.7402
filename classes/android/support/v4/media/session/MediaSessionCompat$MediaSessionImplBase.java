package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;
import java.util.List;

class MediaSessionCompat$MediaSessionImplBase implements MediaSessionCompat$MediaSessionImpl {
  final AudioManager mAudioManager;
  
  volatile MediaSessionCompat$Callback mCallback;
  
  private final Context mContext;
  
  final RemoteCallbackList<IMediaControllerCallback> mControllerCallbacks = new RemoteCallbackList();
  
  boolean mDestroyed = false;
  
  Bundle mExtras;
  
  int mFlags;
  
  private MediaSessionCompat$MediaSessionImplBase$MessageHandler mHandler;
  
  private boolean mIsActive = false;
  
  private boolean mIsMbrRegistered = false;
  
  private boolean mIsRccRegistered = false;
  
  int mLocalStream;
  
  final Object mLock = new Object();
  
  private final ComponentName mMediaButtonReceiverComponentName;
  
  private final PendingIntent mMediaButtonReceiverIntent;
  
  MediaMetadataCompat mMetadata;
  
  final String mPackageName;
  
  List<MediaSessionCompat$QueueItem> mQueue;
  
  CharSequence mQueueTitle;
  
  int mRatingType;
  
  private final Object mRccObj;
  
  int mRepeatMode;
  
  PendingIntent mSessionActivity;
  
  boolean mShuffleModeEnabled;
  
  PlaybackStateCompat mState;
  
  private final MediaSessionCompat$MediaSessionImplBase$MediaSessionStub mStub;
  
  final String mTag;
  
  private final MediaSessionCompat$Token mToken;
  
  private VolumeProviderCompat.Callback mVolumeCallback = new MediaSessionCompat$MediaSessionImplBase$1(this);
  
  VolumeProviderCompat mVolumeProvider;
  
  int mVolumeType;
  
  public MediaSessionCompat$MediaSessionImplBase(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent) {
    if (paramComponentName == null)
      throw new IllegalArgumentException("MediaButtonReceiver component may not be null."); 
    this.mContext = paramContext;
    this.mPackageName = paramContext.getPackageName();
    this.mAudioManager = (AudioManager)paramContext.getSystemService("audio");
    this.mTag = paramString;
    this.mMediaButtonReceiverComponentName = paramComponentName;
    this.mMediaButtonReceiverIntent = paramPendingIntent;
    this.mStub = new MediaSessionCompat$MediaSessionImplBase$MediaSessionStub(this);
    this.mToken = new MediaSessionCompat$Token(this.mStub);
    this.mRatingType = 0;
    this.mVolumeType = 1;
    this.mLocalStream = 3;
    if (Build.VERSION.SDK_INT >= 14) {
      this.mRccObj = MediaSessionCompatApi14.createRemoteControlClient(paramPendingIntent);
      return;
    } 
    this.mRccObj = null;
  }
  
  private void sendEvent(String paramString, Bundle paramBundle) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onEvent(paramString, paramBundle);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private void sendExtras(Bundle paramBundle) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onExtrasChanged(paramBundle);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private void sendMetadata(MediaMetadataCompat paramMediaMetadataCompat) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onMetadataChanged(paramMediaMetadataCompat);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private void sendQueue(List<MediaSessionCompat$QueueItem> paramList) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onQueueChanged(paramList);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private void sendQueueTitle(CharSequence paramCharSequence) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onQueueTitleChanged(paramCharSequence);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private void sendRepeatMode(int paramInt) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onRepeatModeChanged(paramInt);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private void sendSessionDestroyed() {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onSessionDestroyed();
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      this.mControllerCallbacks.kill();
      return;
    } 
  }
  
  private void sendShuffleModeEnabled(boolean paramBoolean) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onShuffleModeChanged(paramBoolean);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private void sendState(PlaybackStateCompat paramPlaybackStateCompat) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onPlaybackStateChanged(paramPlaybackStateCompat);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  private boolean update() {
    if (this.mIsActive) {
      if (!this.mIsMbrRegistered && (this.mFlags & 0x1) != 0) {
        if (Build.VERSION.SDK_INT >= 18) {
          MediaSessionCompatApi18.registerMediaButtonEventReceiver(this.mContext, this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
        } else {
          ((AudioManager)this.mContext.getSystemService("audio")).registerMediaButtonEventReceiver(this.mMediaButtonReceiverComponentName);
        } 
        this.mIsMbrRegistered = true;
      } else if (this.mIsMbrRegistered && (this.mFlags & 0x1) == 0) {
        if (Build.VERSION.SDK_INT >= 18) {
          MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(this.mContext, this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
        } else {
          ((AudioManager)this.mContext.getSystemService("audio")).unregisterMediaButtonEventReceiver(this.mMediaButtonReceiverComponentName);
        } 
        this.mIsMbrRegistered = false;
      } 
      if (Build.VERSION.SDK_INT >= 14) {
        if (!this.mIsRccRegistered && (this.mFlags & 0x2) != 0) {
          MediaSessionCompatApi14.registerRemoteControlClient(this.mContext, this.mRccObj);
          this.mIsRccRegistered = true;
          return true;
        } 
        if (this.mIsRccRegistered && (this.mFlags & 0x2) == 0) {
          MediaSessionCompatApi14.setState(this.mRccObj, 0);
          MediaSessionCompatApi14.unregisterRemoteControlClient(this.mContext, this.mRccObj);
          this.mIsRccRegistered = false;
          return false;
        } 
      } 
    } else {
      if (this.mIsMbrRegistered) {
        if (Build.VERSION.SDK_INT >= 18) {
          MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(this.mContext, this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
        } else {
          ((AudioManager)this.mContext.getSystemService("audio")).unregisterMediaButtonEventReceiver(this.mMediaButtonReceiverComponentName);
        } 
        this.mIsMbrRegistered = false;
      } 
      if (this.mIsRccRegistered) {
        MediaSessionCompatApi14.setState(this.mRccObj, 0);
        MediaSessionCompatApi14.unregisterRemoteControlClient(this.mContext, this.mRccObj);
        this.mIsRccRegistered = false;
      } 
    } 
    return false;
  }
  
  void adjustVolume(int paramInt1, int paramInt2) {
    if (this.mVolumeType == 2) {
      if (this.mVolumeProvider != null)
        this.mVolumeProvider.onAdjustVolume(paramInt1); 
      return;
    } 
    this.mAudioManager.adjustStreamVolume(this.mLocalStream, paramInt1, paramInt2);
  }
  
  public String getCallingPackage() {
    return null;
  }
  
  public Object getMediaSession() {
    return null;
  }
  
  public Object getRemoteControlClient() {
    return this.mRccObj;
  }
  
  public MediaSessionCompat$Token getSessionToken() {
    return this.mToken;
  }
  
  PlaybackStateCompat getStateWithUpdatedPosition() {
    // Byte code:
    //   0: ldc2_w -1
    //   3: lstore_3
    //   4: aload_0
    //   5: getfield mLock : Ljava/lang/Object;
    //   8: astore #7
    //   10: aload #7
    //   12: monitorenter
    //   13: aload_0
    //   14: getfield mState : Landroid/support/v4/media/session/PlaybackStateCompat;
    //   17: astore #9
    //   19: lload_3
    //   20: lstore_1
    //   21: aload_0
    //   22: getfield mMetadata : Landroid/support/v4/media/MediaMetadataCompat;
    //   25: ifnull -> 54
    //   28: lload_3
    //   29: lstore_1
    //   30: aload_0
    //   31: getfield mMetadata : Landroid/support/v4/media/MediaMetadataCompat;
    //   34: ldc_w 'android.media.metadata.DURATION'
    //   37: invokevirtual containsKey : (Ljava/lang/String;)Z
    //   40: ifeq -> 54
    //   43: aload_0
    //   44: getfield mMetadata : Landroid/support/v4/media/MediaMetadataCompat;
    //   47: ldc_w 'android.media.metadata.DURATION'
    //   50: invokevirtual getLong : (Ljava/lang/String;)J
    //   53: lstore_1
    //   54: aload #7
    //   56: monitorexit
    //   57: aload #9
    //   59: ifnull -> 214
    //   62: aload #9
    //   64: invokevirtual getState : ()I
    //   67: iconst_3
    //   68: if_icmpeq -> 89
    //   71: aload #9
    //   73: invokevirtual getState : ()I
    //   76: iconst_4
    //   77: if_icmpeq -> 89
    //   80: aload #9
    //   82: invokevirtual getState : ()I
    //   85: iconst_5
    //   86: if_icmpne -> 214
    //   89: aload #9
    //   91: invokevirtual getLastPositionUpdateTime : ()J
    //   94: lstore_3
    //   95: invokestatic elapsedRealtime : ()J
    //   98: lstore #5
    //   100: lload_3
    //   101: lconst_0
    //   102: lcmp
    //   103: ifle -> 214
    //   106: aload #9
    //   108: invokevirtual getPlaybackSpeed : ()F
    //   111: lload #5
    //   113: lload_3
    //   114: lsub
    //   115: l2f
    //   116: fmul
    //   117: f2l
    //   118: aload #9
    //   120: invokevirtual getPosition : ()J
    //   123: ladd
    //   124: lstore_3
    //   125: lload_1
    //   126: lconst_0
    //   127: lcmp
    //   128: iflt -> 198
    //   131: lload_3
    //   132: lload_1
    //   133: lcmp
    //   134: ifle -> 198
    //   137: new android/support/v4/media/session/PlaybackStateCompat$Builder
    //   140: dup
    //   141: aload #9
    //   143: invokespecial <init> : (Landroid/support/v4/media/session/PlaybackStateCompat;)V
    //   146: astore #7
    //   148: aload #7
    //   150: aload #9
    //   152: invokevirtual getState : ()I
    //   155: lload_1
    //   156: aload #9
    //   158: invokevirtual getPlaybackSpeed : ()F
    //   161: lload #5
    //   163: invokevirtual setState : (IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    //   166: pop
    //   167: aload #7
    //   169: invokevirtual build : ()Landroid/support/v4/media/session/PlaybackStateCompat;
    //   172: astore #7
    //   174: aload #7
    //   176: astore #8
    //   178: aload #7
    //   180: ifnonnull -> 187
    //   183: aload #9
    //   185: astore #8
    //   187: aload #8
    //   189: areturn
    //   190: astore #8
    //   192: aload #7
    //   194: monitorexit
    //   195: aload #8
    //   197: athrow
    //   198: lload_3
    //   199: lconst_0
    //   200: lcmp
    //   201: ifge -> 209
    //   204: lconst_0
    //   205: lstore_1
    //   206: goto -> 137
    //   209: lload_3
    //   210: lstore_1
    //   211: goto -> 137
    //   214: aconst_null
    //   215: astore #7
    //   217: goto -> 174
    // Exception table:
    //   from	to	target	type
    //   13	19	190	finally
    //   21	28	190	finally
    //   30	54	190	finally
    //   54	57	190	finally
    //   192	195	190	finally
  }
  
  public boolean isActive() {
    return this.mIsActive;
  }
  
  void postToHandler(int paramInt) {
    postToHandler(paramInt, (Object)null);
  }
  
  void postToHandler(int paramInt1, int paramInt2) {
    postToHandler(paramInt1, (Object)null, paramInt2);
  }
  
  void postToHandler(int paramInt, Object paramObject) {
    postToHandler(paramInt, paramObject, (Bundle)null);
  }
  
  void postToHandler(int paramInt1, Object paramObject, int paramInt2) {
    synchronized (this.mLock) {
      if (this.mHandler != null)
        this.mHandler.post(paramInt1, paramObject, paramInt2); 
      return;
    } 
  }
  
  void postToHandler(int paramInt, Object paramObject, Bundle paramBundle) {
    synchronized (this.mLock) {
      if (this.mHandler != null)
        this.mHandler.post(paramInt, paramObject, paramBundle); 
      return;
    } 
  }
  
  public void release() {
    this.mIsActive = false;
    this.mDestroyed = true;
    update();
    sendSessionDestroyed();
  }
  
  public void sendSessionEvent(String paramString, Bundle paramBundle) {
    sendEvent(paramString, paramBundle);
  }
  
  void sendVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo) {
    int i = this.mControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onVolumeInfoChanged(paramParcelableVolumeInfo);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mControllerCallbacks.finishBroadcast();
      return;
    } 
  }
  
  public void setActive(boolean paramBoolean) {
    if (paramBoolean != this.mIsActive) {
      this.mIsActive = paramBoolean;
      if (update()) {
        setMetadata(this.mMetadata);
        setPlaybackState(this.mState);
        return;
      } 
    } 
  }
  
  public void setCallback(MediaSessionCompat$Callback paramMediaSessionCompat$Callback, Handler paramHandler) {
    this.mCallback = paramMediaSessionCompat$Callback;
    if (paramMediaSessionCompat$Callback == null) {
      if (Build.VERSION.SDK_INT >= 18)
        MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(this.mRccObj, null); 
      if (Build.VERSION.SDK_INT >= 19)
        MediaSessionCompatApi19.setOnMetadataUpdateListener(this.mRccObj, null); 
      return;
    } 
    null = paramHandler;
    if (paramHandler == null)
      null = new Handler(); 
    synchronized (this.mLock) {
      this.mHandler = new MediaSessionCompat$MediaSessionImplBase$MessageHandler(this, null.getLooper());
      MediaSessionCompat$MediaSessionImplBase$2 mediaSessionCompat$MediaSessionImplBase$2 = new MediaSessionCompat$MediaSessionImplBase$2(this);
      if (Build.VERSION.SDK_INT >= 18) {
        null = MediaSessionCompatApi18.createPlaybackPositionUpdateListener(mediaSessionCompat$MediaSessionImplBase$2);
        MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(this.mRccObj, null);
      } 
      if (Build.VERSION.SDK_INT >= 19) {
        Object object = MediaSessionCompatApi19.createMetadataUpdateListener(mediaSessionCompat$MediaSessionImplBase$2);
        MediaSessionCompatApi19.setOnMetadataUpdateListener(this.mRccObj, object);
        return;
      } 
      return;
    } 
  }
  
  public void setExtras(Bundle paramBundle) {
    this.mExtras = paramBundle;
    sendExtras(paramBundle);
  }
  
  public void setFlags(int paramInt) {
    synchronized (this.mLock) {
      this.mFlags = paramInt;
      update();
      return;
    } 
  }
  
  public void setMediaButtonReceiver(PendingIntent paramPendingIntent) {}
  
  public void setMetadata(MediaMetadataCompat paramMediaMetadataCompat) {
    Object object2 = null;
    Object object1 = null;
    null = paramMediaMetadataCompat;
    if (paramMediaMetadataCompat != null)
      null = (new MediaMetadataCompat.Builder(paramMediaMetadataCompat, MediaSessionCompat.sMaxBitmapSize)).build(); 
    synchronized (this.mLock) {
      this.mMetadata = null;
      sendMetadata(null);
      if (this.mIsActive) {
        if (Build.VERSION.SDK_INT >= 19) {
          long l;
          object2 = this.mRccObj;
          if (null == null) {
            null = object1;
          } else {
            null = null.getBundle();
          } 
          if (this.mState == null) {
            l = 0L;
          } else {
            l = this.mState.getActions();
          } 
          MediaSessionCompatApi19.setMetadata(object2, (Bundle)null, l);
          return;
        } 
        if (Build.VERSION.SDK_INT >= 14) {
          object1 = this.mRccObj;
          if (null == null) {
            null = object2;
          } else {
            null = null.getBundle();
          } 
          MediaSessionCompatApi14.setMetadata(object1, (Bundle)null);
          return;
        } 
      } 
      return;
    } 
  }
  
  public void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat) {
    synchronized (this.mLock) {
      this.mState = paramPlaybackStateCompat;
      sendState(paramPlaybackStateCompat);
      if (this.mIsActive) {
        if (paramPlaybackStateCompat == null) {
          if (Build.VERSION.SDK_INT >= 14) {
            MediaSessionCompatApi14.setState(this.mRccObj, 0);
            MediaSessionCompatApi14.setTransportControlFlags(this.mRccObj, 0L);
            return;
          } 
          return;
        } 
        if (Build.VERSION.SDK_INT >= 18) {
          MediaSessionCompatApi18.setState(this.mRccObj, paramPlaybackStateCompat.getState(), paramPlaybackStateCompat.getPosition(), paramPlaybackStateCompat.getPlaybackSpeed(), paramPlaybackStateCompat.getLastPositionUpdateTime());
        } else if (Build.VERSION.SDK_INT >= 14) {
          MediaSessionCompatApi14.setState(this.mRccObj, paramPlaybackStateCompat.getState());
        } 
        if (Build.VERSION.SDK_INT >= 19) {
          MediaSessionCompatApi19.setTransportControlFlags(this.mRccObj, paramPlaybackStateCompat.getActions());
          return;
        } 
        if (Build.VERSION.SDK_INT >= 18) {
          MediaSessionCompatApi18.setTransportControlFlags(this.mRccObj, paramPlaybackStateCompat.getActions());
          return;
        } 
        if (Build.VERSION.SDK_INT >= 14) {
          MediaSessionCompatApi14.setTransportControlFlags(this.mRccObj, paramPlaybackStateCompat.getActions());
          return;
        } 
      } 
      return;
    } 
  }
  
  public void setPlaybackToLocal(int paramInt) {
    if (this.mVolumeProvider != null)
      this.mVolumeProvider.setCallback(null); 
    this.mVolumeType = 1;
    sendVolumeInfoChanged(new ParcelableVolumeInfo(this.mVolumeType, this.mLocalStream, 2, this.mAudioManager.getStreamMaxVolume(this.mLocalStream), this.mAudioManager.getStreamVolume(this.mLocalStream)));
  }
  
  public void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat) {
    if (paramVolumeProviderCompat == null)
      throw new IllegalArgumentException("volumeProvider may not be null"); 
    if (this.mVolumeProvider != null)
      this.mVolumeProvider.setCallback(null); 
    this.mVolumeType = 2;
    this.mVolumeProvider = paramVolumeProviderCompat;
    sendVolumeInfoChanged(new ParcelableVolumeInfo(this.mVolumeType, this.mLocalStream, this.mVolumeProvider.getVolumeControl(), this.mVolumeProvider.getMaxVolume(), this.mVolumeProvider.getCurrentVolume()));
    paramVolumeProviderCompat.setCallback(this.mVolumeCallback);
  }
  
  public void setQueue(List<MediaSessionCompat$QueueItem> paramList) {
    this.mQueue = paramList;
    sendQueue(paramList);
  }
  
  public void setQueueTitle(CharSequence paramCharSequence) {
    this.mQueueTitle = paramCharSequence;
    sendQueueTitle(paramCharSequence);
  }
  
  public void setRatingType(int paramInt) {
    this.mRatingType = paramInt;
  }
  
  public void setRepeatMode(int paramInt) {
    if (this.mRepeatMode != paramInt) {
      this.mRepeatMode = paramInt;
      sendRepeatMode(paramInt);
    } 
  }
  
  public void setSessionActivity(PendingIntent paramPendingIntent) {
    synchronized (this.mLock) {
      this.mSessionActivity = paramPendingIntent;
      return;
    } 
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    if (this.mShuffleModeEnabled != paramBoolean) {
      this.mShuffleModeEnabled = paramBoolean;
      sendShuffleModeEnabled(paramBoolean);
    } 
  }
  
  void setVolumeTo(int paramInt1, int paramInt2) {
    if (this.mVolumeType == 2) {
      if (this.mVolumeProvider != null)
        this.mVolumeProvider.onSetVolumeTo(paramInt1); 
      return;
    } 
    this.mAudioManager.setStreamVolume(this.mLocalStream, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */