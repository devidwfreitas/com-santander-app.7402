package android.support.v4.media.session;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;

interface MediaSessionCompatApi21$Callback extends MediaSessionCompatApi19$Callback {
  void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver);
  
  void onCustomAction(String paramString, Bundle paramBundle);
  
  void onFastForward();
  
  boolean onMediaButtonEvent(Intent paramIntent);
  
  void onPause();
  
  void onPlay();
  
  void onPlayFromMediaId(String paramString, Bundle paramBundle);
  
  void onPlayFromSearch(String paramString, Bundle paramBundle);
  
  void onRewind();
  
  void onSkipToNext();
  
  void onSkipToPrevious();
  
  void onSkipToQueueItem(long paramLong);
  
  void onStop();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi21$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */