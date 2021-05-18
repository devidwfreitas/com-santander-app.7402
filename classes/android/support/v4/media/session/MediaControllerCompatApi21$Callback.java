package android.support.v4.media.session;

import android.os.Bundle;
import java.util.List;

public interface MediaControllerCompatApi21$Callback {
  void onAudioInfoChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
  
  void onExtrasChanged(Bundle paramBundle);
  
  void onMetadataChanged(Object paramObject);
  
  void onPlaybackStateChanged(Object paramObject);
  
  void onQueueChanged(List<?> paramList);
  
  void onQueueTitleChanged(CharSequence paramCharSequence);
  
  void onSessionDestroyed();
  
  void onSessionEvent(String paramString, Bundle paramBundle);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaControllerCompatApi21$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */