package android.support.v4.content;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

class FileProvider$SimplePathStrategy implements FileProvider$PathStrategy {
  private final String mAuthority;
  
  private final HashMap<String, File> mRoots = new HashMap<String, File>();
  
  public FileProvider$SimplePathStrategy(String paramString) {
    this.mAuthority = paramString;
  }
  
  public void addRoot(String paramString, File paramFile) {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("Name must not be empty"); 
    try {
      File file = paramFile.getCanonicalFile();
      this.mRoots.put(paramString, file);
      return;
    } catch (IOException iOException) {
      throw new IllegalArgumentException("Failed to resolve canonical path for " + paramFile, iOException);
    } 
  }
  
  public File getFileForUri(Uri paramUri) {
    File file3;
    String str2 = paramUri.getEncodedPath();
    int i = str2.indexOf('/', 1);
    String str1 = Uri.decode(str2.substring(1, i));
    str2 = Uri.decode(str2.substring(i + 1));
    File file2 = this.mRoots.get(str1);
    if (file2 == null)
      throw new IllegalArgumentException("Unable to find configured root for " + paramUri); 
    File file1 = new File(file2, str2);
    try {
      file3 = file1.getCanonicalFile();
      if (!file3.getPath().startsWith(file2.getPath()))
        throw new SecurityException("Resolved path jumped beyond configured root"); 
    } catch (IOException iOException) {
      throw new IllegalArgumentException("Failed to resolve canonical path for " + file1);
    } 
    return file3;
  }
  
  public Uri getUriForFile(File paramFile) {
    Object object;
    try {
      String str = paramFile.getCanonicalPath();
      paramFile = null;
      Iterator<Map.Entry> iterator = this.mRoots.entrySet().iterator();
      while (true) {
        if (iterator.hasNext()) {
          Map.Entry entry = iterator.next();
          String str1 = ((File)entry.getValue()).getPath();
          if (str.startsWith(str1)) {
            Map.Entry entry1 = entry;
            if (object != null) {
              if (str1.length() > ((File)object.getValue()).getPath().length()) {
                entry1 = entry;
                continue;
              } 
            } else {
              continue;
            } 
          } 
        } else {
          if (object == null)
            throw new IllegalArgumentException("Failed to find configured root that contains " + str); 
          String str1 = ((File)object.getValue()).getPath();
          if (str1.endsWith("/")) {
            str1 = str.substring(str1.length());
            object = Uri.encode((String)object.getKey()) + '/' + Uri.encode(str1, "/");
            return (new Uri.Builder()).scheme("content").authority(this.mAuthority).encodedPath((String)object).build();
          } 
          str1 = str.substring(str1.length() + 1);
          object = Uri.encode((String)object.getKey()) + '/' + Uri.encode(str1, "/");
          return (new Uri.Builder()).scheme("content").authority(this.mAuthority).encodedPath((String)object).build();
        } 
        Object object1 = object;
        continue;
        object = SYNTHETIC_LOCAL_VARIABLE_2;
      } 
    } catch (IOException iOException) {
      throw new IllegalArgumentException("Failed to resolve canonical path for " + object);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\FileProvider$SimplePathStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */