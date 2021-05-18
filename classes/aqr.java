import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.content.FileProvider;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.net.URI;
import java.util.Arrays;

public class aqr {
  private static boolean a = false;
  
  public static Uri a(Context paramContext, File paramFile) {
    if (!aqs.a())
      return Uri.fromFile(paramFile); 
    try {
      return FileProvider.getUriForFile(paramContext, paramContext.getPackageName() + ".provider", paramFile);
    } catch (IllegalArgumentException illegalArgumentException) {
      Log.d("FileUtil", "getUriForFile IllegalArgumentException: " + illegalArgumentException.getMessage());
    } catch (Exception exception) {
      Log.d("FileUtil", "getUriForFile Exception: " + exception.getMessage());
    } 
    return Uri.fromFile(paramFile);
  }
  
  public static File a() {
    return new File(Environment.getExternalStorageDirectory() + "/" + "Santander");
  }
  
  public static File a(Context paramContext, Uri paramUri) {
    String[] arrayOfString;
    Uri uri;
    String str = null;
    if (aqs.b() && DocumentsContract.isDocumentUri(paramContext, paramUri)) {
      if (a(paramUri)) {
        arrayOfString = DocumentsContract.getDocumentId(paramUri).split(":");
        if ("primary".equalsIgnoreCase(arrayOfString[0]))
          return b(Environment.getExternalStorageDirectory() + "/" + arrayOfString[1]); 
      } else {
        String str1;
        if (b(paramUri)) {
          str1 = DocumentsContract.getDocumentId(paramUri);
          return b(a((Context)arrayOfString, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(str1).longValue()), null, null));
        } 
        if (c((Uri)str1)) {
          String[] arrayOfString1 = DocumentsContract.getDocumentId((Uri)str1).split(":");
          String str2 = arrayOfString1[0];
          if ("image".equals(str2)) {
            uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            return b(a((Context)arrayOfString, uri, "_id=?", new String[] { arrayOfString1[1] }));
          } 
          if ("video".equals(str2)) {
            uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            return b(a((Context)arrayOfString, uri, "_id=?", new String[] { arrayOfString1[1] }));
          } 
          str1 = str;
          if ("audio".equals(str2))
            uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI; 
          return b(a((Context)arrayOfString, uri, "_id=?", new String[] { arrayOfString1[1] }));
        } 
      } 
    } else {
      if ("content".equalsIgnoreCase(uri.getScheme()))
        return b(a((Context)arrayOfString, uri, null, null)); 
      if ("file".equalsIgnoreCase(uri.getScheme()))
        return b(uri.getPath()); 
    } 
    return b((String)null);
  }
  
  private static String a(Context paramContext, Uri paramUri, String paramString, String[] paramArrayOfString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: aload_0
    //   4: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   7: aload_1
    //   8: iconst_1
    //   9: anewarray java/lang/String
    //   12: dup
    //   13: iconst_0
    //   14: ldc '_data'
    //   16: aastore
    //   17: aload_2
    //   18: aload_3
    //   19: aconst_null
    //   20: invokevirtual query : (Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore_1
    //   24: aload_1
    //   25: ifnull -> 64
    //   28: aload_1
    //   29: invokeinterface moveToFirst : ()Z
    //   34: ifeq -> 64
    //   37: aload_1
    //   38: aload_1
    //   39: ldc '_data'
    //   41: invokeinterface getColumnIndexOrThrow : (Ljava/lang/String;)I
    //   46: invokeinterface getString : (I)Ljava/lang/String;
    //   51: astore_0
    //   52: aload_1
    //   53: ifnull -> 62
    //   56: aload_1
    //   57: invokeinterface close : ()V
    //   62: aload_0
    //   63: areturn
    //   64: aload_1
    //   65: ifnull -> 74
    //   68: aload_1
    //   69: invokeinterface close : ()V
    //   74: aconst_null
    //   75: areturn
    //   76: astore_0
    //   77: aload #4
    //   79: astore_1
    //   80: aload_1
    //   81: ifnull -> 90
    //   84: aload_1
    //   85: invokeinterface close : ()V
    //   90: aload_0
    //   91: athrow
    //   92: astore_0
    //   93: goto -> 80
    // Exception table:
    //   from	to	target	type
    //   3	24	76	finally
    //   28	52	92	finally
  }
  
  public static String a(String paramString) {
    String str1 = null;
    String str2 = MimeTypeMap.getFileExtensionFromUrl(paramString);
    paramString = str1;
    if (str2 != null)
      paramString = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str2); 
    return paramString;
  }
  
  public static void a(boolean paramBoolean) {
    a = paramBoolean;
  }
  
  private static boolean a(Uri paramUri) {
    return "com.android.externalstorage.documents".equals(paramUri.getAuthority());
  }
  
  public static boolean a(File paramFile) {
    return Arrays.<String>asList(aps.bP).contains(a(paramFile.getPath()));
  }
  
  private static File b(String paramString) {
    return (paramString != null && !paramString.isEmpty()) ? new File(paramString) : new File("");
  }
  
  public static String b() {
    return a().getAbsolutePath();
  }
  
  private static boolean b(Uri paramUri) {
    return "com.android.providers.downloads.documents".equals(paramUri.getAuthority());
  }
  
  public static String c() {
    return (new File(Environment.getExternalStorageDirectory() + "/" + "Downloads")).getAbsolutePath();
  }
  
  private static boolean c(Uri paramUri) {
    return "com.android.providers.media.documents".equals(paramUri.getAuthority());
  }
  
  public static URI d() {
    return a().toURI();
  }
  
  public static boolean e() {
    return a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */