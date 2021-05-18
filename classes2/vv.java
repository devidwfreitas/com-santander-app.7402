import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.Collections;

public class vv extends acr {
  private uz a;
  
  private ImageButton c;
  
  private TextView d;
  
  private RecyclerView e;
  
  private TextView f;
  
  private TextView g;
  
  public vv(ack paramack, uz paramuz) {
    super(paramack);
    this.a = paramuz;
    a();
  }
  
  private void a() {
    Collections.sort(this.a.e());
    this.c = (ImageButton)e().findViewById(la.header_cancel);
    this.d = (TextView)e().findViewById(la.header_titulo);
    this.e = (RecyclerView)e().findViewById(la.all_subp_lista_subp);
    this.f = (TextView)e().findViewById(la.all_subp_family_name);
    this.g = (TextView)e().findViewById(la.all_subp_header_text);
    b();
  }
  
  private void b() {
    this.c.setImageResource(kz.ic_back);
    this.c.setOnClickListener(new vw(this));
    this.d.setText(this.a.a());
    this.e.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.e.setAdapter(new vi((Context)e(), this.a, this.a.e(), true));
    this.e.setNestedScrollingEnabled(false);
    this.e.setFocusable(false);
    this.f.setText(this.a.a());
    this.g.setText(this.a.d());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */