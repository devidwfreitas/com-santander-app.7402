package android.support.v4.media;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaBrowserCompat$MediaItem implements Parcelable {
  public static final Parcelable.Creator<MediaBrowserCompat$MediaItem> CREATOR = new MediaBrowserCompat$MediaItem$1();
  
  public static final int FLAG_BROWSABLE = 1;
  
  public static final int FLAG_PLAYABLE = 2;
  
  private final MediaDescriptionCompat mDescription;
  
  private final int mFlags;
  
  MediaBrowserCompat$MediaItem(Parcel paramParcel) {
    this.mFlags = paramParcel.readInt();
    this.mDescription = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel);
  }
  
  public MediaBrowserCompat$MediaItem(@NonNull MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {
    if (paramMediaDescriptionCompat == null)
      throw new IllegalArgumentException("description cannot be null"); 
    if (TextUtils.isEmpty(paramMediaDescriptionCompat.getMediaId()))
      throw new IllegalArgumentException("description must have a non-empty media id"); 
    this.mFlags = paramInt;
    this.mDescription = paramMediaDescriptionCompat;
  }
  
  public static MediaBrowserCompat$MediaItem fromMediaItem(Object paramObject) {
    if (paramObject == null || Build.VERSION.SDK_INT < 21)
      return null; 
    int i = MediaBrowserCompatApi21$MediaItem.getFlags(paramObject);
    return new MediaBrowserCompat$MediaItem(MediaDescriptionCompat.fromMediaDescription(MediaBrowserCompatApi21$MediaItem.getDescription(paramObject)), i);
  }
  
  public static List<MediaBrowserCompat$MediaItem> fromMediaItemList(List<?> paramList) {
    if (paramList == null || Build.VERSION.SDK_INT < 21)
      return null; 
    ArrayList<?> arrayList = new ArrayList(paramList.size());
    Iterator<?> iterator = paramList.iterator();
    while (true) {
      paramList = arrayList;
      if (iterator.hasNext()) {
        arrayList.add(fromMediaItem(iterator.next()));
        continue;
      } 
      return (List)paramList;
    } 
  }
  
  public int describeContents() {
    return 0;
  }
  
  @NonNull
  public MediaDescriptionCompat getDescription() {
    return this.mDescription;
  }
  
  public int getFlags() {
    return this.mFlags;
  }
  
  @Nullable
  public String getMediaId() {
    return this.mDescription.getMediaId();
  }
  
  public boolean isBrowsable() {
    return ((this.mFlags & 0x1) != 0);
  }
  
  public boolean isPlayable() {
    return ((this.mFlags & 0x2) != 0);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("MediaItem{");
    stringBuilder.append("mFlags=").append(this.mFlags);
    stringBuilder.append(", mDescription=").append(this.mDescription);
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.mFlags);
    this.mDescription.writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\MediaBrowserCompat$MediaItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */