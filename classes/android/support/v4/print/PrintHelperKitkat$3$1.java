package android.support.v4.print;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import java.io.FileNotFoundException;

class PrintHelperKitkat$3$1 extends AsyncTask<Uri, Boolean, Bitmap> {
  protected Bitmap doInBackground(Uri... paramVarArgs) {
    try {
      return PrintHelperKitkat.access$400(this.this$1.this$0, imageFile, 3500);
    } catch (FileNotFoundException fileNotFoundException) {
      return null;
    } 
  }
  
  protected void onCancelled(Bitmap paramBitmap) {
    layoutResultCallback.onLayoutCancelled();
    PrintHelperKitkat$3.this.mLoadBitmap = null;
  }
  
  protected void onPostExecute(Bitmap paramBitmap) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial onPostExecute : (Ljava/lang/Object;)V
    //   7: aload_1
    //   8: astore_3
    //   9: aload_1
    //   10: ifnull -> 110
    //   13: aload_0
    //   14: getfield this$1 : Landroid/support/v4/print/PrintHelperKitkat$3;
    //   17: getfield this$0 : Landroid/support/v4/print/PrintHelperKitkat;
    //   20: getfield mPrintActivityRespectsOrientation : Z
    //   23: ifeq -> 41
    //   26: aload_1
    //   27: astore_3
    //   28: aload_0
    //   29: getfield this$1 : Landroid/support/v4/print/PrintHelperKitkat$3;
    //   32: getfield this$0 : Landroid/support/v4/print/PrintHelperKitkat;
    //   35: getfield mOrientation : I
    //   38: ifne -> 110
    //   41: aload_0
    //   42: monitorenter
    //   43: aload_0
    //   44: getfield this$1 : Landroid/support/v4/print/PrintHelperKitkat$3;
    //   47: invokestatic access$500 : (Landroid/support/v4/print/PrintHelperKitkat$3;)Landroid/print/PrintAttributes;
    //   50: invokevirtual getMediaSize : ()Landroid/print/PrintAttributes$MediaSize;
    //   53: astore #4
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: astore_3
    //   59: aload #4
    //   61: ifnull -> 110
    //   64: aload_1
    //   65: astore_3
    //   66: aload #4
    //   68: invokevirtual isPortrait : ()Z
    //   71: aload_1
    //   72: invokestatic access$600 : (Landroid/graphics/Bitmap;)Z
    //   75: if_icmpeq -> 110
    //   78: new android/graphics/Matrix
    //   81: dup
    //   82: invokespecial <init> : ()V
    //   85: astore_3
    //   86: aload_3
    //   87: ldc 90.0
    //   89: invokevirtual postRotate : (F)Z
    //   92: pop
    //   93: aload_1
    //   94: iconst_0
    //   95: iconst_0
    //   96: aload_1
    //   97: invokevirtual getWidth : ()I
    //   100: aload_1
    //   101: invokevirtual getHeight : ()I
    //   104: aload_3
    //   105: iconst_1
    //   106: invokestatic createBitmap : (Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   109: astore_3
    //   110: aload_0
    //   111: getfield this$1 : Landroid/support/v4/print/PrintHelperKitkat$3;
    //   114: aload_3
    //   115: putfield mBitmap : Landroid/graphics/Bitmap;
    //   118: aload_3
    //   119: ifnull -> 190
    //   122: new android/print/PrintDocumentInfo$Builder
    //   125: dup
    //   126: aload_0
    //   127: getfield this$1 : Landroid/support/v4/print/PrintHelperKitkat$3;
    //   130: getfield val$jobName : Ljava/lang/String;
    //   133: invokespecial <init> : (Ljava/lang/String;)V
    //   136: iconst_1
    //   137: invokevirtual setContentType : (I)Landroid/print/PrintDocumentInfo$Builder;
    //   140: iconst_1
    //   141: invokevirtual setPageCount : (I)Landroid/print/PrintDocumentInfo$Builder;
    //   144: invokevirtual build : ()Landroid/print/PrintDocumentInfo;
    //   147: astore_1
    //   148: aload_0
    //   149: getfield val$newPrintAttributes : Landroid/print/PrintAttributes;
    //   152: aload_0
    //   153: getfield val$oldPrintAttributes : Landroid/print/PrintAttributes;
    //   156: invokevirtual equals : (Ljava/lang/Object;)Z
    //   159: ifne -> 185
    //   162: aload_0
    //   163: getfield val$layoutResultCallback : Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    //   166: aload_1
    //   167: iload_2
    //   168: invokevirtual onLayoutFinished : (Landroid/print/PrintDocumentInfo;Z)V
    //   171: aload_0
    //   172: getfield this$1 : Landroid/support/v4/print/PrintHelperKitkat$3;
    //   175: aconst_null
    //   176: putfield mLoadBitmap : Landroid/os/AsyncTask;
    //   179: return
    //   180: astore_1
    //   181: aload_0
    //   182: monitorexit
    //   183: aload_1
    //   184: athrow
    //   185: iconst_0
    //   186: istore_2
    //   187: goto -> 162
    //   190: aload_0
    //   191: getfield val$layoutResultCallback : Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    //   194: aconst_null
    //   195: invokevirtual onLayoutFailed : (Ljava/lang/CharSequence;)V
    //   198: goto -> 171
    // Exception table:
    //   from	to	target	type
    //   43	57	180	finally
    //   181	183	180	finally
  }
  
  protected void onPreExecute() {
    cancellationSignal.setOnCancelListener(new PrintHelperKitkat$3$1$1(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelperKitkat$3$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */