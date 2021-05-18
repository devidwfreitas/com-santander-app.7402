package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import caz;
import cba;
import cbb;

public final class ShareOpenGraphObject extends ShareOpenGraphValueContainer<ShareOpenGraphObject, cba> {
  public static final Parcelable.Creator<ShareOpenGraphObject> CREATOR = (Parcelable.Creator<ShareOpenGraphObject>)new caz();
  
  public ShareOpenGraphObject(Parcel paramParcel) {
    super(paramParcel);
  }
  
  private ShareOpenGraphObject(cba paramcba) {
    super((cbb<ShareOpenGraphObject, cba>)paramcba);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareOpenGraphObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */