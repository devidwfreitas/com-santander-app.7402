import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

class gmo extends PagerAdapter {
  private List<gmv> c = new ArrayList<gmv>();
  
  private boolean d = false;
  
  gmo(gmm paramgmm, Context paramContext) {}
  
  private void a() {
    if (this.d) {
      frq.d("Outros_ExibirEOcultar_Emprestimos_Acao", "Ocultar");
      this.d = false;
      for (gmv gmv : this.c)
        gmm.a(this.b, gmv); 
    } else {
      frq.d("Outros_ExibirEOcultar_Emprestimos_Acao", "Exibir");
      this.d = true;
      for (gmv gmv : this.c) {
        if (gmv.a(gmv).f()) {
          gmm.a(this.b, gmv, false);
          continue;
        } 
        gmm.b(this.b, gmv);
        gmm.c(this.b, gmv);
      } 
    } 
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return gmm.b(this.b).size();
  }
  
  public int getItemPosition(Object paramObject) {
    return -2;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = paramViewGroup.getChildAt(paramInt);
    if (view == null) {
      view = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130968838, null);
      gmv gmv1 = new gmv(this.b, view);
      switch (((Integer)gmm.b(this.b).get(paramInt)).intValue()) {
        default:
          view.setTag(gmv1);
          this.c.add(gmv1);
          gmv.b(gmv1).setText(gmv.a(gmv1).b());
          gmv.b(gmv1).setVisibility(0);
          gmv.c(gmv1).setImageResource(2130838739);
          gmv.d(gmv1).setVisibility(8);
          gmv.e(gmv1).setOnClickListener(new gmp(this));
          gmv.c(gmv1).setOnClickListener(new gmq(this));
          gmv.f(gmv1).setOnClickListener(new gmr(this, gmv1));
          gmv.d(gmv1).setOnClickListener(new gms(this, gmv1));
          gmv.b(gmv1).setOnClickListener(new gmt(this, gmv1));
          gmv.g(gmv1).setVisibility(0);
          gmv.g(gmv1).setText(gmv.a(gmv1).c());
          gmv.h(gmv1).setText(gmv.a(gmv1).a());
          gmv.i(gmv1).setVisibility(4);
          gmv.j(gmv1).setVisibility(8);
          gmv.k(gmv1).setVisibility(8);
          paramViewGroup.addView(view);
          return view;
        case 11:
          gmv.a(gmv1, new gmi(gmm.c(this.b)));
        case 10:
          gmv.a(gmv1, new gmj(gmm.c(this.b)));
        case 7:
          gmv.a(gmv1, new gmg(gmm.c(this.b)));
        case 8:
          gmv.a(gmv1, new gmh(gmm.c(this.b)));
        case 9:
          gmv.a(gmv1, new gmf(gmm.c(this.b)));
        case 3:
          break;
      } 
      gmv.a(gmv1, new gmk(gmm.c(this.b)));
    } 
    gmv gmv = (gmv)view.getTag();
    gmv.b(gmv).setText(gmv.a(gmv).b());
    gmv.b(gmv).setVisibility(0);
    gmv.c(gmv).setImageResource(2130838739);
    gmv.d(gmv).setVisibility(8);
    gmv.e(gmv).setOnClickListener(new gmp(this));
    gmv.c(gmv).setOnClickListener(new gmq(this));
    gmv.f(gmv).setOnClickListener(new gmr(this, gmv));
    gmv.d(gmv).setOnClickListener(new gms(this, gmv));
    gmv.b(gmv).setOnClickListener(new gmt(this, gmv));
    gmv.g(gmv).setVisibility(0);
    gmv.g(gmv).setText(gmv.a(gmv).c());
    gmv.h(gmv).setText(gmv.a(gmv).a());
    gmv.i(gmv).setVisibility(4);
    gmv.j(gmv).setVisibility(8);
    gmv.k(gmv).setVisibility(8);
    paramViewGroup.addView(view);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */