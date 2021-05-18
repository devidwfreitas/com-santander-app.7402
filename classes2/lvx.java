import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import java.util.List;

public class lvx<Parent extends mdt & mdp & mdx & mdn> extends mew<Parent, lvy, lvx<Parent>> implements mdo<lvx, mdt> {
  private kvs a;
  
  private boolean i;
  
  private boolean j = true;
  
  private boolean k = true;
  
  private boolean l = true;
  
  private boolean m = true;
  
  private void b(lvy paramlvy) {
    byte b;
    boolean bool = false;
    View view2 = lvy.d(paramlvy);
    if (this.j) {
      b = 0;
    } else {
      b = 4;
    } 
    view2.setVisibility(b);
    view2 = lvy.e(paramlvy);
    if (this.k) {
      b = 0;
    } else {
      b = 4;
    } 
    view2.setVisibility(b);
    View view1 = lvy.f(paramlvy);
    if (this.l) {
      b = bool;
    } else {
      b = 4;
    } 
    view1.setVisibility(b);
  }
  
  public lvx a(kvs paramkvs) {
    this.a = paramkvs;
    return this;
  }
  
  public lvx a(boolean paramBoolean) {
    this.i = paramBoolean;
    return this;
  }
  
  public lvy a(View paramView) {
    return new lvy(paramView);
  }
  
  public void a(lvy paramlvy) {
    super.a(paramlvy);
    lvy.a(paramlvy).setImageResource(0);
    lvy.b(paramlvy).setText(null);
    lvy.c(paramlvy).setText(null);
    b(paramlvy);
  }
  
  public void a(lvy paramlvy, List<Object> paramList) {
    super.a(paramlvy, paramList);
    if (this.i) {
      lvy.a(paramlvy).setImageResource(2130838381);
    } else {
      lvy.a(paramlvy).setImageResource(2130838667);
    } 
    if (!TextUtils.isEmpty(this.a.h()))
      lvy.b(paramlvy).setText((CharSequence)Html.fromHtml(this.a.h())); 
    lvy.c(paramlvy).setText(mhj.a(this.a.e()));
    b(paramlvy);
  }
  
  public boolean a() {
    return this.m;
  }
  
  public int b() {
    return 2131755024;
  }
  
  public lvx b(boolean paramBoolean) {
    this.j = paramBoolean;
    return this;
  }
  
  public int c() {
    return 2130969455;
  }
  
  public lvx d(boolean paramBoolean) {
    this.l = paramBoolean;
    return this;
  }
  
  public lvx e(boolean paramBoolean) {
    this.k = paramBoolean;
    return this;
  }
  
  public lvx f(boolean paramBoolean) {
    this.m = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */