package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.text.TextUtils;

public final class MediaDescriptionCompat implements Parcelable {
  public static final long BT_FOLDER_TYPE_ALBUMS = 2L;
  
  public static final long BT_FOLDER_TYPE_ARTISTS = 3L;
  
  public static final long BT_FOLDER_TYPE_GENRES = 4L;
  
  public static final long BT_FOLDER_TYPE_MIXED = 0L;
  
  public static final long BT_FOLDER_TYPE_PLAYLISTS = 5L;
  
  public static final long BT_FOLDER_TYPE_TITLES = 1L;
  
  public static final long BT_FOLDER_TYPE_YEARS = 6L;
  
  public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new MediaDescriptionCompat$1();
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
  
  public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
  
  private final CharSequence mDescription;
  
  private Object mDescriptionObj;
  
  private final Bundle mExtras;
  
  private final Bitmap mIcon;
  
  private final Uri mIconUri;
  
  private final String mMediaId;
  
  private final Uri mMediaUri;
  
  private final CharSequence mSubtitle;
  
  private final CharSequence mTitle;
  
  MediaDescriptionCompat(Parcel paramParcel) {
    this.mMediaId = paramParcel.readString();
    this.mTitle = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel);
    this.mSubtitle = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel);
    this.mDescription = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel);
    this.mIcon = (Bitmap)paramParcel.readParcelable(null);
    this.mIconUri = (Uri)paramParcel.readParcelable(null);
    this.mExtras = paramParcel.readBundle();
    this.mMediaUri = (Uri)paramParcel.readParcelable(null);
  }
  
  MediaDescriptionCompat(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri1, Bundle paramBundle, Uri paramUri2) {
    this.mMediaId = paramString;
    this.mTitle = paramCharSequence1;
    this.mSubtitle = paramCharSequence2;
    this.mDescription = paramCharSequence3;
    this.mIcon = paramBitmap;
    this.mIconUri = paramUri1;
    this.mExtras = paramBundle;
    this.mMediaUri = paramUri2;
  }
  
  public static MediaDescriptionCompat fromMediaDescription(Object paramObject) {
    Uri uri;
    if (paramObject == null || Build.VERSION.SDK_INT < 21)
      return null; 
    MediaDescriptionCompat$Builder mediaDescriptionCompat$Builder = new MediaDescriptionCompat$Builder();
    mediaDescriptionCompat$Builder.setMediaId(MediaDescriptionCompatApi21.getMediaId(paramObject));
    mediaDescriptionCompat$Builder.setTitle(MediaDescriptionCompatApi21.getTitle(paramObject));
    mediaDescriptionCompat$Builder.setSubtitle(MediaDescriptionCompatApi21.getSubtitle(paramObject));
    mediaDescriptionCompat$Builder.setDescription(MediaDescriptionCompatApi21.getDescription(paramObject));
    mediaDescriptionCompat$Builder.setIconBitmap(MediaDescriptionCompatApi21.getIconBitmap(paramObject));
    mediaDescriptionCompat$Builder.setIconUri(MediaDescriptionCompatApi21.getIconUri(paramObject));
    Bundle bundle = MediaDescriptionCompatApi21.getExtras(paramObject);
    if (bundle == null) {
      uri = null;
    } else {
      uri = (Uri)bundle.getParcelable("android.support.v4.media.description.MEDIA_URI");
    } 
    if (uri != null)
      if (bundle.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && bundle.size() == 2) {
        bundle = null;
      } else {
        bundle.remove("android.support.v4.media.description.MEDIA_URI");
        bundle.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
      }  
    mediaDescriptionCompat$Builder.setExtras(bundle);
    if (uri != null) {
      mediaDescriptionCompat$Builder.setMediaUri(uri);
      MediaDescriptionCompat mediaDescriptionCompat1 = mediaDescriptionCompat$Builder.build();
      mediaDescriptionCompat1.mDescriptionObj = paramObject;
      return mediaDescriptionCompat1;
    } 
    if (Build.VERSION.SDK_INT >= 23)
      mediaDescriptionCompat$Builder.setMediaUri(MediaDescriptionCompatApi23.getMediaUri(paramObject)); 
    MediaDescriptionCompat mediaDescriptionCompat = mediaDescriptionCompat$Builder.build();
    mediaDescriptionCompat.mDescriptionObj = paramObject;
    return mediaDescriptionCompat;
  }
  
  public int describeContents() {
    return 0;
  }
  
  @Nullable
  public CharSequence getDescription() {
    return this.mDescription;
  }
  
  @Nullable
  public Bundle getExtras() {
    return this.mExtras;
  }
  
  @Nullable
  public Bitmap getIconBitmap() {
    return this.mIcon;
  }
  
  @Nullable
  public Uri getIconUri() {
    return this.mIconUri;
  }
  
  public Object getMediaDescription() {
    if (this.mDescriptionObj != null || Build.VERSION.SDK_INT < 21)
      return this.mDescriptionObj; 
    Object object = MediaDescriptionCompatApi21$Builder.newInstance();
    MediaDescriptionCompatApi21$Builder.setMediaId(object, this.mMediaId);
    MediaDescriptionCompatApi21$Builder.setTitle(object, this.mTitle);
    MediaDescriptionCompatApi21$Builder.setSubtitle(object, this.mSubtitle);
    MediaDescriptionCompatApi21$Builder.setDescription(object, this.mDescription);
    MediaDescriptionCompatApi21$Builder.setIconBitmap(object, this.mIcon);
    MediaDescriptionCompatApi21$Builder.setIconUri(object, this.mIconUri);
    Bundle bundle2 = this.mExtras;
    Bundle bundle1 = bundle2;
    if (Build.VERSION.SDK_INT < 23) {
      bundle1 = bundle2;
      if (this.mMediaUri != null) {
        bundle1 = bundle2;
        if (bundle2 == null) {
          bundle1 = new Bundle();
          bundle1.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
        } 
        bundle1.putParcelable("android.support.v4.media.description.MEDIA_URI", (Parcelable)this.mMediaUri);
      } 
    } 
    MediaDescriptionCompatApi21$Builder.setExtras(object, bundle1);
    if (Build.VERSION.SDK_INT >= 23)
      MediaDescriptionCompatApi23$Builder.setMediaUri(object, this.mMediaUri); 
    this.mDescriptionObj = MediaDescriptionCompatApi21$Builder.build(object);
    return this.mDescriptionObj;
  }
  
  @Nullable
  public String getMediaId() {
    return this.mMediaId;
  }
  
  @Nullable
  public Uri getMediaUri() {
    return this.mMediaUri;
  }
  
  @Nullable
  public CharSequence getSubtitle() {
    return this.mSubtitle;
  }
  
  @Nullable
  public CharSequence getTitle() {
    return this.mTitle;
  }
  
  public String toString() {
    return this.mTitle + ", " + this.mSubtitle + ", " + this.mDescription;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    if (Build.VERSION.SDK_INT < 21) {
      paramParcel.writeString(this.mMediaId);
      TextUtils.writeToParcel(this.mTitle, paramParcel, paramInt);
      TextUtils.writeToParcel(this.mSubtitle, paramParcel, paramInt);
      TextUtils.writeToParcel(this.mDescription, paramParcel, paramInt);
      paramParcel.writeParcelable((Parcelable)this.mIcon, paramInt);
      paramParcel.writeParcelable((Parcelable)this.mIconUri, paramInt);
      paramParcel.writeBundle(this.mExtras);
      paramParcel.writeParcelable((Parcelable)this.mMediaUri, paramInt);
      return;
    } 
    MediaDescriptionCompatApi21.writeToParcel(getMediaDescription(), paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaDescriptionCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */