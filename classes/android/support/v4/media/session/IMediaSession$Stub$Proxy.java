package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

class IMediaSession$Stub$Proxy implements IMediaSession {
  private IBinder mRemote;
  
  IMediaSession$Stub$Proxy(IBinder paramIBinder) {
    this.mRemote = paramIBinder;
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramMediaDescriptionCompat != null) {
        parcel1.writeInt(1);
        paramMediaDescriptionCompat.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(41, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void addQueueItemAt(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramMediaDescriptionCompat != null) {
        parcel1.writeInt(1);
        paramMediaDescriptionCompat.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      parcel1.writeInt(paramInt);
      this.mRemote.transact(42, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void adjustVolume(int paramInt1, int paramInt2, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      parcel1.writeString(paramString);
      this.mRemote.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.mRemote;
  }
  
  public void fastForward() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(22, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public Bundle getExtras() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(31, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (Bundle)Bundle.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public long getFlags() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readLong();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public String getInterfaceDescriptor() {
    return "android.support.v4.media.session.IMediaSession";
  }
  
  public PendingIntent getLaunchPendingIntent() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public MediaMetadataCompat getMetadata() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(27, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public String getPackageName() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public PlaybackStateCompat getPlaybackState() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(28, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public List<MediaSessionCompat$QueueItem> getQueue() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(29, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR);
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public CharSequence getQueueTitle() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(30, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int getRatingType() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(32, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int getRepeatMode() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(37, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public String getTag() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public ParcelableVolumeInfo getVolumeAttributes() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean isShuffleModeEnabled() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(38, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean isTransportControlEnabled() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void next() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(20, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void pause() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(18, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void play() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(13, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void playFromMediaId(String paramString, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeString(paramString);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(14, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void playFromSearch(String paramString, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeString(paramString);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(15, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void playFromUri(Uri paramUri, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramUri != null) {
        parcel1.writeInt(1);
        paramUri.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(16, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void prepare() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(33, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void prepareFromMediaId(String paramString, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeString(paramString);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(34, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void prepareFromSearch(String paramString, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeString(paramString);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(35, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void prepareFromUri(Uri paramUri, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramUri != null) {
        parcel1.writeInt(1);
        paramUri.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(36, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void previous() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(21, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void rate(RatingCompat paramRatingCompat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramRatingCompat != null) {
        parcel1.writeInt(1);
        paramRatingCompat.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(25, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void registerCallbackListener(IMediaControllerCallback paramIMediaControllerCallback) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramIMediaControllerCallback != null) {
        IBinder iBinder = paramIMediaControllerCallback.asBinder();
      } else {
        paramIMediaControllerCallback = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramIMediaControllerCallback);
      this.mRemote.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramMediaDescriptionCompat != null) {
        parcel1.writeInt(1);
        paramMediaDescriptionCompat.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(43, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void removeQueueItemAt(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeInt(paramInt);
      this.mRemote.transact(44, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void rewind() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(23, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void seekTo(long paramLong) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeLong(paramLong);
      this.mRemote.transact(24, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void sendCommand(String paramString, Bundle paramBundle, MediaSessionCompat$ResultReceiverWrapper paramMediaSessionCompat$ResultReceiverWrapper) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeString(paramString);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramMediaSessionCompat$ResultReceiverWrapper != null) {
        parcel1.writeInt(1);
        paramMediaSessionCompat$ResultReceiverWrapper.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void sendCustomAction(String paramString, Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeString(paramString);
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(26, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean sendMediaButton(KeyEvent paramKeyEvent) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramKeyEvent != null) {
        parcel1.writeInt(1);
        paramKeyEvent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.mRemote.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i == 0)
        bool = false; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void setRepeatMode(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeInt(paramInt);
      this.mRemote.transact(39, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void setShuffleModeEnabled(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.mRemote.transact(40, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      parcel1.writeString(paramString);
      this.mRemote.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void skipToQueueItem(long paramLong) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      parcel1.writeLong(paramLong);
      this.mRemote.transact(17, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void stop() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      this.mRemote.transact(19, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void unregisterCallbackListener(IMediaControllerCallback paramIMediaControllerCallback) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
      if (paramIMediaControllerCallback != null) {
        IBinder iBinder = paramIMediaControllerCallback.asBinder();
      } else {
        paramIMediaControllerCallback = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramIMediaControllerCallback);
      this.mRemote.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\IMediaSession$Stub$Proxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */