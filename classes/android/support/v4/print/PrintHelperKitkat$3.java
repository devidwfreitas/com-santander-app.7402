package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;

class PrintHelperKitkat$3 extends PrintDocumentAdapter {
  private PrintAttributes mAttributes;
  
  Bitmap mBitmap = null;
  
  AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;
  
  private void cancelLoad() {
    synchronized (PrintHelperKitkat.access$700(PrintHelperKitkat.this)) {
      if (PrintHelperKitkat.this.mDecodeOptions != null) {
        PrintHelperKitkat.this.mDecodeOptions.requestCancelDecode();
        PrintHelperKitkat.this.mDecodeOptions = null;
      } 
      return;
    } 
  }
  
  public void onFinish() {
    super.onFinish();
    cancelLoad();
    if (this.mLoadBitmap != null)
      this.mLoadBitmap.cancel(true); 
    if (callback != null)
      callback.onFinish(); 
    if (this.mBitmap != null) {
      this.mBitmap.recycle();
      this.mBitmap = null;
    } 
  }
  
  public void onLayout(PrintAttributes paramPrintAttributes1, PrintAttributes paramPrintAttributes2, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.LayoutResultCallback paramLayoutResultCallback, Bundle paramBundle) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: aload_2
    //   7: putfield mAttributes : Landroid/print/PrintAttributes;
    //   10: aload_0
    //   11: monitorexit
    //   12: aload_3
    //   13: invokevirtual isCanceled : ()Z
    //   16: ifeq -> 30
    //   19: aload #4
    //   21: invokevirtual onLayoutCancelled : ()V
    //   24: return
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    //   30: aload_0
    //   31: getfield mBitmap : Landroid/graphics/Bitmap;
    //   34: ifnull -> 83
    //   37: new android/print/PrintDocumentInfo$Builder
    //   40: dup
    //   41: aload_0
    //   42: getfield val$jobName : Ljava/lang/String;
    //   45: invokespecial <init> : (Ljava/lang/String;)V
    //   48: iconst_1
    //   49: invokevirtual setContentType : (I)Landroid/print/PrintDocumentInfo$Builder;
    //   52: iconst_1
    //   53: invokevirtual setPageCount : (I)Landroid/print/PrintDocumentInfo$Builder;
    //   56: invokevirtual build : ()Landroid/print/PrintDocumentInfo;
    //   59: astore_3
    //   60: aload_2
    //   61: aload_1
    //   62: invokevirtual equals : (Ljava/lang/Object;)Z
    //   65: ifne -> 77
    //   68: aload #4
    //   70: aload_3
    //   71: iload #6
    //   73: invokevirtual onLayoutFinished : (Landroid/print/PrintDocumentInfo;Z)V
    //   76: return
    //   77: iconst_0
    //   78: istore #6
    //   80: goto -> 68
    //   83: aload_0
    //   84: new android/support/v4/print/PrintHelperKitkat$3$1
    //   87: dup
    //   88: aload_0
    //   89: aload_3
    //   90: aload_2
    //   91: aload_1
    //   92: aload #4
    //   94: invokespecial <init> : (Landroid/support/v4/print/PrintHelperKitkat$3;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    //   97: iconst_0
    //   98: anewarray android/net/Uri
    //   101: invokevirtual execute : ([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   104: putfield mLoadBitmap : Landroid/os/AsyncTask;
    //   107: return
    // Exception table:
    //   from	to	target	type
    //   5	12	25	finally
    //   26	28	25	finally
  }
  
  public void onWrite(PageRange[] paramArrayOfPageRange, ParcelFileDescriptor paramParcelFileDescriptor, CancellationSignal paramCancellationSignal, PrintDocumentAdapter.WriteResultCallback paramWriteResultCallback) {
    PrintHelperKitkat.access$000(PrintHelperKitkat.this, this.mAttributes, fittingMode, this.mBitmap, paramParcelFileDescriptor, paramCancellationSignal, paramWriteResultCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelperKitkat$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */