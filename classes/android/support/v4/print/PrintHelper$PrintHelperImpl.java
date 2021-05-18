package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;

class PrintHelper$PrintHelperImpl<RealHelper extends PrintHelperKitkat> implements PrintHelper$PrintHelperVersionImpl {
  private final RealHelper mPrintHelper;
  
  protected PrintHelper$PrintHelperImpl(RealHelper paramRealHelper) {
    this.mPrintHelper = paramRealHelper;
  }
  
  public int getColorMode() {
    return this.mPrintHelper.getColorMode();
  }
  
  public int getOrientation() {
    return this.mPrintHelper.getOrientation();
  }
  
  public int getScaleMode() {
    return this.mPrintHelper.getScaleMode();
  }
  
  public void printBitmap(String paramString, Bitmap paramBitmap, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback) {
    PrintHelper$PrintHelperImpl$1 printHelper$PrintHelperImpl$1 = null;
    if (paramPrintHelper$OnPrintFinishCallback != null)
      printHelper$PrintHelperImpl$1 = new PrintHelper$PrintHelperImpl$1(this, paramPrintHelper$OnPrintFinishCallback); 
    this.mPrintHelper.printBitmap(paramString, paramBitmap, printHelper$PrintHelperImpl$1);
  }
  
  public void printBitmap(String paramString, Uri paramUri, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback) {
    PrintHelper$PrintHelperImpl$2 printHelper$PrintHelperImpl$2 = null;
    if (paramPrintHelper$OnPrintFinishCallback != null)
      printHelper$PrintHelperImpl$2 = new PrintHelper$PrintHelperImpl$2(this, paramPrintHelper$OnPrintFinishCallback); 
    this.mPrintHelper.printBitmap(paramString, paramUri, printHelper$PrintHelperImpl$2);
  }
  
  public void setColorMode(int paramInt) {
    this.mPrintHelper.setColorMode(paramInt);
  }
  
  public void setOrientation(int paramInt) {
    this.mPrintHelper.setOrientation(paramInt);
  }
  
  public void setScaleMode(int paramInt) {
    this.mPrintHelper.setScaleMode(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelper$PrintHelperImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */