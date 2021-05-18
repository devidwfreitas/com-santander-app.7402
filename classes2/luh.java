import android.os.Handler;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;
import java.util.List;

public class luh extends RecyclerView.Adapter<lur> {
  private List<kvs> a;
  
  private kwh b;
  
  private boolean c = true;
  
  private lus d;
  
  private SinisterDetailActivity e;
  
  public luh(List<kvs> paramList, SinisterDetailActivity paramSinisterDetailActivity) {
    this.a = paramList;
    this.e = paramSinisterDetailActivity;
  }
  
  public luh(List<kvs> paramList, kwh paramkwh, SinisterDetailActivity paramSinisterDetailActivity) {
    this.a = paramList;
    this.b = paramkwh;
    this.e = paramSinisterDetailActivity;
  }
  
  private void a(int paramInt, View paramView1, View paramView2) {
    if (this.a.size() == 1) {
      paramView1.setVisibility(4);
      paramView2.setVisibility(4);
      return;
    } 
    if (paramInt == getItemCount() - 1) {
      paramView1.setVisibility(0);
      paramView2.setVisibility(4);
      return;
    } 
    if (paramInt == 0) {
      paramView1.setVisibility(4);
      paramView2.setVisibility(0);
      return;
    } 
    paramView1.setVisibility(0);
    paramView2.setVisibility(0);
  }
  
  private boolean a() {
    for (kvs kvs : this.a) {
      String str;
      if (TextUtils.isEmpty(kvs.d())) {
        str = "";
      } else {
        str = kvs.d().substring(0, 3);
      } 
      if ((str.equals("004") || str.equals("005")) && kvs.c().equals("02"))
        return false; 
    } 
    return true;
  }
  
  public lur a(ViewGroup paramViewGroup, int paramInt) {
    return new lur(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968837, paramViewGroup, false));
  }
  
  public void a(kwh paramkwh, int paramInt) {
    this.b = paramkwh;
    notifyDataSetChanged();
  }
  
  public void a(lur paramlur, int paramInt) {
    kvs kvs = this.a.get(paramlur.getAdapterPosition());
    lur.a(paramlur).setOnClickListener(null);
    lur.b(paramlur).setOnClickListener(null);
    lur.c(paramlur).setOnClickListener(null);
    lur.d(paramlur).c(false);
    lur.d(paramlur).setOnExpansionUpdateListener(null);
    if (kvs.a() != null && kvs.a().size() > 0) {
      lur.e(paramlur).setVisibility(8);
      lur.f(paramlur).setVisibility(8);
      lur.g(paramlur).setVisibility(8);
      lur.h(paramlur).setVisibility(0);
      a(paramlur.getAdapterPosition(), lur.i(paramlur), lur.j(paramlur));
      lur.k(paramlur).setText(mhj.a(kvs.e()));
      lur.l(paramlur).setText((CharSequence)Html.fromHtml(kvs.i()));
      (new Handler()).postDelayed(new lui(this, paramlur, kvs), 10L);
      if (this.c) {
        lur.d(paramlur).b(false);
        lur.o(paramlur).setRotation(180.0F);
      } else {
        lur.d(paramlur).c(false);
        lur.o(paramlur).setRotation(0.0F);
      } 
      lur.p(paramlur).setOnClickListener(new lum(this, paramlur));
      lur.d(paramlur).setOnExpansionUpdateListener(new lup(this, paramlur));
      return;
    } 
    String str = kvs.g();
    if ((str.equals("002") || str.equals("003")) && kvs.c().equals("02") && a()) {
      a(paramlur.getAdapterPosition(), lur.q(paramlur), lur.r(paramlur));
      lur.e(paramlur).setVisibility(8);
      lur.f(paramlur).setVisibility(0);
      lur.h(paramlur).setVisibility(8);
      lur.g(paramlur).setVisibility(8);
      if (str.equals("002")) {
        lur.s(paramlur).setImageResource(2130838466);
      } else {
        lur.s(paramlur).setImageResource(2130838381);
      } 
      lur.t(paramlur).setText(mhj.a(kvs.e()));
      lur.u(paramlur).setText((CharSequence)Html.fromHtml(kvs.h()));
      lur.a(paramlur).setOnClickListener(new luq(this, kvs));
      return;
    } 
    a(paramlur.getAdapterPosition(), lur.v(paramlur), lur.w(paramlur));
    lur.e(paramlur).setVisibility(0);
    lur.f(paramlur).setVisibility(8);
    lur.h(paramlur).setVisibility(8);
    if ((str.equals("003") && kvs.c().equals("03")) || (str.equals("002") && kvs.c().equals("02"))) {
      lur.x(paramlur).setImageResource(2130838466);
    } else {
      lur.x(paramlur).setImageResource(2130838381);
    } 
    lur.y(paramlur).setText(mhj.a(kvs.e()));
    lur.z(paramlur).setText((CharSequence)Html.fromHtml(kvs.h()));
  }
  
  public void a(lus paramlus) {
    this.d = paramlus;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\luh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */