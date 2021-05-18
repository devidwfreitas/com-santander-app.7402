import android.content.Context;
import android.support.annotation.DrawableRes;
import android.text.SpannableString;
import android.text.Spanned;

public class hno {
  private Context a;
  
  @DrawableRes
  private int b = 2130838442;
  
  private String c;
  
  private Spanned d;
  
  private Spanned e;
  
  private Spanned f;
  
  private String g;
  
  private hnl h;
  
  public hno(Context paramContext) {
    this.a = paramContext;
  }
  
  public hno a(@DrawableRes int paramInt) {
    this.b = paramInt;
    return this;
  }
  
  public hno a(Spanned paramSpanned) {
    this.d = paramSpanned;
    return this;
  }
  
  public hno a(hnl paramhnl) {
    this.h = paramhnl;
    return this;
  }
  
  public hno a(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public hnp a() {
    if (this.a == null)
      throw new NullPointerException(); 
    return new hnp(this.a, this, null);
  }
  
  public hno b(Spanned paramSpanned) {
    this.e = paramSpanned;
    return this;
  }
  
  public hno b(String paramString) {
    this.d = (Spanned)new SpannableString(paramString);
    return this;
  }
  
  public hno c(Spanned paramSpanned) {
    this.f = paramSpanned;
    return this;
  }
  
  public hno c(String paramString) {
    this.e = (Spanned)new SpannableString(paramString);
    return this;
  }
  
  public hno d(String paramString) {
    this.f = (Spanned)new SpannableString(paramString);
    return this;
  }
  
  public hno e(String paramString) {
    this.g = paramString;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hno.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */