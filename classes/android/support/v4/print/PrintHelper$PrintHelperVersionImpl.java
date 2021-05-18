package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;

interface PrintHelper$PrintHelperVersionImpl {
  int getColorMode();
  
  int getOrientation();
  
  int getScaleMode();
  
  void printBitmap(String paramString, Bitmap paramBitmap, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback);
  
  void printBitmap(String paramString, Uri paramUri, PrintHelper$OnPrintFinishCallback paramPrintHelper$OnPrintFinishCallback);
  
  void setColorMode(int paramInt);
  
  void setOrientation(int paramInt);
  
  void setScaleMode(int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelper$PrintHelperVersionImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */