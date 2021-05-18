package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.support.v4.os.CancellationSignal;

public final class ContentResolverCompat {
  private static final ContentResolverCompat$ContentResolverCompatImpl IMPL = new ContentResolverCompat$ContentResolverCompatImplBase();
  
  public static Cursor query(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, CancellationSignal paramCancellationSignal) {
    return IMPL.query(paramContentResolver, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramCancellationSignal);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 16) {
      IMPL = new ContentResolverCompat$ContentResolverCompatImplJB();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\ContentResolverCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */