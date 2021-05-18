import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

public final class crt implements Runnable {
  private final Uri b;
  
  private final Bitmap c;
  
  private final CountDownLatch d;
  
  private boolean e;
  
  public crt(ImageManager paramImageManager, Uri paramUri, Bitmap paramBitmap, boolean paramBoolean, CountDownLatch paramCountDownLatch) {
    this.b = paramUri;
    this.c = paramBitmap;
    this.e = paramBoolean;
    this.d = paramCountDownLatch;
  }
  
  private void a(ImageManager.ImageReceiver paramImageReceiver, boolean paramBoolean) {
    ArrayList<crv> arrayList = ImageManager.ImageReceiver.a(paramImageReceiver);
    int j = arrayList.size();
    for (int i = 0; i < j; i++) {
      crv crv = arrayList.get(i);
      if (paramBoolean) {
        crv.a(ImageManager.b(this.a), this.c, false);
      } else {
        ImageManager.d(this.a).put(this.b, Long.valueOf(SystemClock.elapsedRealtime()));
        crv.a(ImageManager.b(this.a), ImageManager.c(this.a), false);
      } 
      if (!(crv instanceof cry))
        ImageManager.a(this.a).remove(crv); 
    } 
  }
  
  public void run() {
    boolean bool;
    csz.a("OnBitmapLoadedRunnable must be executed in the main thread");
    if (this.c != null) {
      bool = true;
    } else {
      bool = false;
    } 
    if (ImageManager.h(this.a) != null) {
      if (this.e) {
        ImageManager.h(this.a).evictAll();
        System.gc();
        this.e = false;
        ImageManager.g(this.a).post(this);
        return;
      } 
      if (bool)
        ImageManager.h(this.a).put(new crw(this.b), this.c); 
    } 
    ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver)ImageManager.e(this.a).remove(this.b);
    if (imageReceiver != null)
      a(imageReceiver, bool); 
    this.d.countDown();
    synchronized (ImageManager.a()) {
      ImageManager.b().remove(this.b);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */