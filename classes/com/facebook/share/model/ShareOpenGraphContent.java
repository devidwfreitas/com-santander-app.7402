package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cal;
import caw;
import cax;
import cay;

public final class ShareOpenGraphContent extends ShareContent<ShareOpenGraphContent, cay> {
  public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = (Parcelable.Creator<ShareOpenGraphContent>)new cax();
  
  private final ShareOpenGraphAction a;
  
  private final String b;
  
  public ShareOpenGraphContent(Parcel paramParcel) {
    super(paramParcel);
    this.a = (new caw()).a(paramParcel).b();
    this.b = paramParcel.readString();
  }
  
  private ShareOpenGraphContent(cay paramcay) {
    super((cal)paramcay);
    this.a = cay.a(paramcay);
    this.b = cay.b(paramcay);
  }
  
  @Nullable
  public ShareOpenGraphAction a() {
    return this.a;
  }
  
  @Nullable
  public String b() {
    return this.b;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(this.a, 0);
    paramParcel.writeString(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareOpenGraphContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */