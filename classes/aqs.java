import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

public class aqs {
  public static final int a = 5242880;
  
  public static final String b = "[Utility]";
  
  public static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2) {
    int k = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int i = 1;
    if (k > paramInt2 || j > paramInt1) {
      i = Math.round(k / paramInt2);
      paramInt1 = Math.round(j / paramInt1);
      if (i >= paramInt1)
        return paramInt1; 
    } 
    return i;
  }
  
  public static Bitmap a(String paramString) {
    int i = 1;
    char c = Character.MIN_VALUE;
    BitmapFactory.Options options = new BitmapFactory.Options();
    options.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, options);
    options.inSampleSize = b(options, 800, 600);
    options.inJustDecodeBounds = false;
    Bitmap bitmap = BitmapFactory.decodeFile(paramString, options);
    if (bitmap != null) {
      try {
        if (!aqr.a(paramString.toLowerCase()).contains("png")) {
          paramString = (new ExifInterface(paramString)).getAttribute("Orientation");
          if (paramString != null)
            i = Integer.parseInt(paramString); 
        } else {
          return a(paramString, bitmap);
        } 
      } catch (IOException iOException) {
        Log.d("[Utility]", "createBitmapWithOrientation - IOException ", iOException);
        return null;
      } catch (Exception exception) {
        Log.d("[Utility]", "createBitmapWithOrientation - Exception ", exception);
        return null;
      } 
    } else {
      return null;
    } 
    if (i == 6)
      c = 'Z'; 
    if (i == 3)
      c = '´'; 
    if (i == 8)
      c = 'Ď'; 
    Matrix matrix = new Matrix();
    matrix.setRotate(c, bitmap.getWidth() / 2.0F, bitmap.getHeight() / 2.0F);
    return Bitmap.createBitmap(bitmap, 0, 0, options.outWidth, options.outHeight, matrix, true);
  }
  
  public static Bitmap a(String paramString, int paramInt1, int paramInt2) {
    BitmapFactory.Options options = new BitmapFactory.Options();
    options.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, options);
    options.inSampleSize = a(options, paramInt1, paramInt2);
    options.inJustDecodeBounds = false;
    return BitmapFactory.decodeFile(paramString, options);
  }
  
  private static Bitmap a(String paramString, Bitmap paramBitmap) {
    try {
      FileOutputStream fileOutputStream = new FileOutputStream(new File(paramString));
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 90, fileOutputStream);
      fileOutputStream.flush();
      fileOutputStream.close();
      return paramBitmap;
    } catch (Exception exception) {
      Log.d("[Utility]", "pngBitmap - " + exception.getMessage(), exception);
      return paramBitmap;
    } 
  }
  
  public static String a(Context paramContext, Uri paramUri) {
    return paramUri.getScheme().equals("content") ? MimeTypeMap.getSingleton().getExtensionFromMimeType(paramContext.getContentResolver().getType(paramUri)) : MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(paramUri.getPath())).toString());
  }
  
  public static void a(File paramFile, Context paramContext) {
    Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
    intent.setData(Uri.fromFile(paramFile));
    paramContext.sendBroadcast(intent);
  }
  
  public static boolean a() {
    return (Build.VERSION.SDK_INT > 19);
  }
  
  public static boolean a(Context paramContext) {
    return (paramContext != null) ? paramContext.getPackageManager().hasSystemFeature("android.hardware.camera") : false;
  }
  
  public static boolean a(File paramFile) {
    return (paramFile.length() < 5242880L);
  }
  
  private static int b(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2) {
    int k = paramOptions.outHeight;
    int m = paramOptions.outWidth;
    int j = 1;
    int i = 1;
    if (k > paramInt2 || m > paramInt1) {
      k /= 2;
      m /= 2;
      while (true) {
        j = i;
        if (k / i >= paramInt2) {
          j = i;
          if (m / i >= paramInt1) {
            i *= 2;
            continue;
          } 
        } 
        break;
      } 
    } 
    return j;
  }
  
  public static boolean b() {
    return (Build.VERSION.SDK_INT >= 19);
  }
  
  public static boolean b(Context paramContext) {
    return (ContextCompat.checkSelfPermission(paramContext, "android.permission.CAMERA") == 0);
  }
  
  public static boolean b(Context paramContext, Uri paramUri) {
    return Arrays.<String>asList(aps.bO).contains(a(paramContext, paramUri));
  }
  
  public static void c(Context paramContext) {
    ActivityCompat.requestPermissions((Activity)paramContext, new String[] { "android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE" }, 0);
  }
  
  public static boolean c() {
    return Build.MANUFACTURER.equals("samsung");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */