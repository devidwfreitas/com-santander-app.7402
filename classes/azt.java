import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

public class azt {
  private final bah<String> a = new bah<String>();
  
  private final Map<bah<String>, Typeface> b = new HashMap<bah<String>, Typeface>();
  
  private final Map<String, Typeface> c = new HashMap<String, Typeface>();
  
  private final AssetManager d;
  
  @Nullable
  private awk e;
  
  private String f = ".ttf";
  
  public azt(Drawable.Callback paramCallback, @Nullable awk paramawk) {
    this.e = paramawk;
    if (!(paramCallback instanceof View)) {
      Log.w("LOTTIE", "LottieDrawable must be inside of a view for images to work.");
      this.d = null;
      return;
    } 
    this.d = ((View)paramCallback).getContext().getAssets();
  }
  
  private Typeface a(Typeface paramTypeface, String paramString) {
    byte b = 0;
    boolean bool1 = paramString.contains("Italic");
    boolean bool2 = paramString.contains("Bold");
    if (bool1 && bool2) {
      b = 3;
    } else if (bool1) {
      b = 2;
    } else if (bool2) {
      b = 1;
    } 
    return (paramTypeface.getStyle() == b) ? paramTypeface : Typeface.create(paramTypeface, b);
  }
  
  private Typeface b(String paramString) {
    Typeface typeface1 = this.c.get(paramString);
    if (typeface1 != null)
      return typeface1; 
    Typeface typeface2 = null;
    if (this.e != null)
      typeface2 = this.e.a(paramString); 
    typeface1 = typeface2;
    if (this.e != null) {
      typeface1 = typeface2;
      if (typeface2 == null) {
        String str = this.e.b(paramString);
        typeface1 = typeface2;
        if (str != null)
          typeface1 = Typeface.createFromAsset(this.d, str); 
      } 
    } 
    typeface2 = typeface1;
    if (typeface1 == null) {
      String str = "fonts/" + paramString + this.f;
      typeface2 = Typeface.createFromAsset(this.d, str);
    } 
    this.c.put(paramString, typeface2);
    return typeface2;
  }
  
  public Typeface a(String paramString1, String paramString2) {
    this.a.a(paramString1, paramString2);
    Typeface typeface2 = this.b.get(this.a);
    if (typeface2 != null)
      return typeface2; 
    Typeface typeface1 = a(b(paramString1), paramString2);
    this.b.put(this.a, typeface1);
    return typeface1;
  }
  
  public void a(@Nullable awk paramawk) {
    this.e = paramawk;
  }
  
  public void a(String paramString) {
    this.f = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */