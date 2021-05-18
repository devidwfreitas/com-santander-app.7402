package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.os.CancellationSignal;
import android.support.v4.os.OperationCanceledException;

class ContentResolverCompat$ContentResolverCompatImplJB extends ContentResolverCompat$ContentResolverCompatImplBase {
  public Cursor query(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, CancellationSignal paramCancellationSignal) {
    if (paramCancellationSignal != null)
      try {
        Object object = paramCancellationSignal.getCancellationSignalObject();
        return ContentResolverCompatJellybean.query(paramContentResolver, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, object);
      } catch (Exception exception) {
        if (ContentResolverCompatJellybean.isFrameworkOperationCanceledException(exception))
          throw new OperationCanceledException(); 
        throw exception;
      }  
    paramCancellationSignal = null;
    return ContentResolverCompatJellybean.query((ContentResolver)exception, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramCancellationSignal);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\ContentResolverCompat$ContentResolverCompatImplJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */