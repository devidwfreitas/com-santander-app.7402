import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;

public class ym extends acr {
  public static final int a = 1;
  
  private xy c = new xy();
  
  private String d;
  
  private String e;
  
  private TextView f;
  
  private TextView g;
  
  private Button h;
  
  private ScrollView i;
  
  private ImageButton j;
  
  private TextView k;
  
  private ImageView l;
  
  @Deprecated
  public ym(ack paramack, String paramString1, String paramString2) {
    super(paramack);
    this.d = paramString1;
    this.e = paramString2;
    g();
    b();
  }
  
  private void b() {
    this.f = (TextView)e().findViewById(la.termo_recusa_title);
    this.g = (TextView)e().findViewById(la.termo_recusa_texto);
    this.h = (Button)e().findViewById(la.term_btn_compartilhar);
    this.i = (ScrollView)e().findViewById(la.container_termo_recusa);
    this.j = (ImageButton)e().findViewById(la.header_cancel);
    this.k = (TextView)e().findViewById(la.header_titulo);
    this.l = (ImageView)e().findViewById(la.header_logo);
    d();
    c();
  }
  
  private void c() {
    this.f.setText(this.d);
    this.g.setText(this.e);
    this.j.setImageResource(kz.ic_back);
  }
  
  private void d() {
    this.k.setVisibility(8);
    this.l.setVisibility(0);
    this.j.setOnClickListener((View.OnClickListener)new yn(this));
    this.h.setOnClickListener((View.OnClickListener)new yo(this));
  }
  
  private void g() {
    yp yp = new yp(this);
    this.c.a((Context)e(), (ya)yp, "1");
  }
  
  public void a() {
    try {
      aau.a((Context)e(), (View)this.i);
      return;
    } catch (Exception exception) {
      Log.e("OPPs", exception.toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ym.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */