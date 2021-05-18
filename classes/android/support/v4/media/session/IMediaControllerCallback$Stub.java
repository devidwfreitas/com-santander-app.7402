package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;

public abstract class IMediaControllerCallback$Stub extends Binder implements IMediaControllerCallback {
  private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaControllerCallback";
  
  static final int TRANSACTION_onEvent = 1;
  
  static final int TRANSACTION_onExtrasChanged = 7;
  
  static final int TRANSACTION_onMetadataChanged = 4;
  
  static final int TRANSACTION_onPlaybackStateChanged = 3;
  
  static final int TRANSACTION_onQueueChanged = 5;
  
  static final int TRANSACTION_onQueueTitleChanged = 6;
  
  static final int TRANSACTION_onRepeatModeChanged = 9;
  
  static final int TRANSACTION_onSessionDestroyed = 2;
  
  static final int TRANSACTION_onShuffleModeChanged = 10;
  
  static final int TRANSACTION_onVolumeInfoChanged = 8;
  
  public IMediaControllerCallback$Stub() {
    attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
  }
  
  public static IMediaControllerCallback asInterface(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
    return (iInterface != null && iInterface instanceof IMediaControllerCallback) ? (IMediaControllerCallback)iInterface : new IMediaControllerCallback$Stub$Proxy(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    Bundle bundle2;
    String str1;
    PlaybackStateCompat playbackStateCompat1;
    MediaMetadataCompat mediaMetadataCompat1;
    CharSequence charSequence1;
    Bundle bundle1;
    ParcelableVolumeInfo parcelableVolumeInfo;
    String str2 = null;
    PlaybackStateCompat playbackStateCompat2 = null;
    MediaMetadataCompat mediaMetadataCompat2 = null;
    CharSequence charSequence2 = null;
    Bundle bundle3 = null;
    Parcel parcel = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
        return true;
      case 1:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        str2 = paramParcel1.readString();
        paramParcel2 = parcel;
        if (paramParcel1.readInt() != 0)
          bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); 
        onEvent(str2, bundle2);
        return true;
      case 2:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        onSessionDestroyed();
        return true;
      case 3:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        str1 = str2;
        if (paramParcel1.readInt() != 0)
          playbackStateCompat1 = (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(paramParcel1); 
        onPlaybackStateChanged(playbackStateCompat1);
        return true;
      case 4:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        playbackStateCompat1 = playbackStateCompat2;
        if (paramParcel1.readInt() != 0)
          mediaMetadataCompat1 = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(paramParcel1); 
        onMetadataChanged(mediaMetadataCompat1);
        return true;
      case 5:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        onQueueChanged(paramParcel1.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR));
        return true;
      case 6:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        mediaMetadataCompat1 = mediaMetadataCompat2;
        if (paramParcel1.readInt() != 0)
          charSequence1 = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel1); 
        onQueueTitleChanged(charSequence1);
        return true;
      case 7:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        charSequence1 = charSequence2;
        if (paramParcel1.readInt() != 0)
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); 
        onExtrasChanged(bundle1);
        return true;
      case 8:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        bundle1 = bundle3;
        if (paramParcel1.readInt() != 0)
          parcelableVolumeInfo = (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(paramParcel1); 
        onVolumeInfoChanged(parcelableVolumeInfo);
        return true;
      case 9:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        onRepeatModeChanged(paramParcel1.readInt());
        return true;
      case 10:
        break;
    } 
    paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
    if (paramParcel1.readInt() != 0) {
      boolean bool1 = true;
      onShuffleModeChanged(bool1);
      return true;
    } 
    boolean bool = false;
    onShuffleModeChanged(bool);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\IMediaControllerCallback$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */