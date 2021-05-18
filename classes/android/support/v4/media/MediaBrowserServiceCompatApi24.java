package android.support.v4.media;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.lang.reflect.Field;

@TargetApi(24)
@RequiresApi(24)
class MediaBrowserServiceCompatApi24 {
  private static final String TAG = "MBSCompatApi24";
  
  private static Field sResultFlags;
  
  static {
    try {
      sResultFlags = MediaBrowserService.Result.class.getDeclaredField("mFlags");
      sResultFlags.setAccessible(true);
      return;
    } catch (NoSuchFieldException noSuchFieldException) {
      Log.w("MBSCompatApi24", noSuchFieldException);
      return;
    } 
  }
  
  public static Object createService(Context paramContext, MediaBrowserServiceCompatApi24$ServiceCompatProxy paramMediaBrowserServiceCompatApi24$ServiceCompatProxy) {
    return new MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor(paramContext, paramMediaBrowserServiceCompatApi24$ServiceCompatProxy);
  }
  
  public static Bundle getBrowserRootHints(Object paramObject) {
    return ((MediaBrowserService)paramObject).getBrowserRootHints();
  }
  
  public static void notifyChildrenChanged(Object paramObject, String paramString, Bundle paramBundle) {
    ((MediaBrowserService)paramObject).notifyChildrenChanged(paramString, paramBundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserServiceCompatApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */