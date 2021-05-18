import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;

public final class bpx {
  static final String a = "com.facebook.NativeAppCallAttachmentStore.files";
  
  private static final String b = bpx.class.getName();
  
  private static File c;
  
  public static bpz a(UUID paramUUID, Bitmap paramBitmap) {
    bqx.a(paramUUID, "callId");
    bqx.a(paramBitmap, "attachmentBitmap");
    return new bpz(paramUUID, paramBitmap, null, null);
  }
  
  public static bpz a(UUID paramUUID, Uri paramUri) {
    bqx.a(paramUUID, "callId");
    bqx.a(paramUri, "attachmentUri");
    return new bpz(paramUUID, null, paramUri, null);
  }
  
  static File a() {
    // Byte code:
    //   0: ldc bpx
    //   2: monitorenter
    //   3: getstatic bpx.c : Ljava/io/File;
    //   6: ifnonnull -> 27
    //   9: new java/io/File
    //   12: dup
    //   13: invokestatic h : ()Landroid/content/Context;
    //   16: invokevirtual getCacheDir : ()Ljava/io/File;
    //   19: ldc 'com.facebook.NativeAppCallAttachmentStore.files'
    //   21: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   24: putstatic bpx.c : Ljava/io/File;
    //   27: getstatic bpx.c : Ljava/io/File;
    //   30: astore_0
    //   31: ldc bpx
    //   33: monitorexit
    //   34: aload_0
    //   35: areturn
    //   36: astore_0
    //   37: ldc bpx
    //   39: monitorexit
    //   40: aload_0
    //   41: athrow
    // Exception table:
    //   from	to	target	type
    //   3	27	36	finally
    //   27	31	36	finally
  }
  
  public static File a(UUID paramUUID, String paramString) {
    if (bqq.a(paramString) || paramUUID == null)
      throw new FileNotFoundException(); 
    try {
      return a(paramUUID, paramString, false);
    } catch (IOException iOException) {
      throw new FileNotFoundException();
    } 
  }
  
  static File a(UUID paramUUID, String paramString, boolean paramBoolean) {
    File file = a(paramUUID, paramBoolean);
    if (file == null)
      return null; 
    try {
      return new File(file, URLEncoder.encode(paramString, "UTF-8"));
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      return null;
    } 
  }
  
  static File a(UUID paramUUID, boolean paramBoolean) {
    if (c == null)
      return null; 
    File file2 = new File(c, paramUUID.toString());
    File file1 = file2;
    if (paramBoolean) {
      file1 = file2;
      if (!file2.exists()) {
        file2.mkdirs();
        return file2;
      } 
    } 
    return file1;
  }
  
  private static void a(Bitmap paramBitmap, File paramFile) {
    FileOutputStream fileOutputStream = new FileOutputStream(paramFile);
    try {
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
      return;
    } finally {
      bqq.a(fileOutputStream);
    } 
  }
  
  private static void a(Uri paramUri, boolean paramBoolean, File paramFile) {
    FileOutputStream fileOutputStream = new FileOutputStream(paramFile);
    if (!paramBoolean)
      try {
        FileInputStream fileInputStream = new FileInputStream(paramUri.getPath());
        bqq.a(fileInputStream, fileOutputStream);
        return;
      } finally {
        bqq.a(fileOutputStream);
      }  
    InputStream inputStream = bhv.h().getContentResolver().openInputStream(paramUri);
    bqq.a(inputStream, fileOutputStream);
    bqq.a(fileOutputStream);
  }
  
  public static void a(Collection<bpz> paramCollection) {
    if (paramCollection != null && paramCollection.size() != 0) {
      if (c == null)
        c(); 
      b();
      ArrayList<File> arrayList = new ArrayList();
      try {
        Iterator<bpz> iterator = paramCollection.iterator();
        while (true) {
          if (iterator.hasNext()) {
            bpz bpz = iterator.next();
            if (bpz.a(bpz)) {
              File file = a(bpz.b(bpz), bpz.c(bpz), true);
              arrayList.add(file);
              if (bpz.d(bpz) != null) {
                a(bpz.d(bpz), file);
                continue;
              } 
              if (bpz.e(bpz) != null)
                a(bpz.e(bpz), bpz.f(bpz), file); 
            } 
            continue;
          } 
          return;
        } 
      } catch (IOException iOException) {
        Log.e(b, "Got unexpected exception:" + iOException);
        for (File file : arrayList) {
          try {
            file.delete();
          } catch (Exception exception) {}
        } 
        throw new bhp(iOException);
      } 
    } 
  }
  
  public static void a(UUID paramUUID) {
    File file = a(paramUUID, false);
    if (file != null)
      bqq.a(file); 
  }
  
  static File b() {
    File file = a();
    file.mkdirs();
    return file;
  }
  
  public static void c() {
    bqq.a(a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */