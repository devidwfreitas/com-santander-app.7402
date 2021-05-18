package android.support.v4.print;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;

class PrintHelperKitkat$1 extends PrintDocumentAdapter {
  private PrintAttributes mAttributes;
  
  public void onFinish() {
    if (callback != null)
      callback.onFinish(); 
  }
  
  public void onLayout(PrintAttributes paramPrintAttributes1, PrintAttributes paramPrintAttributes2, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.LayoutResultCallback paramLayoutResultCallback, Bundle paramBundle) {
    boolean bool = true;
    this.mAttributes = paramPrintAttributes2;
    PrintDocumentInfo printDocumentInfo = (new PrintDocumentInfo.Builder(jobName)).setContentType(1).setPageCount(1).build();
    if (paramPrintAttributes2.equals(paramPrintAttributes1))
      bool = false; 
    paramLayoutResultCallback.onLayoutFinished(printDocumentInfo, bool);
  }
  
  public void onWrite(PageRange[] paramArrayOfPageRange, ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback) {
    PrintHelperKitkat.access$000(PrintHelperKitkat.this, this.mAttributes, fittingMode, bitmap, paramParcelFileDescriptor, paramCancellationSignal, paramWriteResultCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelperKitkat$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */