package android.support.v4.print;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.IOException;

class PrintHelperKitkat$2 extends AsyncTask<Void, Void, Throwable> {
  protected Throwable doInBackground(Void... paramVarArgs) {
    try {
      if (cancellationSignal.isCanceled())
        return null; 
      PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, pdfAttributes);
      Bitmap bitmap = PrintHelperKitkat.access$100(PrintHelperKitkat.this, bitmap, pdfAttributes.getColorMode());
      boolean bool = cancellationSignal.isCanceled();
      if (!bool)
        try {
          RectF rectF;
          PdfDocument.Page page = printedPdfDocument.startPage(1);
          if (PrintHelperKitkat.this.mIsMinMarginsHandlingCorrect) {
            rectF = new RectF(page.getInfo().getContentRect());
          } else {
            PrintedPdfDocument printedPdfDocument1 = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, attributes);
            PdfDocument.Page page1 = printedPdfDocument1.startPage(1);
            rectF = new RectF(page1.getInfo().getContentRect());
            printedPdfDocument1.finishPage(page1);
            printedPdfDocument1.close();
          } 
          Matrix matrix = PrintHelperKitkat.access$200(PrintHelperKitkat.this, bitmap.getWidth(), bitmap.getHeight(), rectF, fittingMode);
          if (!PrintHelperKitkat.this.mIsMinMarginsHandlingCorrect) {
            matrix.postTranslate(rectF.left, rectF.top);
            page.getCanvas().clipRect(rectF);
          } 
          page.getCanvas().drawBitmap(bitmap, matrix, null);
        } finally {
          printedPdfDocument.close();
          ParcelFileDescriptor parcelFileDescriptor = fileDescriptor;
          if (parcelFileDescriptor != null)
            try {
              fileDescriptor.close();
            } catch (IOException iOException) {} 
          if (bitmap != bitmap)
            bitmap.recycle(); 
        }  
    } catch (Throwable null) {
      return null;
    } 
    return null;
  }
  
  protected void onPostExecute(Throwable paramThrowable) {
    if (cancellationSignal.isCanceled()) {
      writeResultCallback.onWriteCancelled();
      return;
    } 
    if (paramThrowable == null) {
      writeResultCallback.onWriteFinished(new PageRange[] { PageRange.ALL_PAGES });
      return;
    } 
    Log.e("PrintHelperKitkat", "Error writing printed content", paramThrowable);
    writeResultCallback.onWriteFailed(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\print\PrintHelperKitkat$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */