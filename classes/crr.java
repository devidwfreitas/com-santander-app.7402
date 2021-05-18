import android.graphics.Bitmap;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;

public final class crr implements Runnable {
  private final crv b;
  
  public crr(ImageManager paramImageManager, crv paramcrv) {
    this.b = paramcrv;
  }
  
  public void run() {
    csz.a("LoadImageRunnable must be executed on the main thread");
    ImageManager.ImageReceiver imageReceiver1 = (ImageManager.ImageReceiver)ImageManager.a(this.a).get(this.b);
    if (imageReceiver1 != null) {
      ImageManager.a(this.a).remove(this.b);
      imageReceiver1.b(this.b);
    } 
    crw crw = this.b.a;
    if (crw.a == null) {
      this.b.a(ImageManager.b(this.a), ImageManager.c(this.a), true);
      return;
    } 
    Bitmap bitmap = ImageManager.a(this.a, crw);
    if (bitmap != null) {
      this.b.a(ImageManager.b(this.a), bitmap, true);
      return;
    } 
    Long long_ = (Long)ImageManager.d(this.a).get(crw.a);
    if (long_ != null) {
      if (SystemClock.elapsedRealtime() - long_.longValue() < 3600000L) {
        this.b.a(ImageManager.b(this.a), ImageManager.c(this.a), true);
        return;
      } 
      ImageManager.d(this.a).remove(crw.a);
    } 
    this.b.a(ImageManager.b(this.a), ImageManager.c(this.a));
    ImageManager.ImageReceiver imageReceiver2 = (ImageManager.ImageReceiver)ImageManager.e(this.a).get(crw.a);
    null = imageReceiver2;
    if (imageReceiver2 == null) {
      null = new ImageManager.ImageReceiver(this.a, crw.a);
      ImageManager.e(this.a).put(crw.a, null);
    } 
    null.a(this.b);
    if (!(this.b instanceof cry))
      ImageManager.a(this.a).put(this.b, null); 
    synchronized (ImageManager.a()) {
      if (!ImageManager.b().contains(crw.a)) {
        ImageManager.b().add(crw.a);
        null.a();
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */