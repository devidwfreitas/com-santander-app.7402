package android.support.v4.media.session;

import android.media.MediaDescription;
import android.media.session.MediaSession;

class MediaSessionCompatApi21$QueueItem {
  public static Object createItem(Object paramObject, long paramLong) {
    return new MediaSession.QueueItem((MediaDescription)paramObject, paramLong);
  }
  
  public static Object getDescription(Object paramObject) {
    return ((MediaSession.QueueItem)paramObject).getDescription();
  }
  
  public static long getQueueId(Object paramObject) {
    return ((MediaSession.QueueItem)paramObject).getQueueId();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi21$QueueItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */