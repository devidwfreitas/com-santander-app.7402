import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

class lpj implements Runnable {
  lpj(loz paramloz) {}
  
  public void run() {
    loz.c(this.a);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)loz.a(this.a), 1, false);
    loz.d(this.a).setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    loz.d(this.a).addItemDecoration(new mgw((Context)loz.a(this.a), mgx.GRAY_BACKGROUND_DETAILS));
    if (loz.a(this.a).c().e() != null && loz.a(this.a).c().e().size() > 0) {
      loz.a(this.a, new lkm(loz.a(this.a).c().e()));
      loz.d(this.a).setAdapter(loz.e(this.a));
      loz.d(this.a).setNestedScrollingEnabled(false);
      loz.d(this.a).setVisibility(0);
      return;
    } 
    loz.d(this.a).setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */