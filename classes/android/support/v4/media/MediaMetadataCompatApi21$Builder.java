package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.Rating;

public class MediaMetadataCompatApi21$Builder {
  public static Object build(Object paramObject) {
    return ((MediaMetadata.Builder)paramObject).build();
  }
  
  public static Object newInstance() {
    return new MediaMetadata.Builder();
  }
  
  public static void putBitmap(Object paramObject, String paramString, Bitmap paramBitmap) {
    ((MediaMetadata.Builder)paramObject).putBitmap(paramString, paramBitmap);
  }
  
  public static void putLong(Object paramObject, String paramString, long paramLong) {
    ((MediaMetadata.Builder)paramObject).putLong(paramString, paramLong);
  }
  
  public static void putRating(Object paramObject1, String paramString, Object paramObject2) {
    ((MediaMetadata.Builder)paramObject1).putRating(paramString, (Rating)paramObject2);
  }
  
  public static void putString(Object paramObject, String paramString1, String paramString2) {
    ((MediaMetadata.Builder)paramObject).putString(paramString1, paramString2);
  }
  
  public static void putText(Object paramObject, String paramString, CharSequence paramCharSequence) {
    ((MediaMetadata.Builder)paramObject).putText(paramString, paramCharSequence);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaMetadataCompatApi21$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */