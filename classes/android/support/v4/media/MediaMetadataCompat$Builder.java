package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;

public final class MediaMetadataCompat$Builder {
  private final Bundle mBundle = new Bundle();
  
  public MediaMetadataCompat$Builder() {}
  
  public MediaMetadataCompat$Builder(MediaMetadataCompat paramMediaMetadataCompat) {}
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public MediaMetadataCompat$Builder(MediaMetadataCompat paramMediaMetadataCompat, int paramInt) {
    this(paramMediaMetadataCompat);
    for (String str : this.mBundle.keySet()) {
      Object object = this.mBundle.get(str);
      if (object != null && object instanceof Bitmap) {
        object = object;
        if (object.getHeight() > paramInt || object.getWidth() > paramInt) {
          putBitmap(str, scaleBitmap((Bitmap)object, paramInt));
          continue;
        } 
        if (Build.VERSION.SDK_INT >= 14 && (str.equals("android.media.metadata.ART") || str.equals("android.media.metadata.ALBUM_ART")))
          putBitmap(str, object.copy(object.getConfig(), false)); 
      } 
    } 
  }
  
  private Bitmap scaleBitmap(Bitmap paramBitmap, int paramInt) {
    float f = paramInt;
    f = Math.min(f / paramBitmap.getWidth(), f / paramBitmap.getHeight());
    paramInt = (int)(paramBitmap.getHeight() * f);
    return Bitmap.createScaledBitmap(paramBitmap, (int)(f * paramBitmap.getWidth()), paramInt, true);
  }
  
  public MediaMetadataCompat build() {
    return new MediaMetadataCompat(this.mBundle);
  }
  
  public MediaMetadataCompat$Builder putBitmap(String paramString, Bitmap paramBitmap) {
    if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString) && ((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 2)
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Bitmap"); 
    this.mBundle.putParcelable(paramString, (Parcelable)paramBitmap);
    return this;
  }
  
  public MediaMetadataCompat$Builder putLong(String paramString, long paramLong) {
    if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString) && ((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 0)
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a long"); 
    this.mBundle.putLong(paramString, paramLong);
    return this;
  }
  
  public MediaMetadataCompat$Builder putRating(String paramString, RatingCompat paramRatingCompat) {
    if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString) && ((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 3)
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Rating"); 
    if (Build.VERSION.SDK_INT >= 19) {
      this.mBundle.putParcelable(paramString, (Parcelable)paramRatingCompat.getRating());
      return this;
    } 
    this.mBundle.putParcelable(paramString, paramRatingCompat);
    return this;
  }
  
  public MediaMetadataCompat$Builder putString(String paramString1, String paramString2) {
    if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString1) && ((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString1)).intValue() != 1)
      throw new IllegalArgumentException("The " + paramString1 + " key cannot be used to put a String"); 
    this.mBundle.putCharSequence(paramString1, paramString2);
    return this;
  }
  
  public MediaMetadataCompat$Builder putText(String paramString, CharSequence paramCharSequence) {
    if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(paramString) && ((Integer)MediaMetadataCompat.METADATA_KEYS_TYPE.get(paramString)).intValue() != 1)
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a CharSequence"); 
    this.mBundle.putCharSequence(paramString, paramCharSequence);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaMetadataCompat$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */