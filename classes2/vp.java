import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

public class vp extends acr {
  private ImageButton a;
  
  private TextView c;
  
  private RecyclerView d;
  
  private va e;
  
  private View f;
  
  private View g;
  
  private acg h;
  
  public vp(ack paramack) {
    super(paramack);
    b();
    if (this.h.a() != null) {
      a();
      return;
    } 
    d();
  }
  
  private void a() {
    a(new vq(this));
  }
  
  private void a(va paramva) {
    for (uz uz : paramva.a()) {
      if (uz.c().equals(this.h.a())) {
        zs.a().a((Context)e(), uz, this.h);
        break;
      } 
    } 
  }
  
  private void b() {
    this.h = (acg)e().a();
    this.a = (ImageButton)e().findViewById(la.header_cancel);
    this.c = (TextView)e().findViewById(la.header_titulo);
    this.d = (RecyclerView)e().findViewById(la.list_subp_rv_familias);
    this.f = e().findViewById(la.list_subp_loading);
    this.g = e().findViewById(la.list_subp_main_view);
  }
  
  private void c() {
    this.a.setImageResource(kz.ic_back);
    this.a.setOnClickListener(new vs(this));
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.d.setAdapter(new vf((Context)e(), this.e.a()));
    this.d.setNestedScrollingEnabled(false);
  }
  
  private void d() {
    this.f.setVisibility(0);
    this.g.setVisibility(8);
    (new vb((Context)e())).a(new vt(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */