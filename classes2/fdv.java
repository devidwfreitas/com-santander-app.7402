import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import java.io.ByteArrayOutputStream;

public class fdv {
  private byte[] a;
  
  private int b;
  
  private int c;
  
  private int d;
  
  private int e;
  
  private Rect f;
  
  public fdv(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.a = paramArrayOfbyte;
    this.b = paramInt1;
    this.c = paramInt2;
    this.e = paramInt4;
    this.d = paramInt3;
    if (paramInt1 * paramInt2 > paramArrayOfbyte.length)
      throw new IllegalArgumentException("Image data does not match the resolution. " + paramInt1 + "x" + paramInt2 + " > " + paramArrayOfbyte.length); 
  }
  
  private Bitmap a(Rect paramRect, int paramInt) {
    Rect rect = paramRect;
    if (e())
      rect = new Rect(paramRect.top, paramRect.left, paramRect.bottom, paramRect.right); 
    YuvImage yuvImage = new YuvImage(this.a, this.d, this.b, this.c, null);
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream);
    byte[] arrayOfByte = byteArrayOutputStream.toByteArray();
    BitmapFactory.Options options = new BitmapFactory.Options();
    options.inSampleSize = paramInt;
    Bitmap bitmap2 = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, options);
    Bitmap bitmap1 = bitmap2;
    if (this.e != 0) {
      Matrix matrix = new Matrix();
      matrix.postRotate(this.e);
      bitmap1 = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), bitmap2.getHeight(), matrix, false);
    } 
    return bitmap1;
  }
  
  public static byte[] a(int paramInt1, byte[] paramArrayOfbyte, int paramInt2, int paramInt3) {
    switch (paramInt1) {
      default:
        return paramArrayOfbyte;
      case 90:
        return a(paramArrayOfbyte, paramInt2, paramInt3);
      case 180:
        return b(paramArrayOfbyte, paramInt2, paramInt3);
      case 270:
        break;
    } 
    return c(paramArrayOfbyte, paramInt2, paramInt3);
  }
  
  public static byte[] a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    byte[] arrayOfByte = new byte[paramInt1 * paramInt2];
    int i = 0;
    int j = 0;
    while (i < paramInt1) {
      int k;
      for (k = paramInt2 - 1; k >= 0; k--) {
        arrayOfByte[j] = paramArrayOfbyte[k * paramInt1 + i];
        j++;
      } 
      i++;
    } 
    return arrayOfByte;
  }
  
  public static byte[] b(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int i = paramInt1 * paramInt2;
    byte[] arrayOfByte = new byte[i];
    paramInt2 = i - 1;
    for (paramInt1 = 0; paramInt1 < i; paramInt1++) {
      arrayOfByte[paramInt2] = paramArrayOfbyte[paramInt1];
      paramInt2--;
    } 
    return arrayOfByte;
  }
  
  public static byte[] c(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    int i = paramInt1 * paramInt2;
    byte[] arrayOfByte = new byte[i];
    int j = i - 1;
    for (i = 0; i < paramInt1; i++) {
      int k;
      for (k = paramInt2 - 1; k >= 0; k--) {
        arrayOfByte[j] = paramArrayOfbyte[k * paramInt1 + i];
        j--;
      } 
    } 
    return arrayOfByte;
  }
  
  public Bitmap a(int paramInt) {
    return a(this.f, paramInt);
  }
  
  public Rect a() {
    return this.f;
  }
  
  public void a(Rect paramRect) {
    this.f = paramRect;
  }
  
  public byte[] b() {
    return this.a;
  }
  
  public int c() {
    return this.b;
  }
  
  public int d() {
    return this.c;
  }
  
  public boolean e() {
    return (this.e % 180 != 0);
  }
  
  public int f() {
    return this.d;
  }
  
  public eqi g() {
    byte[] arrayOfByte = a(this.e, this.a, this.b, this.c);
    return e() ? new eqi(arrayOfByte, this.c, this.b, this.f.left, this.f.top, this.f.width(), this.f.height(), false) : new eqi(arrayOfByte, this.b, this.c, this.f.left, this.f.top, this.f.width(), this.f.height(), false);
  }
  
  public Bitmap h() {
    return a(1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */