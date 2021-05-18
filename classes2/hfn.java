import android.text.Html;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.StyleSpan;

public abstract class hfn implements hgb {
  protected hfy a;
  
  public hfn() {}
  
  public hfn(hfy paramhfy) {
    this.a = paramhfy;
  }
  
  public int a() {
    return 0;
  }
  
  Spanned a(String paramString) {
    return Html.fromHtml(myx.b(myx.a(paramString)));
  }
  
  AbsoluteSizeSpan a(int paramInt) {
    return new AbsoluteSizeSpan(paramInt, true);
  }
  
  public String b() {
    return h();
  }
  
  AlignmentSpan c() {
    return (AlignmentSpan)new AlignmentSpan.Standard(Layout.Alignment.ALIGN_CENTER);
  }
  
  AlignmentSpan d() {
    return (AlignmentSpan)new AlignmentSpan.Standard(Layout.Alignment.ALIGN_OPPOSITE);
  }
  
  StyleSpan e() {
    return new StyleSpan(1);
  }
  
  public Object[] f() {
    return new Object[] { d(), e() };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */