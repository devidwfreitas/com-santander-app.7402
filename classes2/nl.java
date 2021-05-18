import android.content.Context;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import java.io.IOException;
import java.util.ArrayList;

public class nl extends acr {
  public static final int a = 99;
  
  private NestedScrollView c;
  
  private View d;
  
  private TextView e;
  
  private RecyclerView f;
  
  private Button g;
  
  private ImageButton h;
  
  private acg i;
  
  public nl(ack paramack) {
    super(paramack);
    this.i = (acg)paramack.a();
    b();
    d();
    c();
  }
  
  private void a(ne paramne) {
    this.e.setText(paramne.a());
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)e());
    this.f.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.f.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.f.setNestedScrollingEnabled(false);
    ArrayList<nc> arrayList = new ArrayList();
    for (nc nc : paramne.b().a()) {
      if (nc.a() != null && !nc.a().isEmpty() && nc.b() != null && !nc.b().isEmpty())
        arrayList.add(nc); 
    } 
    this.f.setAdapter(new ni(arrayList, (Context)e()));
    this.d.setVisibility(8);
  }
  
  private void b() {
    this.c = (NestedScrollView)e().findViewById(la.cdb_progressivo_body);
    this.d = e().findViewById(la.cdb_progressivo_loading);
    this.e = (TextView)e().findViewById(la.cdb_progressivo_text);
    this.f = (RecyclerView)e().findViewById(la.cdb_progressivo_lista);
    this.g = (Button)e().findViewById(la.cdb_progressivo_btn_compartilhar);
    this.h = (ImageButton)e().findViewById(la.print_cancel);
    this.h.setImageResource(kz.ic_back);
    this.h.setVisibility(0);
  }
  
  private void c() {
    this.h.setOnClickListener(new nm(this));
    this.g.setOnClickListener(new nn(this));
  }
  
  private void d() {
    (new nf()).a((Context)e(), this.i.n().i(), this.i.n().j(), this.i.y(), this.i.z(), new no(this));
  }
  
  public void a() {
    try {
      this.h.setVisibility(8);
      aau.a((Context)e(), (View)this.c);
      this.h.setVisibility(0);
      return;
    } catch (IOException iOException) {
      Log.d("SHARE CDB", iOException.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */