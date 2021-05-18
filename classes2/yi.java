import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class yi extends acr {
  private xy a;
  
  private LinearLayout c;
  
  private RelativeLayout d;
  
  private TextView e;
  
  private ImageButton f;
  
  private RecyclerView g;
  
  private ace h;
  
  public yi(ack paramack, ace paramace) {
    super(paramack);
    this.h = paramace;
    this.a = new xy();
    c();
    a();
    b();
  }
  
  private void a() {
    this.c = (LinearLayout)e().findViewById(la.termo_aceite_layout_tela);
    this.d = (RelativeLayout)e().findViewById(la.termo_aceite_loading);
    this.e = (TextView)e().findViewById(la.header_titulo);
    this.f = (ImageButton)e().findViewById(la.header_cancel);
    this.g = (RecyclerView)e().findViewById(la.termo_aceite_lista);
  }
  
  private void a(xx paramxx) {
    if (paramxx.a().size() == 1) {
      e().finish();
      zs.a().a((Context)e(), ((yb)paramxx.a().get(0)).a());
      return;
    } 
    this.e.setText(e().getResources().getString(lg.termo_aceite));
    this.f.setImageResource(kz.ic_back);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)e());
    this.g.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.g.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.g.setNestedScrollingEnabled(false);
    this.g.setAdapter(new yc(paramxx.a(), (Context)e()));
    this.d.setVisibility(8);
    this.c.setVisibility(0);
  }
  
  private void b() {
    this.f.setOnClickListener(new yj(this));
  }
  
  private void c() {
    this.a.a((Context)e(), this.h, new yk(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\yi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */