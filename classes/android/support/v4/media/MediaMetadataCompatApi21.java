package android.support.v4.media;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.os.Parcel;
import android.support.annotation.RequiresApi;
import java.util.Set;

@TargetApi(21)
@RequiresApi(21)
class MediaMetadataCompatApi21 {
  public static Object createFromParcel(Parcel paramParcel) {
    return MediaMetadata.CREATOR.createFromParcel(paramParcel);
  }
  
  public static Bitmap getBitmap(Object paramObject, String paramString) {
    return ((MediaMetadata)paramObject).getBitmap(paramString);
  }
  
  public static long getLong(Object paramObject, String paramString) {
    return ((MediaMetadata)paramObject).getLong(paramString);
  }
  
  public static Object getRating(Object paramObject, String paramString) {
    return ((MediaMetadata)paramObject).getRating(paramString);
  }
  
  public static CharSequence getText(Object paramObject, String paramString) {
    return ((MediaMetadata)paramObject).getText(paramString);
  }
  
  public static Set<String> keySet(Object paramObject) {
    return ((MediaMetadata)paramObject).keySet();
  }
  
  public static void writeToParcel(Object paramObject, Parcel paramParcel, int paramInt) {
    ((MediaMetadata)paramObject).writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaMetadataCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */