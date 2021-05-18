package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import caq;
import car;
import cbc;
import cbd;

public final class SharePhoto extends ShareMedia {
  public static final Parcelable.Creator<SharePhoto> CREATOR = (Parcelable.Creator<SharePhoto>)new cbc();
  
  private final Bitmap a;
  
  private final Uri b;
  
  private final boolean c;
  
  private final String d;
  
  public SharePhoto(Parcel paramParcel) {
    super(paramParcel);
    boolean bool;
    this.a = (Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader());
    this.b = (Uri)paramParcel.readParcelable(Uri.class.getClassLoader());
    if (paramParcel.readByte() != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.c = bool;
    this.d = paramParcel.readString();
  }
  
  private SharePhoto(cbd paramcbd) {
    super((caq)paramcbd);
    this.a = cbd.a(paramcbd);
    this.b = cbd.b(paramcbd);
    this.c = cbd.c(paramcbd);
    this.d = cbd.d(paramcbd);
  }
  
  public car b() {
    return car.PHOTO;
  }
  
  @Nullable
  public Bitmap c() {
    return this.a;
  }
  
  @Nullable
  public Uri d() {
    return this.b;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public boolean e() {
    return this.c;
  }
  
  public String f() {
    return this.d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    boolean bool = false;
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable((Parcelable)this.a, 0);
    paramParcel.writeParcelable((Parcelable)this.b, 0);
    paramInt = bool;
    if (this.c)
      paramInt = 1; 
    paramParcel.writeByte((byte)paramInt);
    paramParcel.writeString(this.d);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\SharePhoto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */