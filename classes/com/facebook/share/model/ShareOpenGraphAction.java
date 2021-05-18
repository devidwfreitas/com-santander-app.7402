package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cav;
import caw;
import cbb;

public final class ShareOpenGraphAction extends ShareOpenGraphValueContainer<ShareOpenGraphAction, caw> {
  public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = (Parcelable.Creator<ShareOpenGraphAction>)new cav();
  
  public ShareOpenGraphAction(Parcel paramParcel) {
    super(paramParcel);
  }
  
  private ShareOpenGraphAction(caw paramcaw) {
    super((cbb<ShareOpenGraphAction, caw>)paramcaw);
  }
  
  @Nullable
  public String a() {
    return j("og:type");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareOpenGraphAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */