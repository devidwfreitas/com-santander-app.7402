package android.support.v4.media.session;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

class IMediaControllerCallback$Stub$Proxy implements IMediaControllerCallback {
  private IBinder mRemote;
  
  IMediaControllerCallback$Stub$Proxy(IBinder paramIBinder) {
    this.mRemote = paramIBinder;
  }
  
  public IBinder asBinder() {
    return this.mRemote;
  }
  
  public String getInterfaceDescriptor() {
    return "android.support.v4.media.session.IMediaControllerCallback";
  }
  
  public void onEvent(String paramString, Bundle paramBundle) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      parcel.writeString(paramString);
      if (paramBundle != null) {
        parcel.writeInt(1);
        paramBundle.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(1, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onExtrasChanged(Bundle paramBundle) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramBundle != null) {
        parcel.writeInt(1);
        paramBundle.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(7, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramMediaMetadataCompat != null) {
        parcel.writeInt(1);
        paramMediaMetadataCompat.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(4, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramPlaybackStateCompat != null) {
        parcel.writeInt(1);
        paramPlaybackStateCompat.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(3, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onQueueChanged(List<MediaSessionCompat$QueueItem> paramList) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      parcel.writeTypedList(paramList);
      this.mRemote.transact(5, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onQueueTitleChanged(CharSequence paramCharSequence) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramCharSequence != null) {
        parcel.writeInt(1);
        TextUtils.writeToParcel(paramCharSequence, parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(6, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onRepeatModeChanged(int paramInt) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      parcel.writeInt(paramInt);
      this.mRemote.transact(9, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onSessionDestroyed() {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      this.mRemote.transact(2, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onShuffleModeChanged(boolean paramBoolean) {
    boolean bool = true;
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (!paramBoolean)
        bool = false; 
      parcel.writeInt(bool);
      this.mRemote.transact(10, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramParcelableVolumeInfo != null) {
        parcel.writeInt(1);
        paramParcelableVolumeInfo.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.mRemote.transact(8, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\IMediaControllerCallback$Stub$Proxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */