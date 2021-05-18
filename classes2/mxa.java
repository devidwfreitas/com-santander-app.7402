import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.Normalizer;
import java.util.regex.Pattern;

public class mxa {
  public static Bitmap a(Bitmap paramBitmap, float paramFloat1, float paramFloat2, String paramString) {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    if (i > 1000) {
      paramFloat1 = j / i / 'Ϩ';
      paramFloat2 = 'Ϩ' / i;
      paramFloat1 /= j;
      matrix = new Matrix();
      matrix.postScale(paramFloat2, paramFloat1);
      paramBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, matrix, true);
      return paramBitmap.copy(paramBitmap.getConfig(), true);
    } 
    if (!matrix.contains("_thumb") && !matrix.contains("_220")) {
      paramFloat2 = i;
      paramFloat1 = j;
      paramFloat2 /= i;
      paramFloat1 /= j;
      matrix = new Matrix();
      matrix.postScale(paramFloat2, paramFloat1);
      paramBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, matrix, true);
      return paramBitmap.copy(paramBitmap.getConfig(), true);
    } 
    float f = paramFloat1 / i;
    paramFloat1 = paramFloat2 / j;
    paramFloat2 = f;
    Matrix matrix = new Matrix();
    matrix.postScale(paramFloat2, paramFloat1);
    paramBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, matrix, true);
    return paramBitmap.copy(paramBitmap.getConfig(), true);
  }
  
  public static Bitmap a(File paramFile) {
    return a(paramFile, 800, 600, BitmapFactory.decodeFile(paramFile.getPath()));
  }
  
  public static Bitmap a(File paramFile, int paramInt1, int paramInt2, Bitmap paramBitmap) {
    try {
      RuntimeException runtimeException;
      int i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      Matrix matrix = new Matrix();
      if ((new ExifInterface(paramFile.getPath())).getAttributeInt("Orientation", 1) != 0) {
        OutOfMemoryError outOfMemoryError;
        RuntimeException runtimeException1;
        matrix.setScale(paramInt1 / paramBitmap.getWidth(), paramInt2 / paramBitmap.getHeight());
        paramBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, matrix, true);
        try {
          return a(paramFile, paramBitmap);
        } catch (OutOfMemoryError outOfMemoryError1) {
          Bitmap bitmap = paramBitmap;
          outOfMemoryError = outOfMemoryError1;
        } catch (RuntimeException runtimeException2) {
          OutOfMemoryError outOfMemoryError1 = outOfMemoryError;
          runtimeException1 = runtimeException2;
          Log.e("Error", runtimeException1.getMessage());
          return (Bitmap)outOfMemoryError1;
        } catch (IOException iOException1) {
          runtimeException = runtimeException1;
          iOException = iOException1;
          Log.e("Error", iOException.getMessage());
          return (Bitmap)runtimeException;
        } 
      } else {
        if (iOException.getWidth() < iOException.getHeight()) {
          float f4 = paramInt2 / iOException.getWidth();
          float f3 = paramInt1 / iOException.getHeight();
          iOException1.setScale(f4, f3);
          return Bitmap.createBitmap((Bitmap)iOException, 0, 0, i, j, (Matrix)iOException1, true);
        } 
        float f2 = paramInt1 / iOException.getWidth();
        float f1 = paramInt2;
        paramInt1 = iOException.getHeight();
        f1 /= paramInt1;
        iOException1.setScale(f2, f1);
        return Bitmap.createBitmap((Bitmap)iOException, 0, 0, i, j, (Matrix)iOException1, true);
      } 
      Log.e("Error", iOException.getMessage());
      return (Bitmap)runtimeException;
    } catch (OutOfMemoryError outOfMemoryError) {
      paramFile = null;
      Log.e("Error", outOfMemoryError.getMessage());
      return (Bitmap)paramFile;
    } catch (RuntimeException runtimeException) {
      paramFile = null;
      Log.e("Error", runtimeException.getMessage());
      return (Bitmap)paramFile;
    } catch (IOException iOException) {
      paramFile = null;
    } 
    Log.e("Error", iOException.getMessage());
    return (Bitmap)paramFile;
  }
  
  private static Bitmap a(File paramFile, Bitmap paramBitmap) {
    Matrix matrix = new Matrix();
    switch ((new ExifInterface(paramFile.getPath())).getAttributeInt("Orientation", 1)) {
      default:
        bool = false;
        if (!bool)
          return paramBitmap; 
        bitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), matrix, true);
        paramBitmap.recycle();
        return bitmap;
      case 3:
        matrix.postRotate(180.0F);
        bool = true;
        if (!bool)
          return paramBitmap; 
        bitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), matrix, true);
        paramBitmap.recycle();
        return bitmap;
      case 6:
        matrix.postRotate(90.0F);
        bool = true;
        if (!bool)
          return paramBitmap; 
        bitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), matrix, true);
        paramBitmap.recycle();
        return bitmap;
      case 8:
        break;
    } 
    matrix.postRotate(270.0F);
    boolean bool = true;
    if (!bool)
      return paramBitmap; 
    Bitmap bitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), matrix, true);
    paramBitmap.recycle();
    return bitmap;
  }
  
  public static Bitmap a(String paramString, int paramInt1, int paramInt2) {
    int i = 1;
    BitmapFactory.Options options = new BitmapFactory.Options();
    try {
      options.inJustDecodeBounds = true;
      options.inSampleSize = 8;
      BitmapFactory.decodeFile(paramString, options);
      int k = options.outHeight;
      int j = options.outWidth;
      options.inPreferredConfig = Bitmap.Config.ALPHA_8;
      if (k > paramInt2)
        i = Math.round(k / paramInt2); 
      paramInt2 = i;
      if (j / i > paramInt1)
        paramInt2 = Math.round(j / paramInt1); 
      options.inSampleSize = paramInt2;
      options.inJustDecodeBounds = false;
    } catch (Exception exception) {
      Log.e("ERROR DECODE BITMAP", exception.getMessage());
    } 
    return BitmapFactory.decodeFile(paramString, options);
  }
  
  @SuppressLint({"NewApi"})
  public static String a(String paramString) {
    paramString = Normalizer.normalize(paramString, Normalizer.Form.NFD);
    return Pattern.compile("\\p{InCombiningDiacriticalMarks}+").matcher(paramString).replaceAll("");
  }
  
  public static void a(Bitmap paramBitmap, File paramFile) {
    try {
      FileOutputStream fileOutputStream = new FileOutputStream(paramFile.getAbsolutePath());
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
      fileOutputStream.flush();
      fileOutputStream.close();
      return;
    } catch (Exception exception) {
      Log.e("ERROR COMPACTAR BITMAP", exception.getMessage());
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
  
  public static boolean a(File paramFile1, File paramFile2) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_1
    //   3: invokevirtual exists : ()Z
    //   6: ifne -> 9
    //   9: aload_1
    //   10: invokevirtual exists : ()Z
    //   13: ifeq -> 73
    //   16: new android/graphics/BitmapFactory
    //   19: dup
    //   20: invokespecial <init> : ()V
    //   23: pop
    //   24: aload_1
    //   25: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   28: invokestatic decodeFile : (Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   31: astore_0
    //   32: new java/io/FileOutputStream
    //   35: dup
    //   36: aload_1
    //   37: invokespecial <init> : (Ljava/io/File;)V
    //   40: astore_3
    //   41: aload_0
    //   42: ldc 280.0
    //   44: ldc 210.0
    //   46: aload_1
    //   47: invokevirtual getName : ()Ljava/lang/String;
    //   50: invokestatic a : (Landroid/graphics/Bitmap;FFLjava/lang/String;)Landroid/graphics/Bitmap;
    //   53: getstatic android/graphics/Bitmap$CompressFormat.JPEG : Landroid/graphics/Bitmap$CompressFormat;
    //   56: bipush #90
    //   58: aload_3
    //   59: invokevirtual compress : (Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   62: pop
    //   63: aload_3
    //   64: invokevirtual flush : ()V
    //   67: aload_3
    //   68: invokevirtual close : ()V
    //   71: iconst_1
    //   72: istore_2
    //   73: iload_2
    //   74: ireturn
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */