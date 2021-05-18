package android.support.v4.media.session;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;

@TargetApi(24)
@RequiresApi(24)
class MediaSessionCompatApi24 {
  private static final String TAG = "MediaSessionCompatApi24";
  
  public static Object createCallback(MediaSessionCompatApi24$Callback paramMediaSessionCompatApi24$Callback) {
    return new MediaSessionCompatApi24$CallbackProxy<MediaSessionCompatApi24$Callback>(paramMediaSessionCompatApi24$Callback);
  }
  
  public static String getCallingPackage(Object paramObject) {
    paramObject = paramObject;
    try {
      return (String)paramObject.getClass().getMethod("getCallingPackage", new Class[0]).invoke(paramObject, new Object[0]);
    } catch (NoSuchMethodException noSuchMethodException) {
    
    } catch (InvocationTargetException invocationTargetException) {
    
    } catch (IllegalAccessException illegalAccessException) {}
    Log.e("MediaSessionCompatApi24", "Cannot execute MediaSession.getCallingPackage()", illegalAccessException);
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompatApi24.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */