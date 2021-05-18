import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import java.util.ArrayList;

public class ss extends acr {
  private sl a;
  
  private View c;
  
  private View d;
  
  private View e;
  
  private RecyclerView f;
  
  private acg g;
  
  private TextView h;
  
  private View i;
  
  private int j;
  
  private sp k;
  
  private yt l;
  
  private String m;
  
  private boolean n;
  
  public ss(ack paramack, yt paramyt, String paramString) {
    super(paramack);
    boolean bool;
    this.j = 0;
    this.g = (acg)paramack.a();
    this.a = new sl();
    this.l = paramyt;
    this.m = paramString;
    if (!this.g.w().isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    this.n = bool;
    b();
    c();
    a();
  }
  
  private void b() {
    boolean bool;
    this.g.c(new ArrayList());
    this.g.d(new ArrayList());
    this.c = e().findViewById(la.header_cancel);
    this.d = e().findViewById(la.header_titulo);
    this.e = e().findViewById(la.header_logo);
    this.h = (TextView)e().findViewById(la.efetivacao_titulo);
    this.i = e().findViewById(la.efe_loading);
    View view = this.i;
    if (this.g.l().size() > 1) {
      bool = true;
    } else {
      bool = false;
    } 
    view.setVisibility(bool);
    this.f = (RecyclerView)e().findViewById(la.efe_lista_efetivacao);
  }
  
  private void c() {
    this.c.setVisibility(4);
    this.d.setVisibility(8);
    this.e.setVisibility(0);
    this.k = new sp((Activity)e(), this.g.l());
    this.f.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.f.setAdapter(this.k);
  }
  
  public void a() {
    boolean bool;
    if (!this.g.w().isEmpty()) {
      bool = true;
    } else {
      bool = false;
    } 
    Boolean bool1 = Boolean.valueOf(bool);
    this.a.a((Context)e(), bool1, this.g.C(), this.l, this.m, new st(this, bool1));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */