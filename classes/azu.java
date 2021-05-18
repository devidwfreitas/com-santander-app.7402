import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class azu {
  private final Context a;
  
  private String b;
  
  @Nullable
  private awl c;
  
  private final Map<String, axd> d;
  
  private final Map<String, Bitmap> e = new HashMap<String, Bitmap>();
  
  public azu(Drawable.Callback paramCallback, String paramString, awl paramawl, Map<String, axd> paramMap) {
    this.b = paramString;
    if (!TextUtils.isEmpty(paramString) && this.b.charAt(this.b.length() - 1) != '/')
      this.b += '/'; 
    if (!(paramCallback instanceof View)) {
      Log.w("LOTTIE", "LottieDrawable must be inside of a view for images to work.");
      this.d = new HashMap<String, axd>();
      this.a = null;
      return;
    } 
    this.a = ((View)paramCallback).getContext();
    this.d = paramMap;
    a(paramawl);
  }
  
  @Nullable
  public Bitmap a(String paramString) {
    Bitmap bitmap3 = this.e.get(paramString);
    Bitmap bitmap2 = bitmap3;
    if (bitmap3 == null) {
      axd axd = this.d.get(paramString);
      if (axd == null)
        return null; 
    } else {
      return bitmap2;
    } 
    if (this.c != null) {
      bitmap3 = this.c.a((axd)bitmap2);
      bitmap2 = bitmap3;
      if (bitmap3 != null) {
        this.e.put(paramString, bitmap3);
        return bitmap3;
      } 
      return bitmap2;
    } 
    try {
      if (TextUtils.isEmpty(this.b))
        throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"); 
    } catch (IOException iOException) {
      Log.w("LOTTIE", "Unable to open asset.", iOException);
      return null;
    } 
    InputStream inputStream = this.a.getAssets().open(this.b + bitmap2.d());
    BitmapFactory.Options options = new BitmapFactory.Options();
    options.inScaled = true;
    options.inDensity = 160;
    Bitmap bitmap1 = BitmapFactory.decodeStream(inputStream, null, options);
    this.e.put(iOException, bitmap1);
    return bitmap1;
  }
  
  @Nullable
  public Bitmap a(String paramString, @Nullable Bitmap paramBitmap) {
    return this.e.put(paramString, paramBitmap);
  }
  
  public void a() {
    Iterator<Map.Entry> iterator = this.e.entrySet().iterator();
    while (iterator.hasNext()) {
      ((Bitmap)((Map.Entry)iterator.next()).getValue()).recycle();
      iterator.remove();
    } 
  }
  
  public void a(@Nullable awl paramawl) {
    this.c = paramawl;
  }
  
  public boolean a(Context paramContext) {
    return ((paramContext == null && this.a == null) || (paramContext != null && this.a.equals(paramContext)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */