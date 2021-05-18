package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;

public final class PrintHelper {
  public static final int COLOR_MODE_COLOR = 2;
  
  public static final int COLOR_MODE_MONOCHROME = 1;
  
  public static final int ORIENTATION_LANDSCAPE = 1;
  
  public static final int ORIENTATION_PORTRAIT = 2;
  
  public static final int SCALE_MODE_FILL = 2;
  
  public static final int SCALE_MODE_FIT = 1;
  
  PrintHelper$PrintHelperVersionImpl mImpl;
  
  public PrintHelper(Context paramContext) {
    if (systemSupportsPrint()) {
      if (Build.VERSION.SDK_INT >= 24) {
        this.mImpl = new PrintHelper$PrintHelperApi24Impl(paramContext);
        return;
      } 
      if (Build.VERSION.SDK_INT >= 23) {
        this.mImpl = new PrintHelper$PrintHelperApi23Impl(paramContext);
        return;
      } 
      if (Build.VERSION.SDK_INT >= 20) {
        this.mImpl = new PrintHelper$PrintHelperApi20Impl(paramContext);
        return;
      } 
      this.mImpl = new PrintHelper$PrintHelperKitkatImpl(paramContext);
      return;
    } 
    this.mImpl = new PrintHelper$PrintHelperStubImpl(null);
  }
  
  public static boolean systemSupportsPrint() {
    return (Build.VERSION.SDK_INT >= 19);
  }
  
  public int getColorMode() {
    return this.mImpl.getColorMode();
  }
  
  public int getOrientation() {
    return this.mImpl.getOrientation();
  }
  
  public int getScaleMode() {
    return this.mImpl.getScaleMode();
  }
  
  public void printBitmap(String paramString, Bitmap paramBitmap) {
    this.mImpl.printBitmap(paramString, paramBitmap, (PrintHelper$OnPrintFinishCallback)null);
  }
  
  public void printBitmap(String paramString, Bitmap paramBitmap, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback) {
    this.mImpl.printBitmap(paramString, paramBitmap, paramPrintHelper$OnPrintFinishCallback);
  }
  
  public void printBitmap(String paramString, Uri paramUri) {
    this.mImpl.printBitmap(paramString, paramUri, (PrintHelper$OnPrintFinishCallback)null);
  }
  
  public void printBitmap(String paramString, Uri paramUri, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback) {
    this.mImpl.printBitmap(paramString, paramUri, paramPrintHelper$OnPrintFinishCallback);
  }
  
  public void setColorMode(int paramInt) {
    this.mImpl.setColorMode(paramInt);
  }
  
  public void setOrientation(int paramInt) {
    this.mImpl.setOrientation(paramInt);
  }
  
  public void setScaleMode(int paramInt) {
    this.mImpl.setScaleMode(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */