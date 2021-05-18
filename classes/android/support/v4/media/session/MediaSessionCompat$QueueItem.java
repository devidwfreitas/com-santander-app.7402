package android.support.v4.media.session;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class MediaSessionCompat$QueueItem implements Parcelable {
  public static final Parcelable.Creator<MediaSessionCompat$QueueItem> CREATOR = new MediaSessionCompat$QueueItem$1();
  
  public static final int UNKNOWN_ID = -1;
  
  private final MediaDescriptionCompat mDescription;
  
  private final long mId;
  
  private Object mItem;
  
  MediaSessionCompat$QueueItem(Parcel paramParcel) {
    this.mDescription = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel);
    this.mId = paramParcel.readLong();
  }
  
  public MediaSessionCompat$QueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong) {
    this(null, paramMediaDescriptionCompat, paramLong);
  }
  
  private MediaSessionCompat$QueueItem(Object paramObject, MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong) {
    if (paramMediaDescriptionCompat == null)
      throw new IllegalArgumentException("Description cannot be null."); 
    if (paramLong == -1L)
      throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID"); 
    this.mDescription = paramMediaDescriptionCompat;
    this.mId = paramLong;
    this.mItem = paramObject;
  }
  
  public static MediaSessionCompat$QueueItem fromQueueItem(Object paramObject) {
    return (paramObject == null || Build.VERSION.SDK_INT < 21) ? null : new MediaSessionCompat$QueueItem(paramObject, MediaDescriptionCompat.fromMediaDescription(MediaSessionCompatApi21$QueueItem.getDescription(paramObject)), MediaSessionCompatApi21$QueueItem.getQueueId(paramObject));
  }
  
  public static List<MediaSessionCompat$QueueItem> fromQueueItemList(List<?> paramList) {
    if (paramList == null || Build.VERSION.SDK_INT < 21)
      return null; 
    ArrayList<?> arrayList = new ArrayList();
    Iterator<?> iterator = paramList.iterator();
    while (true) {
      paramList = arrayList;
      if (iterator.hasNext()) {
        arrayList.add(fromQueueItem(iterator.next()));
        continue;
      } 
      return (List)paramList;
    } 
  }
  
  @Deprecated
  public static MediaSessionCompat$QueueItem obtain(Object paramObject) {
    return fromQueueItem(paramObject);
  }
  
  public int describeContents() {
    return 0;
  }
  
  public MediaDescriptionCompat getDescription() {
    return this.mDescription;
  }
  
  public long getQueueId() {
    return this.mId;
  }
  
  public Object getQueueItem() {
    if (this.mItem != null || Build.VERSION.SDK_INT < 21)
      return this.mItem; 
    this.mItem = MediaSessionCompatApi21$QueueItem.createItem(this.mDescription.getMediaDescription(), this.mId);
    return this.mItem;
  }
  
  public String toString() {
    return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    this.mDescription.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(this.mId);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\session\MediaSessionCompat$QueueItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */