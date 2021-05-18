import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import java.util.LinkedList;
import java.util.List;

public class ktq extends ktr {
  private List<Spannable> a;
  
  private int b = 0;
  
  private boolean c;
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  public void a(Spannable paramSpannable) {
    if (this.a == null)
      this.a = new LinkedList<Spannable>(); 
    this.a.add(paramSpannable);
  }
  
  public void a(String paramString) {
    if (!TextUtils.isEmpty(paramString))
      a((Spannable)new SpannableStringBuilder(paramString)); 
  }
  
  public void a(List<Spannable> paramList) {
    this.a = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public boolean a() {
    return this.c;
  }
  
  public List<Spannable> b() {
    return this.a;
  }
  
  public int c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ktq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */