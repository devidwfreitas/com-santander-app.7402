import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public class mym {
  public static Bitmap a(Context paramContext, String paramString) {
    Bitmap bitmap;
    Context context = null;
    File file = new File(paramContext.getCacheDir(), paramString + "_profile.png");
    paramContext = context;
    if (file.exists())
      bitmap = BitmapFactory.decodeFile(file.getAbsolutePath()); 
    return bitmap;
  }
  
  public static Bitmap a(String paramString) {
    byte[] arrayOfByte = Base64.decode(paramString, 0);
    return BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
  }
  
  public static String a(Bitmap paramBitmap) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
    return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
  }
  
  public static void a(Bitmap paramBitmap, Context paramContext, String paramString) {
    File file = new File(paramContext.getCacheDir(), paramString + "_profile.png");
    try {
      paramBitmap = Bitmap.createScaledBitmap(paramBitmap, (new Double(paramBitmap.getWidth() * 0.5D)).intValue(), (new Double(paramBitmap.getHeight() * 0.5D)).intValue(), false);
      FileOutputStream fileOutputStream = new FileOutputStream(file);
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
      fileOutputStream.close();
      return;
    } catch (Exception exception) {
      Log.e("Santander", exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mym.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */