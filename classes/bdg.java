import android.graphics.Path;
import android.support.annotation.Nullable;

public class bdg implements bcd {
  private final boolean a;
  
  private final Path.FillType b;
  
  private final String c;
  
  @Nullable
  private final bal d;
  
  @Nullable
  private final baw e;
  
  private bdg(String paramString, boolean paramBoolean, Path.FillType paramFillType, @Nullable bal parambal, @Nullable baw parambaw) {
    this.c = paramString;
    this.a = paramBoolean;
    this.b = paramFillType;
    this.d = parambal;
    this.e = parambaw;
  }
  
  public aye a(awu paramawu, bdy parambdy) {
    return new ayi(paramawu, parambdy, this);
  }
  
  public String a() {
    return this.c;
  }
  
  @Nullable
  public bal b() {
    return this.d;
  }
  
  @Nullable
  public baw c() {
    return this.e;
  }
  
  public Path.FillType d() {
    return this.b;
  }
  
  public String toString() {
    String str;
    StringBuilder stringBuilder = (new StringBuilder()).append("ShapeFill{color=");
    if (this.d == null) {
      str = "null";
    } else {
      str = Integer.toHexString(this.d.c().intValue());
    } 
    stringBuilder = stringBuilder.append(str).append(", fillEnabled=").append(this.a).append(", opacity=");
    if (this.e == null) {
      str = "null";
      return stringBuilder.append(str).append('}').toString();
    } 
    Integer integer = this.e.b();
    return stringBuilder.append(integer).append('}').toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */