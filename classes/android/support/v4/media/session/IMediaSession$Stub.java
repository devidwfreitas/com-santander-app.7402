package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

public abstract class IMediaSession$Stub extends Binder implements IMediaSession {
  private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaSession";
  
  static final int TRANSACTION_addQueueItem = 41;
  
  static final int TRANSACTION_addQueueItemAt = 42;
  
  static final int TRANSACTION_adjustVolume = 11;
  
  static final int TRANSACTION_fastForward = 22;
  
  static final int TRANSACTION_getExtras = 31;
  
  static final int TRANSACTION_getFlags = 9;
  
  static final int TRANSACTION_getLaunchPendingIntent = 8;
  
  static final int TRANSACTION_getMetadata = 27;
  
  static final int TRANSACTION_getPackageName = 6;
  
  static final int TRANSACTION_getPlaybackState = 28;
  
  static final int TRANSACTION_getQueue = 29;
  
  static final int TRANSACTION_getQueueTitle = 30;
  
  static final int TRANSACTION_getRatingType = 32;
  
  static final int TRANSACTION_getRepeatMode = 37;
  
  static final int TRANSACTION_getTag = 7;
  
  static final int TRANSACTION_getVolumeAttributes = 10;
  
  static final int TRANSACTION_isShuffleModeEnabled = 38;
  
  static final int TRANSACTION_isTransportControlEnabled = 5;
  
  static final int TRANSACTION_next = 20;
  
  static final int TRANSACTION_pause = 18;
  
  static final int TRANSACTION_play = 13;
  
  static final int TRANSACTION_playFromMediaId = 14;
  
  static final int TRANSACTION_playFromSearch = 15;
  
  static final int TRANSACTION_playFromUri = 16;
  
  static final int TRANSACTION_prepare = 33;
  
  static final int TRANSACTION_prepareFromMediaId = 34;
  
  static final int TRANSACTION_prepareFromSearch = 35;
  
  static final int TRANSACTION_prepareFromUri = 36;
  
  static final int TRANSACTION_previous = 21;
  
  static final int TRANSACTION_rate = 25;
  
  static final int TRANSACTION_registerCallbackListener = 3;
  
  static final int TRANSACTION_removeQueueItem = 43;
  
  static final int TRANSACTION_removeQueueItemAt = 44;
  
  static final int TRANSACTION_rewind = 23;
  
  static final int TRANSACTION_seekTo = 24;
  
  static final int TRANSACTION_sendCommand = 1;
  
  static final int TRANSACTION_sendCustomAction = 26;
  
  static final int TRANSACTION_sendMediaButton = 2;
  
  static final int TRANSACTION_setRepeatMode = 39;
  
  static final int TRANSACTION_setShuffleModeEnabled = 40;
  
  static final int TRANSACTION_setVolumeTo = 12;
  
  static final int TRANSACTION_skipToQueueItem = 17;
  
  static final int TRANSACTION_stop = 19;
  
  static final int TRANSACTION_unregisterCallbackListener = 4;
  
  public IMediaSession$Stub() {
    attachInterface(this, "android.support.v4.media.session.IMediaSession");
  }
  
  public static IMediaSession asInterface(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
    return (iInterface != null && iInterface instanceof IMediaSession) ? (IMediaSession)iInterface : new IMediaSession$Stub$Proxy(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str1;
    PendingIntent pendingIntent;
    ParcelableVolumeInfo parcelableVolumeInfo;
    MediaMetadataCompat mediaMetadataCompat;
    PlaybackStateCompat playbackStateCompat;
    List<MediaSessionCompat$QueueItem> list;
    CharSequence charSequence;
    long l;
    Bundle bundle2;
    String str3;
    boolean bool2 = false;
    boolean bool = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("android.support.v4.media.session.IMediaSession");
        return true;
      case 1:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        str3 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {
          bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        } else {
          bundle2 = null;
        } 
        if (paramParcel1.readInt() != 0) {
          MediaSessionCompat$ResultReceiverWrapper mediaSessionCompat$ResultReceiverWrapper = (MediaSessionCompat$ResultReceiverWrapper)MediaSessionCompat$ResultReceiverWrapper.CREATOR.createFromParcel(paramParcel1);
          sendCommand(str3, bundle2, mediaSessionCompat$ResultReceiverWrapper);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        sendCommand(str3, bundle2, (MediaSessionCompat$ResultReceiverWrapper)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0) {
          KeyEvent keyEvent = (KeyEvent)KeyEvent.CREATOR.createFromParcel(paramParcel1);
        } else {
          paramParcel1 = null;
        } 
        bool = sendMediaButton((KeyEvent)paramParcel1);
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
          paramParcel2.writeInt(paramInt1);
          return true;
        } 
        paramInt1 = 0;
        paramParcel2.writeInt(paramInt1);
        return true;
      case 3:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        registerCallbackListener(IMediaControllerCallback$Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        unregisterCallbackListener(IMediaControllerCallback$Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        bool = isTransportControlEnabled();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 6:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        str1 = getPackageName();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 7:
        str1.enforceInterface("android.support.v4.media.session.IMediaSession");
        str1 = getTag();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 8:
        str1.enforceInterface("android.support.v4.media.session.IMediaSession");
        pendingIntent = getLaunchPendingIntent();
        paramParcel2.writeNoException();
        if (pendingIntent != null) {
          paramParcel2.writeInt(1);
          pendingIntent.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 9:
        pendingIntent.enforceInterface("android.support.v4.media.session.IMediaSession");
        l = getFlags();
        paramParcel2.writeNoException();
        paramParcel2.writeLong(l);
        return true;
      case 10:
        pendingIntent.enforceInterface("android.support.v4.media.session.IMediaSession");
        parcelableVolumeInfo = getVolumeAttributes();
        paramParcel2.writeNoException();
        if (parcelableVolumeInfo != null) {
          paramParcel2.writeInt(1);
          parcelableVolumeInfo.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 11:
        parcelableVolumeInfo.enforceInterface("android.support.v4.media.session.IMediaSession");
        adjustVolume(parcelableVolumeInfo.readInt(), parcelableVolumeInfo.readInt(), parcelableVolumeInfo.readString());
        paramParcel2.writeNoException();
        return true;
      case 12:
        parcelableVolumeInfo.enforceInterface("android.support.v4.media.session.IMediaSession");
        setVolumeTo(parcelableVolumeInfo.readInt(), parcelableVolumeInfo.readInt(), parcelableVolumeInfo.readString());
        paramParcel2.writeNoException();
        return true;
      case 27:
        parcelableVolumeInfo.enforceInterface("android.support.v4.media.session.IMediaSession");
        mediaMetadataCompat = getMetadata();
        paramParcel2.writeNoException();
        if (mediaMetadataCompat != null) {
          paramParcel2.writeInt(1);
          mediaMetadataCompat.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 28:
        mediaMetadataCompat.enforceInterface("android.support.v4.media.session.IMediaSession");
        playbackStateCompat = getPlaybackState();
        paramParcel2.writeNoException();
        if (playbackStateCompat != null) {
          paramParcel2.writeInt(1);
          playbackStateCompat.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 29:
        playbackStateCompat.enforceInterface("android.support.v4.media.session.IMediaSession");
        list = getQueue();
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list);
        return true;
      case 30:
        list.enforceInterface("android.support.v4.media.session.IMediaSession");
        charSequence = getQueueTitle();
        paramParcel2.writeNoException();
        if (charSequence != null) {
          paramParcel2.writeInt(1);
          TextUtils.writeToParcel(charSequence, paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 31:
        charSequence.enforceInterface("android.support.v4.media.session.IMediaSession");
        bundle1 = getExtras();
        paramParcel2.writeNoException();
        if (bundle1 != null) {
          paramParcel2.writeInt(1);
          bundle1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 32:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramInt1 = getRatingType();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 37:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramInt1 = getRepeatMode();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 38:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        bool = isShuffleModeEnabled();
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 41:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (bundle1.readInt() != 0) {
          MediaDescriptionCompat mediaDescriptionCompat = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel((Parcel)bundle1);
          addQueueItem(mediaDescriptionCompat);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        addQueueItem((MediaDescriptionCompat)bundle1);
        paramParcel2.writeNoException();
        return true;
      case 42:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (bundle1.readInt() != 0) {
          MediaDescriptionCompat mediaDescriptionCompat = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel((Parcel)bundle1);
          addQueueItemAt(mediaDescriptionCompat, bundle1.readInt());
          paramParcel2.writeNoException();
          return true;
        } 
        bundle2 = null;
        addQueueItemAt((MediaDescriptionCompat)bundle2, bundle1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 43:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (bundle1.readInt() != 0) {
          MediaDescriptionCompat mediaDescriptionCompat = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel((Parcel)bundle1);
          removeQueueItem(mediaDescriptionCompat);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        removeQueueItem((MediaDescriptionCompat)bundle1);
        paramParcel2.writeNoException();
        return true;
      case 44:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        removeQueueItemAt(bundle1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 33:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        prepare();
        paramParcel2.writeNoException();
        return true;
      case 34:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        str2 = bundle1.readString();
        if (bundle1.readInt() != 0) {
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
          prepareFromMediaId(str2, bundle1);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        prepareFromMediaId(str2, bundle1);
        paramParcel2.writeNoException();
        return true;
      case 35:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        str2 = bundle1.readString();
        if (bundle1.readInt() != 0) {
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
          prepareFromSearch(str2, bundle1);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        prepareFromSearch(str2, bundle1);
        paramParcel2.writeNoException();
        return true;
      case 36:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (bundle1.readInt() != 0) {
          Uri uri = (Uri)Uri.CREATOR.createFromParcel((Parcel)bundle1);
        } else {
          str2 = null;
        } 
        if (bundle1.readInt() != 0) {
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
          prepareFromUri((Uri)str2, bundle1);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        prepareFromUri((Uri)str2, bundle1);
        paramParcel2.writeNoException();
        return true;
      case 13:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        play();
        paramParcel2.writeNoException();
        return true;
      case 14:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        str2 = bundle1.readString();
        if (bundle1.readInt() != 0) {
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
          playFromMediaId(str2, bundle1);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        playFromMediaId(str2, bundle1);
        paramParcel2.writeNoException();
        return true;
      case 15:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        str2 = bundle1.readString();
        if (bundle1.readInt() != 0) {
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
          playFromSearch(str2, bundle1);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        playFromSearch(str2, bundle1);
        paramParcel2.writeNoException();
        return true;
      case 16:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (bundle1.readInt() != 0) {
          Uri uri = (Uri)Uri.CREATOR.createFromParcel((Parcel)bundle1);
        } else {
          str2 = null;
        } 
        if (bundle1.readInt() != 0) {
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
          playFromUri((Uri)str2, bundle1);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        playFromUri((Uri)str2, bundle1);
        paramParcel2.writeNoException();
        return true;
      case 17:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        skipToQueueItem(bundle1.readLong());
        paramParcel2.writeNoException();
        return true;
      case 18:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        pause();
        paramParcel2.writeNoException();
        return true;
      case 19:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        stop();
        paramParcel2.writeNoException();
        return true;
      case 20:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        next();
        paramParcel2.writeNoException();
        return true;
      case 21:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        previous();
        paramParcel2.writeNoException();
        return true;
      case 22:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        fastForward();
        paramParcel2.writeNoException();
        return true;
      case 23:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        rewind();
        paramParcel2.writeNoException();
        return true;
      case 24:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        seekTo(bundle1.readLong());
        paramParcel2.writeNoException();
        return true;
      case 25:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (bundle1.readInt() != 0) {
          RatingCompat ratingCompat = (RatingCompat)RatingCompat.CREATOR.createFromParcel((Parcel)bundle1);
          rate(ratingCompat);
          paramParcel2.writeNoException();
          return true;
        } 
        bundle1 = null;
        rate((RatingCompat)bundle1);
        paramParcel2.writeNoException();
        return true;
      case 39:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        setRepeatMode(bundle1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 40:
        bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (bundle1.readInt() != 0)
          bool = true; 
        setShuffleModeEnabled(bool);
        paramParcel2.writeNoException();
        return true;
      case 26:
        break;
    } 
    bundle1.enforceInterface("android.support.v4.media.session.IMediaSession");
    String str2 = bundle1.readString();
    if (bundle1.readInt() != 0) {
      bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)bundle1);
      sendCustomAction(str2, bundle1);
      paramParcel2.writeNoException();
      return true;
    } 
    Bundle bundle1 = null;
    sendCustomAction(str2, bundle1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\IMediaSession$Stub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */