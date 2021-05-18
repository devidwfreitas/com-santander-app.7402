package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

public class FileProvider extends ContentProvider {
  private static final String ATTR_NAME = "name";
  
  private static final String ATTR_PATH = "path";
  
  private static final String[] COLUMNS = new String[] { "_display_name", "_size" };
  
  private static final File DEVICE_ROOT = new File("/");
  
  private static final String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
  
  private static final String TAG_CACHE_PATH = "cache-path";
  
  private static final String TAG_EXTERNAL = "external-path";
  
  private static final String TAG_EXTERNAL_CACHE = "external-cache-path";
  
  private static final String TAG_EXTERNAL_FILES = "external-files-path";
  
  private static final String TAG_FILES_PATH = "files-path";
  
  private static final String TAG_ROOT_PATH = "root-path";
  
  private static HashMap<String, FileProvider$PathStrategy> sCache = new HashMap<String, FileProvider$PathStrategy>();
  
  private FileProvider$PathStrategy mStrategy;
  
  private static File buildPath(File paramFile, String... paramVarArgs) {
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      String str = paramVarArgs[i];
      if (str != null)
        paramFile = new File(paramFile, str); 
    } 
    return paramFile;
  }
  
  private static Object[] copyOf(Object[] paramArrayOfObject, int paramInt) {
    Object[] arrayOfObject = new Object[paramInt];
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 0, paramInt);
    return arrayOfObject;
  }
  
  private static String[] copyOf(String[] paramArrayOfString, int paramInt) {
    String[] arrayOfString = new String[paramInt];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramInt);
    return arrayOfString;
  }
  
  private static FileProvider$PathStrategy getPathStrategy(Context paramContext, String paramString) {
    synchronized (sCache) {
      FileProvider$PathStrategy fileProvider$PathStrategy2 = sCache.get(paramString);
      FileProvider$PathStrategy fileProvider$PathStrategy1 = fileProvider$PathStrategy2;
      if (fileProvider$PathStrategy2 == null)
        try {
          fileProvider$PathStrategy1 = parsePathStrategy(paramContext, paramString);
          sCache.put(paramString, fileProvider$PathStrategy1);
          return fileProvider$PathStrategy1;
        } catch (IOException iOException) {
          throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", iOException);
        } catch (XmlPullParserException xmlPullParserException) {
          throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", xmlPullParserException);
        }  
      return fileProvider$PathStrategy1;
    } 
  }
  
  public static Uri getUriForFile(Context paramContext, String paramString, File paramFile) {
    return getPathStrategy(paramContext, paramString).getUriForFile(paramFile);
  }
  
  private static int modeToMode(String paramString) {
    if ("r".equals(paramString))
      return 268435456; 
    if ("w".equals(paramString) || "wt".equals(paramString))
      return 738197504; 
    if ("wa".equals(paramString))
      return 704643072; 
    if ("rw".equals(paramString))
      return 939524096; 
    if ("rwt".equals(paramString))
      return 1006632960; 
    throw new IllegalArgumentException("Invalid mode: " + paramString);
  }
  
  private static FileProvider$PathStrategy parsePathStrategy(Context paramContext, String paramString) {
    FileProvider$SimplePathStrategy fileProvider$SimplePathStrategy = new FileProvider$SimplePathStrategy(paramString);
    XmlResourceParser xmlResourceParser = paramContext.getPackageManager().resolveContentProvider(paramString, 128).loadXmlMetaData(paramContext.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
    if (xmlResourceParser == null)
      throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data"); 
    while (true) {
      int i = xmlResourceParser.next();
      if (i != 1) {
        if (i == 2) {
          paramString = xmlResourceParser.getName();
          String str1 = xmlResourceParser.getAttributeValue(null, "name");
          String str2 = xmlResourceParser.getAttributeValue(null, "path");
          if ("root-path".equals(paramString)) {
            file = DEVICE_ROOT;
            continue;
          } 
          if ("files-path".equals(file)) {
            file = paramContext.getFilesDir();
            continue;
          } 
          if ("cache-path".equals(file)) {
            file = paramContext.getCacheDir();
            continue;
          } 
          if ("external-path".equals(file)) {
            file = Environment.getExternalStorageDirectory();
            continue;
          } 
          if ("external-files-path".equals(file)) {
            File[] arrayOfFile = ContextCompat.getExternalFilesDirs(paramContext, null);
            if (arrayOfFile.length > 0) {
              file = arrayOfFile[0];
              continue;
            } 
          } else if ("external-cache-path".equals(file)) {
            File[] arrayOfFile = ContextCompat.getExternalCacheDirs(paramContext);
            if (arrayOfFile.length > 0) {
              File file1 = arrayOfFile[0];
              continue;
            } 
          } 
          File file = null;
          continue;
        } 
        continue;
      } 
      return fileProvider$SimplePathStrategy;
      if (paramString != null)
        fileProvider$SimplePathStrategy.addRoot((String)SYNTHETIC_LOCAL_VARIABLE_5, buildPath((File)paramString, new String[] { (String)SYNTHETIC_LOCAL_VARIABLE_6 })); 
    } 
  }
  
  public void attachInfo(Context paramContext, ProviderInfo paramProviderInfo) {
    super.attachInfo(paramContext, paramProviderInfo);
    if (paramProviderInfo.exported)
      throw new SecurityException("Provider must not be exported"); 
    if (!paramProviderInfo.grantUriPermissions)
      throw new SecurityException("Provider must grant uri permissions"); 
    this.mStrategy = getPathStrategy(paramContext, paramProviderInfo.authority);
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString) {
    return this.mStrategy.getFileForUri(paramUri).delete() ? 1 : 0;
  }
  
  public String getType(Uri paramUri) {
    File file = this.mStrategy.getFileForUri(paramUri);
    int i = file.getName().lastIndexOf('.');
    if (i >= 0) {
      String str = file.getName().substring(i + 1);
      str = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
      if (str != null)
        return str; 
    } 
    return "application/octet-stream";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues) {
    throw new UnsupportedOperationException("No external inserts");
  }
  
  public boolean onCreate() {
    return true;
  }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString) {
    return ParcelFileDescriptor.open(this.mStrategy.getFileForUri(paramUri), modeToMode(paramString));
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2) {
    File file = this.mStrategy.getFileForUri(paramUri);
    String[] arrayOfString = paramArrayOfString1;
    if (paramArrayOfString1 == null)
      arrayOfString = COLUMNS; 
    paramArrayOfString2 = new String[arrayOfString.length];
    Object[] arrayOfObject = new Object[arrayOfString.length];
    int k = arrayOfString.length;
    int j = 0;
    int i = 0;
    while (j < k) {
      paramString2 = arrayOfString[j];
      if ("_display_name".equals(paramString2)) {
        paramArrayOfString2[i] = "_display_name";
        int m = i + 1;
        arrayOfObject[i] = file.getName();
        i = m;
      } else if ("_size".equals(paramString2)) {
        paramArrayOfString2[i] = "_size";
        int m = i + 1;
        arrayOfObject[i] = Long.valueOf(file.length());
        i = m;
      } 
      j++;
    } 
    arrayOfString = copyOf(paramArrayOfString2, i);
    arrayOfObject = copyOf(arrayOfObject, i);
    MatrixCursor matrixCursor = new MatrixCursor(arrayOfString, 1);
    matrixCursor.addRow(arrayOfObject);
    return (Cursor)matrixCursor;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString) {
    throw new UnsupportedOperationException("No external updates");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\FileProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */