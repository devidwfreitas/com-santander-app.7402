package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cal;
import cbd;
import cbe;
import cbf;
import java.util.Collections;
import java.util.List;

public final class SharePhotoContent extends ShareContent<SharePhotoContent, cbf> {
  public static final Parcelable.Creator<SharePhotoContent> CREATOR = (Parcelable.Creator<SharePhotoContent>)new cbe();
  
  private final List<SharePhoto> a;
  
  public SharePhotoContent(Parcel paramParcel) {
    super(paramParcel);
    this.a = Collections.unmodifiableList(cbd.c(paramParcel));
  }
  
  private SharePhotoContent(cbf paramcbf) {
    super((cal)paramcbf);
    this.a = Collections.unmodifiableList(cbf.a(paramcbf));
  }
  
  @Nullable
  public List<SharePhoto> a() {
    return this.a;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    cbd.b(paramParcel, paramInt, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\SharePhotoContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */