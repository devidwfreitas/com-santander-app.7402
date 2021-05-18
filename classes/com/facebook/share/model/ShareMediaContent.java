package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cal;
import cas;
import cat;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class ShareMediaContent extends ShareContent<ShareMediaContent, cat> {
  public static final Parcelable.Creator<ShareMediaContent> CREATOR = (Parcelable.Creator<ShareMediaContent>)new cas();
  
  private final List<ShareMedia> a;
  
  public ShareMediaContent(Parcel paramParcel) {
    super(paramParcel);
    this.a = Arrays.asList((ShareMedia[])paramParcel.readParcelableArray(ShareMedia.class.getClassLoader()));
  }
  
  private ShareMediaContent(cat paramcat) {
    super((cal)paramcat);
    this.a = Collections.unmodifiableList(cat.a(paramcat));
  }
  
  @Nullable
  public List<ShareMedia> a() {
    return this.a;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelableArray((Parcelable[])this.a.toArray(), paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareMediaContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */