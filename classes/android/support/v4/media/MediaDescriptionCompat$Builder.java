package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;

public final class MediaDescriptionCompat$Builder {
  private CharSequence mDescription;
  
  private Bundle mExtras;
  
  private Bitmap mIcon;
  
  private Uri mIconUri;
  
  private String mMediaId;
  
  private Uri mMediaUri;
  
  private CharSequence mSubtitle;
  
  private CharSequence mTitle;
  
  public MediaDescriptionCompat build() {
    return new MediaDescriptionCompat(this.mMediaId, this.mTitle, this.mSubtitle, this.mDescription, this.mIcon, this.mIconUri, this.mExtras, this.mMediaUri);
  }
  
  public MediaDescriptionCompat$Builder setDescription(@Nullable CharSequence paramCharSequence) {
    this.mDescription = paramCharSequence;
    return this;
  }
  
  public MediaDescriptionCompat$Builder setExtras(@Nullable Bundle paramBundle) {
    this.mExtras = paramBundle;
    return this;
  }
  
  public MediaDescriptionCompat$Builder setIconBitmap(@Nullable Bitmap paramBitmap) {
    this.mIcon = paramBitmap;
    return this;
  }
  
  public MediaDescriptionCompat$Builder setIconUri(@Nullable Uri paramUri) {
    this.mIconUri = paramUri;
    return this;
  }
  
  public MediaDescriptionCompat$Builder setMediaId(@Nullable String paramString) {
    this.mMediaId = paramString;
    return this;
  }
  
  public MediaDescriptionCompat$Builder setMediaUri(@Nullable Uri paramUri) {
    this.mMediaUri = paramUri;
    return this;
  }
  
  public MediaDescriptionCompat$Builder setSubtitle(@Nullable CharSequence paramCharSequence) {
    this.mSubtitle = paramCharSequence;
    return this;
  }
  
  public MediaDescriptionCompat$Builder setTitle(@Nullable CharSequence paramCharSequence) {
    this.mTitle = paramCharSequence;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaDescriptionCompat$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */