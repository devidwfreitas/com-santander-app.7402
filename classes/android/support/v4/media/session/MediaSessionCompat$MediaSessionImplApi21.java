package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class MediaSessionCompat$MediaSessionImplApi21 implements MediaSessionCompat$MediaSessionImpl {
  private boolean mDestroyed = false;
  
  private final RemoteCallbackList<IMediaControllerCallback> mExtraControllerCallbacks = new RemoteCallbackList();
  
  private MediaSessionCompat$MediaSessionImplApi21$ExtraSession mExtraSessionBinder;
  
  private PlaybackStateCompat mPlaybackState;
  
  int mRatingType;
  
  int mRepeatMode;
  
  private final Object mSessionObj;
  
  boolean mShuffleModeEnabled;
  
  private final MediaSessionCompat$Token mToken;
  
  public MediaSessionCompat$MediaSessionImplApi21(Context paramContext, String paramString) {
    this.mSessionObj = MediaSessionCompatApi21.createSession(paramContext, paramString);
    this.mToken = new MediaSessionCompat$Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj));
  }
  
  public MediaSessionCompat$MediaSessionImplApi21(Object paramObject) {
    this.mSessionObj = MediaSessionCompatApi21.verifySession(paramObject);
    this.mToken = new MediaSessionCompat$Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj));
  }
  
  public String getCallingPackage() {
    return (Build.VERSION.SDK_INT < 24) ? null : MediaSessionCompatApi24.getCallingPackage(this.mSessionObj);
  }
  
  MediaSessionCompat$MediaSessionImplApi21$ExtraSession getExtraSessionBinder() {
    if (this.mExtraSessionBinder == null)
      this.mExtraSessionBinder = new MediaSessionCompat$MediaSessionImplApi21$ExtraSession(this); 
    return this.mExtraSessionBinder;
  }
  
  public Object getMediaSession() {
    return this.mSessionObj;
  }
  
  public Object getRemoteControlClient() {
    return null;
  }
  
  public MediaSessionCompat$Token getSessionToken() {
    return this.mToken;
  }
  
  public boolean isActive() {
    return MediaSessionCompatApi21.isActive(this.mSessionObj);
  }
  
  public void release() {
    this.mDestroyed = true;
    MediaSessionCompatApi21.release(this.mSessionObj);
  }
  
  public void sendSessionEvent(String paramString, Bundle paramBundle) {
    if (Build.VERSION.SDK_INT < 23) {
      int i = this.mExtraControllerCallbacks.beginBroadcast() - 1;
      while (true) {
        if (i >= 0) {
          IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mExtraControllerCallbacks.getBroadcastItem(i);
          try {
            iMediaControllerCallback.onEvent(paramString, paramBundle);
          } catch (RemoteException remoteException) {}
          i--;
          continue;
        } 
        this.mExtraControllerCallbacks.finishBroadcast();
        MediaSessionCompatApi21.sendSessionEvent(this.mSessionObj, paramString, paramBundle);
        return;
      } 
    } 
    MediaSessionCompatApi21.sendSessionEvent(this.mSessionObj, paramString, paramBundle);
  }
  
  public void setActive(boolean paramBoolean) {
    MediaSessionCompatApi21.setActive(this.mSessionObj, paramBoolean);
  }
  
  public void setCallback(MediaSessionCompat$Callback paramMediaSessionCompat$Callback, Handler paramHandler) {
    Object object1;
    Object object2 = this.mSessionObj;
    if (paramMediaSessionCompat$Callback == null) {
      object1 = null;
    } else {
      object1 = paramMediaSessionCompat$Callback.mCallbackObj;
    } 
    MediaSessionCompatApi21.setCallback(object2, object1, paramHandler);
    if (paramMediaSessionCompat$Callback != null)
      paramMediaSessionCompat$Callback.mSessionImpl = new WeakReference<MediaSessionCompat$MediaSessionImpl>(this); 
  }
  
  public void setExtras(Bundle paramBundle) {
    MediaSessionCompatApi21.setExtras(this.mSessionObj, paramBundle);
  }
  
  public void setFlags(int paramInt) {
    MediaSessionCompatApi21.setFlags(this.mSessionObj, paramInt);
  }
  
  public void setMediaButtonReceiver(PendingIntent paramPendingIntent) {
    MediaSessionCompatApi21.setMediaButtonReceiver(this.mSessionObj, paramPendingIntent);
  }
  
  public void setMetadata(MediaMetadataCompat paramMediaMetadataCompat) {
    Object object1;
    Object object2 = this.mSessionObj;
    if (paramMediaMetadataCompat == null) {
      paramMediaMetadataCompat = null;
    } else {
      object1 = paramMediaMetadataCompat.getMediaMetadata();
    } 
    MediaSessionCompatApi21.setMetadata(object2, object1);
  }
  
  public void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat) {
    this.mPlaybackState = paramPlaybackStateCompat;
    int i = this.mExtraControllerCallbacks.beginBroadcast() - 1;
    while (true) {
      Object object1;
      if (i >= 0) {
        IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mExtraControllerCallbacks.getBroadcastItem(i);
        try {
          iMediaControllerCallback.onPlaybackStateChanged(paramPlaybackStateCompat);
        } catch (RemoteException remoteException) {}
        i--;
        continue;
      } 
      this.mExtraControllerCallbacks.finishBroadcast();
      Object object2 = this.mSessionObj;
      if (paramPlaybackStateCompat == null) {
        paramPlaybackStateCompat = null;
      } else {
        object1 = paramPlaybackStateCompat.getPlaybackState();
      } 
      MediaSessionCompatApi21.setPlaybackState(object2, object1);
      return;
    } 
  }
  
  public void setPlaybackToLocal(int paramInt) {
    MediaSessionCompatApi21.setPlaybackToLocal(this.mSessionObj, paramInt);
  }
  
  public void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat) {
    MediaSessionCompatApi21.setPlaybackToRemote(this.mSessionObj, paramVolumeProviderCompat.getVolumeProvider());
  }
  
  public void setQueue(List<MediaSessionCompat$QueueItem> paramList) {
    ArrayList<Object> arrayList = null;
    if (paramList != null) {
      arrayList = new ArrayList();
      Iterator<MediaSessionCompat$QueueItem> iterator = paramList.iterator();
      while (iterator.hasNext())
        arrayList.add(((MediaSessionCompat$QueueItem)iterator.next()).getQueueItem()); 
    } 
    MediaSessionCompatApi21.setQueue(this.mSessionObj, arrayList);
  }
  
  public void setQueueTitle(CharSequence paramCharSequence) {
    MediaSessionCompatApi21.setQueueTitle(this.mSessionObj, paramCharSequence);
  }
  
  public void setRatingType(int paramInt) {
    if (Build.VERSION.SDK_INT < 22) {
      this.mRatingType = paramInt;
      return;
    } 
    MediaSessionCompatApi22.setRatingType(this.mSessionObj, paramInt);
  }
  
  public void setRepeatMode(int paramInt) {
    if (this.mRepeatMode != paramInt) {
      this.mRepeatMode = paramInt;
      int i = this.mExtraControllerCallbacks.beginBroadcast() - 1;
      while (true) {
        if (i >= 0) {
          IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mExtraControllerCallbacks.getBroadcastItem(i);
          try {
            iMediaControllerCallback.onRepeatModeChanged(paramInt);
          } catch (RemoteException remoteException) {}
          i--;
          continue;
        } 
        this.mExtraControllerCallbacks.finishBroadcast();
        return;
      } 
    } 
  }
  
  public void setSessionActivity(PendingIntent paramPendingIntent) {
    MediaSessionCompatApi21.setSessionActivity(this.mSessionObj, paramPendingIntent);
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    if (this.mShuffleModeEnabled != paramBoolean) {
      this.mShuffleModeEnabled = paramBoolean;
      int i = this.mExtraControllerCallbacks.beginBroadcast() - 1;
      while (true) {
        if (i >= 0) {
          IMediaControllerCallback iMediaControllerCallback = (IMediaControllerCallback)this.mExtraControllerCallbacks.getBroadcastItem(i);
          try {
            iMediaControllerCallback.onShuffleModeChanged(paramBoolean);
          } catch (RemoteException remoteException) {}
          i--;
          continue;
        } 
        this.mExtraControllerCallbacks.finishBroadcast();
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImplApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */