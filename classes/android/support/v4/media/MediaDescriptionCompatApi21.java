package android.support.v4.media;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.RequiresApi;

@TargetApi(21)
@RequiresApi(21)
class MediaDescriptionCompatApi21 {
  public static Object fromParcel(Parcel paramParcel) {
    return MediaDescription.CREATOR.createFromParcel(paramParcel);
  }
  
  public static CharSequence getDescription(Object paramObject) {
    return ((MediaDescription)paramObject).getDescription();
  }
  
  public static Bundle getExtras(Object paramObject) {
    return ((MediaDescription)paramObject).getExtras();
  }
  
  public static Bitmap getIconBitmap(Object paramObject) {
    return ((MediaDescription)paramObject).getIconBitmap();
  }
  
  public static Uri getIconUri(Object paramObject) {
    return ((MediaDescription)paramObject).getIconUri();
  }
  
  public static String getMediaId(Object paramObject) {
    return ((MediaDescription)paramObject).getMediaId();
  }
  
  public static CharSequence getSubtitle(Object paramObject) {
    return ((MediaDescription)paramObject).getSubtitle();
  }
  
  public static CharSequence getTitle(Object paramObject) {
    return ((MediaDescription)paramObject).getTitle();
  }
  
  public static void writeToParcel(Object paramObject, Parcel paramParcel, int paramInt) {
    ((MediaDescription)paramObject).writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaDescriptionCompatApi21.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */