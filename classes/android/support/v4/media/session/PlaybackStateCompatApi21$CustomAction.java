package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Bundle;

final class PlaybackStateCompatApi21$CustomAction {
  public static String getAction(Object paramObject) {
    return ((PlaybackState.CustomAction)paramObject).getAction();
  }
  
  public static Bundle getExtras(Object paramObject) {
    return ((PlaybackState.CustomAction)paramObject).getExtras();
  }
  
  public static int getIcon(Object paramObject) {
    return ((PlaybackState.CustomAction)paramObject).getIcon();
  }
  
  public static CharSequence getName(Object paramObject) {
    return ((PlaybackState.CustomAction)paramObject).getName();
  }
  
  public static Object newInstance(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle) {
    PlaybackState.CustomAction.Builder builder = new PlaybackState.CustomAction.Builder(paramString, paramCharSequence, paramInt);
    builder.setExtras(paramBundle);
    return builder.build();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\PlaybackStateCompatApi21$CustomAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */