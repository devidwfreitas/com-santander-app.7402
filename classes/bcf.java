import android.graphics.Path;
import android.support.annotation.Nullable;

public class bcf implements bcd {
  private final bcl a;
  
  private final Path.FillType b;
  
  private final bas c;
  
  private final baw d;
  
  private final bbc e;
  
  private final bbc f;
  
  private final String g;
  
  @Nullable
  private final bao h;
  
  @Nullable
  private final bao i;
  
  private bcf(String paramString, bcl parambcl, Path.FillType paramFillType, bas parambas, baw parambaw, bbc parambbc1, bbc parambbc2, bao parambao1, bao parambao2) {
    this.a = parambcl;
    this.b = paramFillType;
    this.c = parambas;
    this.d = parambaw;
    this.e = parambbc1;
    this.f = parambbc2;
    this.g = paramString;
    this.h = parambao1;
    this.i = parambao2;
  }
  
  public aye a(awu paramawu, bdy parambdy) {
    return new ayj(paramawu, parambdy, this);
  }
  
  public String a() {
    return this.g;
  }
  
  public bcl b() {
    return this.a;
  }
  
  public Path.FillType c() {
    return this.b;
  }
  
  public bas d() {
    return this.c;
  }
  
  public baw e() {
    return this.d;
  }
  
  public bbc f() {
    return this.e;
  }
  
  public bbc g() {
    return this.f;
  }
  
  @Nullable
  bao h() {
    return this.h;
  }
  
  @Nullable
  bao i() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bcf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */