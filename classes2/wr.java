import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class wr extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  public List<wq> a = new ArrayList<wq>();
  
  public sy b;
  
  public Context c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  public wr(sy paramsy, List<wq> paramList, Context paramContext) {
    this.c = paramContext;
    this.b = paramsy;
    this.a = paramList;
    a();
  }
  
  private void a() {
    this.d = this.c.getString(lg.CDB);
    this.f = this.c.getString(lg.FUNDOS);
    this.e = this.c.getString(lg.POUPANCA);
  }
  
  private void a(wt paramwt) {
    if (this.b.b().equals(this.d)) {
      wt.b(paramwt).setVisibility(0);
      wt.c(paramwt).setVisibility(8);
      wt.d(paramwt).setVisibility(8);
      wt.e(paramwt).setVisibility(0);
    } 
    if (this.b.b().equals(this.f)) {
      wt.c(paramwt).setVisibility(0);
      wt.b(paramwt).setVisibility(8);
      wt.d(paramwt).setVisibility(8);
      wt.e(paramwt).setVisibility(8);
    } 
    if (this.b.b().equals(this.e)) {
      wt.d(paramwt).setVisibility(0);
      wt.c(paramwt).setVisibility(8);
      wt.b(paramwt).setVisibility(8);
      wt.e(paramwt).setVisibility(0);
    } 
  }
  
  private void a(wt paramwt, wq paramwq) {
    acg acg = new acg();
    acg.c(this.b.a());
    acg.b(this.b.c());
    acg.a(Integer.valueOf(Color.parseColor(this.b.d())));
    acg.a(paramwq.b());
    acg.a(paramwq.a());
    Log.d("PRODUCT_", paramwq.a().k());
    wt.a(paramwt).setOnClickListener(new ws(this, acg));
  }
  
  private void b(wt paramwt, wq paramwq) {
    to to = paramwq.a();
    tk tk = paramwq.b();
    String str = this.b.b();
    boolean bool1 = str.equals(this.d);
    boolean bool2 = str.equals(this.f);
    boolean bool3 = str.equals(this.e);
    for (acc acc : paramwq.c()) {
      if (bool1) {
        if (wt.f(paramwt).getText().toString().isEmpty()) {
          wt.f(paramwt).setText(" " + acc.b());
          continue;
        } 
        if (wt.g(paramwt).getText().toString().isEmpty()) {
          wt.g(paramwt).setText(" " + acc.b());
          continue;
        } 
        if (wt.h(paramwt).getText().toString().isEmpty()) {
          wt.h(paramwt).setText(" " + acc.b());
          continue;
        } 
        if (wt.i(paramwt).getText().toString().isEmpty()) {
          wt.i(paramwt).setText(" " + acc.b());
          continue;
        } 
      } 
      if (bool2)
        wt.j(paramwt).setText(" " + acc.b()); 
      if (bool3)
        wt.f(paramwt).setText(" " + acc.b()); 
    } 
    wt.k(paramwt).setText(to.k());
    wt.l(paramwt).setText(to.l() + ": ");
    wt.m(paramwt).setText(tk.a());
    wt.n(paramwt).setText(aat.a(tk.c().a()));
    paramwt.a.setBackgroundColor(Color.parseColor(this.b.d()));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    wt wt = (wt)paramViewHolder;
    wq wq = this.a.get(paramInt);
    a(wt);
    a(wt, wq);
    b((wt)paramViewHolder, wq);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return new wt(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_resgate_contratos, paramViewGroup, false));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */