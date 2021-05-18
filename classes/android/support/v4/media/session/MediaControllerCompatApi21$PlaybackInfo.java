package android.support.v4.media.session;

import android.media.AudioAttributes;
import android.media.session.MediaController;

public class MediaControllerCompatApi21$PlaybackInfo {
  private static final int FLAG_SCO = 4;
  
  private static final int STREAM_BLUETOOTH_SCO = 6;
  
  private static final int STREAM_SYSTEM_ENFORCED = 7;
  
  public static AudioAttributes getAudioAttributes(Object paramObject) {
    return ((MediaController.PlaybackInfo)paramObject).getAudioAttributes();
  }
  
  public static int getCurrentVolume(Object paramObject) {
    return ((MediaController.PlaybackInfo)paramObject).getCurrentVolume();
  }
  
  public static int getLegacyAudioStream(Object paramObject) {
    return toLegacyStreamType(getAudioAttributes(paramObject));
  }
  
  public static int getMaxVolume(Object paramObject) {
    return ((MediaController.PlaybackInfo)paramObject).getMaxVolume();
  }
  
  public static int getPlaybackType(Object paramObject) {
    return ((MediaController.PlaybackInfo)paramObject).getPlaybackType();
  }
  
  public static int getVolumeControl(Object paramObject) {
    return ((MediaController.PlaybackInfo)paramObject).getVolumeControl();
  }
  
  private static int toLegacyStreamType(AudioAttributes paramAudioAttributes) {
    byte b = 3;
    if ((paramAudioAttributes.getFlags() & 0x1) == 1)
      b = 7; 
    if ((paramAudioAttributes.getFlags() & 0x4) == 4)
      return 6; 
    switch (paramAudioAttributes.getUsage()) {
      case 1:
      case 11:
      case 12:
      case 14:
        return b;
      default:
        return 3;
      case 2:
        return 0;
      case 13:
        return 1;
      case 3:
        return 8;
      case 4:
        return 4;
      case 6:
        return 2;
      case 5:
      case 7:
      case 8:
      case 9:
      case 10:
        break;
    } 
    return 5;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompatApi21$PlaybackInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */