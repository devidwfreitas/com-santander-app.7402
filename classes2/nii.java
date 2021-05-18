import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public final class nii {
  private final String a;
  
  private final String b;
  
  private Map<String, String> c;
  
  private nik d;
  
  private String e;
  
  private nii(String paramString1, String paramString2) {
    this.a = paramString1;
    if (!TextUtils.isEmpty(paramString1)) {
      this.b = paramString2;
      if (!TextUtils.isEmpty(paramString2))
        return; 
    } 
    throw new IllegalArgumentException();
  }
  
  public static nii a(String paramString) {
    return new nii(paramString, "HEAD");
  }
  
  public static nii b(String paramString) {
    return new nii(paramString, "GET");
  }
  
  private static byte[] b(InputStream paramInputStream) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    while (true) {
      int i = paramInputStream.read(arrayOfByte);
      if (i != -1) {
        byteArrayOutputStream.write(arrayOfByte, 0, i);
        continue;
      } 
      arrayOfByte = byteArrayOutputStream.toByteArray();
      byteArrayOutputStream.close();
      paramInputStream.close();
      return arrayOfByte;
    } 
  }
  
  public Runnable a() {
    return new nij(this);
  }
  
  public nii a(String paramString1, String paramString2) {
    if (TextUtils.isEmpty(paramString1) || TextUtils.isEmpty(paramString2))
      throw new IllegalArgumentException(); 
    if (this.c == null)
      this.c = new HashMap<String, String>(); 
    this.c.put(paramString1, paramString2);
    return this;
  }
  
  public nii a(nik paramnik) {
    this.d = paramnik;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nii.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */