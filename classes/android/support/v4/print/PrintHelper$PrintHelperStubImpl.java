package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;

final class PrintHelper$PrintHelperStubImpl implements PrintHelper$PrintHelperVersionImpl {
  int mColorMode = 2;
  
  int mOrientation = 1;
  
  int mScaleMode = 2;
  
  private PrintHelper$PrintHelperStubImpl() {}
  
  public int getColorMode() {
    return this.mColorMode;
  }
  
  public int getOrientation() {
    return this.mOrientation;
  }
  
  public int getScaleMode() {
    return this.mScaleMode;
  }
  
  public void printBitmap(String paramString, Bitmap paramBitmap, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback) {}
  
  public void printBitmap(String paramString, Uri paramUri, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback) {}
  
  public void setColorMode(int paramInt) {
    this.mColorMode = paramInt;
  }
  
  public void setOrientation(int paramInt) {
    this.mOrientation = paramInt;
  }
  
  public void setScaleMode(int paramInt) {
    this.mScaleMode = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelper$PrintHelperStubImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */