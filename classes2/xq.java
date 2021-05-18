import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Collections;

public class xq extends acr {
  private Activity a;
  
  private ImageButton c;
  
  private acg d;
  
  private TextView e;
  
  private RecyclerView f;
  
  private RelativeLayout g;
  
  private LinearLayout h;
  
  public xq(ack paramack) {
    super(paramack);
    this.a = (Activity)paramack;
    this.d = (acg)e().a();
    a();
    a(new te(paramack.getApplicationContext()));
  }
  
  private void a() {
    this.c = (ImageButton)this.a.findViewById(la.header_cancel);
    this.e = (TextView)this.a.findViewById(la.header_titulo);
    this.e.setText(lg.app_investimentos_titulo);
    this.c.setImageResource(kz.ic_back);
    this.c.setOnClickListener(new xr(this));
    this.f = (RecyclerView)this.a.findViewById(la.resgate_recycler_view);
    this.g = (RelativeLayout)this.a.findViewById(la.inv2_portifolio_layout_loadinig);
    this.h = (LinearLayout)this.a.findViewById(la.configurar_inv_main);
  }
  
  private void a(te paramte) {
    paramte.a(new xs(this));
  }
  
  private void a(tm paramtm) {
    this.f.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.f.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.f.setNestedScrollingEnabled(false);
    for (int i = 0; i < paramtm.b().size(); i++) {
      if (((sy)paramtm.b().get(i)).i().a().doubleValue() <= 0.0D)
        paramtm.b().remove(i); 
    } 
    Collections.sort(paramtm.b(), new xv(this));
    this.f.setAdapter(new wu(paramtm.b(), this.d, (Context)e()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\xq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */