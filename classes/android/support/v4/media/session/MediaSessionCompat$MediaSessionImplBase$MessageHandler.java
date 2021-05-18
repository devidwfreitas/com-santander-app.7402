package android.support.v4.media.session;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.RatingCompat;
import android.view.KeyEvent;

class MediaSessionCompat$MediaSessionImplBase$MessageHandler extends Handler {
  private static final int KEYCODE_MEDIA_PAUSE = 127;
  
  private static final int KEYCODE_MEDIA_PLAY = 126;
  
  private static final int MSG_ADD_QUEUE_ITEM = 25;
  
  private static final int MSG_ADD_QUEUE_ITEM_AT = 26;
  
  private static final int MSG_ADJUST_VOLUME = 2;
  
  private static final int MSG_COMMAND = 1;
  
  private static final int MSG_CUSTOM_ACTION = 20;
  
  private static final int MSG_FAST_FORWARD = 16;
  
  private static final int MSG_MEDIA_BUTTON = 21;
  
  private static final int MSG_NEXT = 14;
  
  private static final int MSG_PAUSE = 12;
  
  private static final int MSG_PLAY = 7;
  
  private static final int MSG_PLAY_MEDIA_ID = 8;
  
  private static final int MSG_PLAY_SEARCH = 9;
  
  private static final int MSG_PLAY_URI = 10;
  
  private static final int MSG_PREPARE = 3;
  
  private static final int MSG_PREPARE_MEDIA_ID = 4;
  
  private static final int MSG_PREPARE_SEARCH = 5;
  
  private static final int MSG_PREPARE_URI = 6;
  
  private static final int MSG_PREVIOUS = 15;
  
  private static final int MSG_RATE = 19;
  
  private static final int MSG_REMOVE_QUEUE_ITEM = 27;
  
  private static final int MSG_REMOVE_QUEUE_ITEM_AT = 28;
  
  private static final int MSG_REWIND = 17;
  
  private static final int MSG_SEEK_TO = 18;
  
  private static final int MSG_SET_REPEAT_MODE = 23;
  
  private static final int MSG_SET_SHUFFLE_MODE_ENABLED = 24;
  
  private static final int MSG_SET_VOLUME = 22;
  
  private static final int MSG_SKIP_TO_ITEM = 11;
  
  private static final int MSG_STOP = 13;
  
  public MediaSessionCompat$MediaSessionImplBase$MessageHandler(Looper paramLooper) {
    super(paramLooper);
  }
  
  private void onMediaButtonEvent(KeyEvent paramKeyEvent, MediaSessionCompat$Callback paramMediaSessionCompat$Callback) {
    if (paramKeyEvent != null && paramKeyEvent.getAction() == 0) {
      boolean bool1;
      boolean bool2;
      boolean bool3;
      long l;
      if (MediaSessionCompat$MediaSessionImplBase.this.mState == null) {
        l = 0L;
      } else {
        l = MediaSessionCompat$MediaSessionImplBase.this.mState.getActions();
      } 
      switch (paramKeyEvent.getKeyCode()) {
        default:
          return;
        case 79:
        case 85:
          if (MediaSessionCompat$MediaSessionImplBase.this.mState != null && MediaSessionCompat$MediaSessionImplBase.this.mState.getState() == 3) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          if ((0x204L & l) != 0L) {
            bool2 = true;
          } else {
            bool2 = false;
          } 
          if ((l & 0x202L) != 0L) {
            bool3 = true;
          } else {
            bool3 = false;
          } 
          if (bool1 && bool3) {
            paramMediaSessionCompat$Callback.onPause();
            return;
          } 
          break;
        case 126:
          if ((l & 0x4L) != 0L) {
            paramMediaSessionCompat$Callback.onPlay();
            return;
          } 
          return;
        case 127:
          if ((l & 0x2L) != 0L) {
            paramMediaSessionCompat$Callback.onPause();
            return;
          } 
          return;
        case 87:
          if ((l & 0x20L) != 0L) {
            paramMediaSessionCompat$Callback.onSkipToNext();
            return;
          } 
          return;
        case 88:
          if ((l & 0x10L) != 0L) {
            paramMediaSessionCompat$Callback.onSkipToPrevious();
            return;
          } 
          return;
        case 86:
          if ((l & 0x1L) != 0L) {
            paramMediaSessionCompat$Callback.onStop();
            return;
          } 
          return;
        case 90:
          if ((l & 0x40L) != 0L) {
            paramMediaSessionCompat$Callback.onFastForward();
            return;
          } 
          return;
        case 89:
          if ((l & 0x8L) != 0L) {
            paramMediaSessionCompat$Callback.onRewind();
            return;
          } 
          return;
      } 
      if (!bool1 && bool2) {
        paramMediaSessionCompat$Callback.onPlay();
        return;
      } 
    } 
  }
  
  public void handleMessage(Message paramMessage) {
    MediaSessionCompat$Callback mediaSessionCompat$Callback = MediaSessionCompat$MediaSessionImplBase.this.mCallback;
    if (mediaSessionCompat$Callback != null) {
      MediaSessionCompat$MediaSessionImplBase$Command mediaSessionCompat$MediaSessionImplBase$Command;
      KeyEvent keyEvent;
      Intent intent;
      switch (paramMessage.what) {
        default:
          return;
        case 1:
          mediaSessionCompat$MediaSessionImplBase$Command = (MediaSessionCompat$MediaSessionImplBase$Command)paramMessage.obj;
          mediaSessionCompat$Callback.onCommand(mediaSessionCompat$MediaSessionImplBase$Command.command, mediaSessionCompat$MediaSessionImplBase$Command.extras, mediaSessionCompat$MediaSessionImplBase$Command.stub);
          return;
        case 21:
          keyEvent = (KeyEvent)((Message)mediaSessionCompat$MediaSessionImplBase$Command).obj;
          intent = new Intent("android.intent.action.MEDIA_BUTTON");
          intent.putExtra("android.intent.extra.KEY_EVENT", (Parcelable)keyEvent);
          if (!mediaSessionCompat$Callback.onMediaButtonEvent(intent)) {
            onMediaButtonEvent(keyEvent, mediaSessionCompat$Callback);
            return;
          } 
          return;
        case 3:
          mediaSessionCompat$Callback.onPrepare();
          return;
        case 4:
          mediaSessionCompat$Callback.onPrepareFromMediaId((String)((Message)keyEvent).obj, keyEvent.getData());
          return;
        case 5:
          mediaSessionCompat$Callback.onPrepareFromSearch((String)((Message)keyEvent).obj, keyEvent.getData());
          return;
        case 6:
          mediaSessionCompat$Callback.onPrepareFromUri((Uri)((Message)keyEvent).obj, keyEvent.getData());
          return;
        case 7:
          mediaSessionCompat$Callback.onPlay();
          return;
        case 8:
          mediaSessionCompat$Callback.onPlayFromMediaId((String)((Message)keyEvent).obj, keyEvent.getData());
          return;
        case 9:
          mediaSessionCompat$Callback.onPlayFromSearch((String)((Message)keyEvent).obj, keyEvent.getData());
          return;
        case 10:
          mediaSessionCompat$Callback.onPlayFromUri((Uri)((Message)keyEvent).obj, keyEvent.getData());
          return;
        case 11:
          mediaSessionCompat$Callback.onSkipToQueueItem(((Long)((Message)keyEvent).obj).longValue());
          return;
        case 12:
          mediaSessionCompat$Callback.onPause();
          return;
        case 13:
          mediaSessionCompat$Callback.onStop();
          return;
        case 14:
          mediaSessionCompat$Callback.onSkipToNext();
          return;
        case 15:
          mediaSessionCompat$Callback.onSkipToPrevious();
          return;
        case 16:
          mediaSessionCompat$Callback.onFastForward();
          return;
        case 17:
          mediaSessionCompat$Callback.onRewind();
          return;
        case 18:
          mediaSessionCompat$Callback.onSeekTo(((Long)((Message)keyEvent).obj).longValue());
          return;
        case 19:
          mediaSessionCompat$Callback.onSetRating((RatingCompat)((Message)keyEvent).obj);
          return;
        case 20:
          mediaSessionCompat$Callback.onCustomAction((String)((Message)keyEvent).obj, keyEvent.getData());
          return;
        case 25:
          mediaSessionCompat$Callback.onAddQueueItem((MediaDescriptionCompat)((Message)keyEvent).obj);
          return;
        case 26:
          mediaSessionCompat$Callback.onAddQueueItem((MediaDescriptionCompat)((Message)keyEvent).obj, ((Message)keyEvent).arg1);
          return;
        case 27:
          mediaSessionCompat$Callback.onRemoveQueueItem((MediaDescriptionCompat)((Message)keyEvent).obj);
          return;
        case 28:
          mediaSessionCompat$Callback.onRemoveQueueItemAt(((Message)keyEvent).arg1);
          return;
        case 2:
          MediaSessionCompat$MediaSessionImplBase.this.adjustVolume(((Message)keyEvent).arg1, 0);
          return;
        case 22:
          MediaSessionCompat$MediaSessionImplBase.this.setVolumeTo(((Message)keyEvent).arg1, 0);
          return;
        case 23:
          mediaSessionCompat$Callback.onSetRepeatMode(((Message)keyEvent).arg1);
          return;
        case 24:
          break;
      } 
      mediaSessionCompat$Callback.onSetShuffleModeEnabled(((Boolean)((Message)keyEvent).obj).booleanValue());
      return;
    } 
  }
  
  public void post(int paramInt) {
    post(paramInt, (Object)null);
  }
  
  public void post(int paramInt, Object paramObject) {
    obtainMessage(paramInt, paramObject).sendToTarget();
  }
  
  public void post(int paramInt1, Object paramObject, int paramInt2) {
    obtainMessage(paramInt1, paramInt2, 0, paramObject).sendToTarget();
  }
  
  public void post(int paramInt, Object paramObject, Bundle paramBundle) {
    paramObject = obtainMessage(paramInt, paramObject);
    paramObject.setData(paramBundle);
    paramObject.sendToTarget();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$MediaSessionImplBase$MessageHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */