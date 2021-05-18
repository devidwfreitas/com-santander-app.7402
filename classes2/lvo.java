import android.support.v4.view.ViewCompat;
import android.view.View;

class lvo implements mdg<lvn<Parent, SubItem>> {
  lvo(lvn paramlvn) {}
  
  public boolean a(View paramView, mdm<lvn> parammdm, lvn paramlvn, int paramInt) {
    null = true;
    boolean bool = false;
    if (paramlvn.j_() != null) {
      if (!paramlvn.f()) {
        ViewCompat.animate(paramView.findViewById(2131758652)).rotation(180.0F).start();
        lvn.a(this.a, true);
      } else {
        ViewCompat.animate(paramView.findViewById(2131758652)).rotation(0.0F).start();
        lvn.a(this.a, false);
      } 
      if (this.a.a != null)
        this.a.a.a(paramlvn.f()); 
      if (lvn.a(this.a) != null) {
        null = bool;
        return lvn.a(this.a).a(paramView, parammdm, paramlvn, paramInt) ? true : null;
      } 
    } else {
      if (lvn.a(this.a) == null || !lvn.a(this.a).a(paramView, parammdm, paramlvn, paramInt))
        null = false; 
      return null;
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */