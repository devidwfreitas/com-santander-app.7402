package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

class MediaControllerCompat$Callback$MessageHandler extends Handler {
  private static final int MSG_DESTROYED = 8;
  
  private static final int MSG_EVENT = 1;
  
  private static final int MSG_UPDATE_EXTRAS = 7;
  
  private static final int MSG_UPDATE_METADATA = 3;
  
  private static final int MSG_UPDATE_PLAYBACK_STATE = 2;
  
  private static final int MSG_UPDATE_QUEUE = 5;
  
  private static final int MSG_UPDATE_QUEUE_TITLE = 6;
  
  private static final int MSG_UPDATE_REPEAT_MODE = 9;
  
  private static final int MSG_UPDATE_SHUFFLE_MODE = 10;
  
  private static final int MSG_UPDATE_VOLUME = 4;
  
  public MediaControllerCompat$Callback$MessageHandler(Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    if (!MediaControllerCompat$Callback.this.mRegistered)
      return; 
    switch (paramMessage.what) {
      default:
        return;
      case 1:
        MediaControllerCompat$Callback.this.onSessionEvent((String)paramMessage.obj, paramMessage.getData());
        return;
      case 2:
        MediaControllerCompat$Callback.this.onPlaybackStateChanged((PlaybackStateCompat)paramMessage.obj);
        return;
      case 3:
        MediaControllerCompat$Callback.this.onMetadataChanged((MediaMetadataCompat)paramMessage.obj);
        return;
      case 5:
        MediaControllerCompat$Callback.this.onQueueChanged((List<MediaSessionCompat$QueueItem>)paramMessage.obj);
        return;
      case 6:
        MediaControllerCompat$Callback.this.onQueueTitleChanged((CharSequence)paramMessage.obj);
        return;
      case 9:
        MediaControllerCompat$Callback.this.onRepeatModeChanged(((Integer)paramMessage.obj).intValue());
        return;
      case 10:
        MediaControllerCompat$Callback.this.onShuffleModeChanged(((Boolean)paramMessage.obj).booleanValue());
        return;
      case 7:
        MediaControllerCompat$Callback.this.onExtrasChanged((Bundle)paramMessage.obj);
        return;
      case 4:
        MediaControllerCompat$Callback.this.onAudioInfoChanged((MediaControllerCompat$PlaybackInfo)paramMessage.obj);
        return;
      case 8:
        break;
    } 
    MediaControllerCompat$Callback.this.onSessionDestroyed();
  }
  
  public void post(int paramInt, Object paramObject, Bundle paramBundle) {
    paramObject = obtainMessage(paramInt, paramObject);
    paramObject.setData(paramBundle);
    paramObject.sendToTarget();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompat$Callback$MessageHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */