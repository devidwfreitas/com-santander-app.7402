package com.google.android.gms.common.images;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import crq;
import crv;
import csz;
import java.util.ArrayList;

@KeepName
public final class ImageManager$ImageReceiver extends ResultReceiver {
  private final Uri b;
  
  private final ArrayList<crv> c;
  
  public ImageManager$ImageReceiver(ImageManager paramImageManager, Uri paramUri) {
    super(new Handler(Looper.getMainLooper()));
    this.b = paramUri;
    this.c = new ArrayList<crv>();
  }
  
  public void a() {
    Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
    intent.putExtra("com.google.android.gms.extras.uri", (Parcelable)this.b);
    intent.putExtra("com.google.android.gms.extras.resultReceiver", (Parcelable)this);
    intent.putExtra("com.google.android.gms.extras.priority", 3);
    ImageManager.b(this.a).sendBroadcast(intent);
  }
  
  public void a(crv paramcrv) {
    csz.a("ImageReceiver.addImageRequest() must be called in the main thread");
    this.c.add(paramcrv);
  }
  
  public void b(crv paramcrv) {
    csz.a("ImageReceiver.removeImageRequest() must be called in the main thread");
    this.c.remove(paramcrv);
  }
  
  public void onReceiveResult(int paramInt, Bundle paramBundle) {
    ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor)paramBundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
    ImageManager.f(this.a).execute((Runnable)new crq(this.a, this.b, parcelFileDescriptor));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\images\ImageManager$ImageReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */