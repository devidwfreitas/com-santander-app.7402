package android.support.v4.content;

import android.net.Uri;
import java.io.File;

interface FileProvider$PathStrategy {
  File getFileForUri(Uri paramUri);
  
  Uri getUriForFile(File paramFile);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\FileProvider$PathStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */