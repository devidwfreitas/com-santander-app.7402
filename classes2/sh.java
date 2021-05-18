import android.content.Context;
import java.util.List;

class sh implements qy {
  sh(rz paramrz, tk paramtk) {}
  
  public void a(abv paramabv) {
    qu qu = (qu)paramabv;
    for (abz abz : this.a.h()) {
      for (abz abz1 : qu.a()) {
        if (abz.a().equalsIgnoreCase(abz1.a())) {
          List list = abz.d();
          list.addAll(abz1.d());
          abz.a(list);
        } 
      } 
    } 
    rz.b(this.b).setVisibility(8);
    rz.d(this.b).a(rz.c(this.b));
  }
  
  public void a(aby paramaby) {
    aad.a((Context)this.b.e(), new si(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\sh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */