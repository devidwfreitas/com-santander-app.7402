import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

class st implements sn {
  st(ss paramss, Boolean paramBoolean) {}
  
  public void a(abv paramabv) {
    ss.a(this.b).d(new ArrayList());
    ss.a(this.b).c(new ArrayList());
    lk lk = (lk)paramabv;
    Iterator<lv> iterator = lk.k().iterator();
    Boolean bool = Boolean.valueOf(false);
    while (iterator.hasNext()) {
      lv lv = iterator.next();
      int i = Color.parseColor(lv.b());
      for (lw lw : lv.i()) {
        for (lm lm : lw.h()) {
          boolean bool1;
          ace ace = new ace(lw, lv.a(), Integer.valueOf(i), lm, ((lv)lk.k().get(0)).c());
          sk sk = new sk();
          sk.b(lm.p());
          sk.a(lm.q());
          ace.a(sk);
          ace.f().i(lw.l());
          ace.r().a(lm.a());
          ss.a(this.b).b(((lv)lk.k().get(0)).a());
          ace.a(Boolean.valueOf(lm.r().equalsIgnoreCase("EF")));
          ace.a(lk.j());
          if (!this.a.booleanValue()) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
          ace.f(bool1);
          ace.a(new ou(lm.j().a(), lm.j().b(), lm.j().c()));
          if (lm.r().equalsIgnoreCase("EF")) {
            bool = Boolean.valueOf(true);
            ss.a(this.b).u().add(ace);
            continue;
          } 
          ss.a(this.b).v().add(ace);
        } 
      } 
    } 
    ss.a(this.b, new sp((Activity)this.b.e(), ss.a(this.b).u()));
    ss.b(this.b).setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.b.e()));
    ss.b(this.b).setAdapter(ss.c(this.b));
    if (bool.booleanValue()) {
      zs.a().f((Context)this.b.e(), ss.a(this.b));
      return;
    } 
    zs.a().e((Context)this.b.e(), ss.a(this.b));
  }
  
  public void a(aby paramaby) {
    aad.a((Context)this.b.e(), new su(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\st.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */