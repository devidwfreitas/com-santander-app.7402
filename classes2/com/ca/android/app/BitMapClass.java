package com.ca.android.app;

import android.graphics.Bitmap;
import android.util.Log;
import com.ca.mdo.SDK;
import org.xwalk.core.internal.XWalkGetBitmapCallbackInternal;

public class BitMapClass extends XWalkGetBitmapCallbackInternal {
  public int duration;
  
  public String url;
  
  public BitMapClass(String paramString, int paramInt) {
    this.url = paramString;
    this.duration = paramInt;
  }
  
  public void onFinishGetBitmap(Bitmap paramBitmap, int paramInt) {
    Log.d("CA MAA", "In CrossWalk callback : Got the bitmap");
    if (paramBitmap != null) {
      SDK.getAgent().viewLoaded(this.url, this.duration, paramBitmap);
      return;
    } 
    SDK.getAgent().viewLoaded(this.url, this.duration);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\BitMapClass.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */