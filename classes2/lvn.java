import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.View;
import android.widget.ImageView;
import java.util.List;

public class lvn<Parent extends mdt & mdp, SubItem extends mdt & mdx> extends mew<lvn<Parent, SubItem>, lvp, SubItem> {
  lvq a;
  
  private mdg<lvn> i;
  
  private boolean j;
  
  private boolean k;
  
  private boolean l;
  
  private boolean m;
  
  private boolean n = false;
  
  private kvs o;
  
  private final mdg<lvn<Parent, SubItem>> p = new lvo(this);
  
  public lvn<Parent, SubItem> a(kvs paramkvs) {
    this.o = paramkvs;
    return this;
  }
  
  public lvn<Parent, SubItem> a(lvq paramlvq) {
    this.a = paramlvq;
    return this;
  }
  
  public lvn<Parent, SubItem> a(mdg<lvn> parammdg) {
    this.i = parammdg;
    return this;
  }
  
  public lvn<Parent, SubItem> a(boolean paramBoolean) {
    this.k = paramBoolean;
    return this;
  }
  
  public lvp a(View paramView) {
    return new lvp(paramView);
  }
  
  public mdg<lvn> a() {
    return this.i;
  }
  
  public void a(lvp paramlvp) {
    float f;
    byte b;
    super.a(paramlvp);
    lvp.b(paramlvp).setText(null);
    lvp.a(paramlvp).setText(null);
    ImageView imageView = lvp.c(paramlvp);
    if (f()) {
      f = 180.0F;
    } else {
      f = 0.0F;
    } 
    imageView.setRotation(f);
    lvp.d(paramlvp).setImageResource(0);
    View view = lvp.e(paramlvp);
    if (this.l) {
      b = 0;
    } else {
      b = 4;
    } 
    view.setVisibility(b);
    view = lvp.f(paramlvp);
    if (this.m) {
      b = 0;
    } else {
      b = 4;
    } 
    view.setVisibility(b);
    if (this.n) {
      lvp.d(paramlvp).setVisibility(4);
      return;
    } 
    lvp.d(paramlvp).setVisibility(0);
  }
  
  public void a(lvp paramlvp, List<Object> paramList) {
    float f;
    byte b;
    boolean bool = false;
    super.a(paramlvp, paramList);
    lvp.a(paramlvp).setText((CharSequence)Html.fromHtml(this.o.i()));
    lvp.b(paramlvp).setText(mhj.a(this.o.e()));
    ImageView imageView = lvp.c(paramlvp);
    if (f()) {
      f = 180.0F;
    } else {
      f = 0.0F;
    } 
    imageView.setRotation(f);
    if (this.j) {
      lvp.d(paramlvp).setImageResource(2130838381);
    } else {
      lvp.d(paramlvp).setImageResource(2130838667);
    } 
    if (this.n)
      lvp.d(paramlvp).setVisibility(4); 
    View view2 = lvp.e(paramlvp);
    if (this.l) {
      b = 0;
    } else {
      b = 4;
    } 
    view2.setVisibility(b);
    View view1 = lvp.f(paramlvp);
    if (this.m) {
      b = bool;
    } else {
      b = 4;
    } 
    view1.setVisibility(b);
  }
  
  public int b() {
    return 2131755014;
  }
  
  public lvn<Parent, SubItem> b(boolean paramBoolean) {
    this.j = paramBoolean;
    return this;
  }
  
  public int c() {
    return 2130969459;
  }
  
  public lvn<Parent, SubItem> c(boolean paramBoolean) {
    this.n = paramBoolean;
    return this;
  }
  
  public lvn<Parent, SubItem> d(boolean paramBoolean) {
    this.l = paramBoolean;
    return this;
  }
  
  public mdg<lvn<Parent, SubItem>> d() {
    return this.p;
  }
  
  public lvn<Parent, SubItem> e(boolean paramBoolean) {
    this.m = paramBoolean;
    return this;
  }
  
  public boolean e() {
    return (j_() == null);
  }
  
  public boolean f() {
    return this.k;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */