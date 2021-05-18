import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.widget.Indicator;
import java.util.ArrayList;
import java.util.List;

public class gmm implements glb, glc {
  private fss a = new fss();
  
  private List<Integer> b = new ArrayList<Integer>();
  
  private int c;
  
  private int d;
  
  private Context e;
  
  private gla f;
  
  private Indicator g;
  
  private int h;
  
  private Dialog i;
  
  private int j;
  
  private ViewPager k;
  
  private String l;
  
  private String m;
  
  private String n;
  
  private String o;
  
  private String p;
  
  private boolean q;
  
  public gmm(Context paramContext, List<Integer> paramList) {
    this.e = paramContext;
    this.b = paramList;
  }
  
  private void a(gml paramgml) {
    if (paramgml.g() != 7 && paramgml.g() != 8)
      hau.a().c(Boolean.valueOf(true)); 
  }
  
  private void a(gmv paramgmv) {
    if (gmv.a(paramgmv) instanceof gmh || gmv.a(paramgmv) instanceof gmg || gmv.a(paramgmv) instanceof gmf) {
      gmv.g(paramgmv).setVisibility(8);
      gmv.l(paramgmv).setGravity(17);
      gmv.l(paramgmv).setText(gmv.a(paramgmv).d());
    } else {
      gmv.g(paramgmv).setVisibility(0);
      gmv.g(paramgmv).setText(gmv.a(paramgmv).c());
      gmv.l(paramgmv).setGravity(3);
      gmv.l(paramgmv).setText(gmv.a(paramgmv).d());
    } 
    if (gmv.a(paramgmv).e()) {
      gmv.g(paramgmv).setVisibility(0);
      return;
    } 
    gmv.g(paramgmv).setVisibility(8);
  }
  
  private void a(gmv paramgmv, boolean paramBoolean) {
    d(gmv.a(paramgmv).g());
    if (this.i == null || !this.i.isShowing())
      this.i = mxn.b((Activity)this.e); 
    this.j++;
    gmv.a(paramgmv).a(new gmu(this, paramgmv, paramBoolean));
  }
  
  private void b(gmv paramgmv) {
    gmv.c(paramgmv).setImageResource(2130838775);
    gmv.b(paramgmv).setVisibility(8);
    gmv.d(paramgmv).setVisibility(0);
    gmv.g(paramgmv).setVisibility(0);
    gmv.l(paramgmv).setGravity(3);
  }
  
  private void c(int paramInt) {
    if (paramInt == 7) {
      this.b.remove(1);
      return;
    } 
    if (paramInt == 8) {
      if (this.b.contains(Integer.valueOf(7))) {
        this.b.remove(2);
        return;
      } 
      this.b.remove(1);
      return;
    } 
  }
  
  private void c(gmv paramgmv) {
    gmv.c(paramgmv).setImageResource(2130838739);
    gmv.b(paramgmv).setVisibility(0);
    gmv.d(paramgmv).setVisibility(8);
  }
  
  private void d() {
    this.k.getAdapter().notifyDataSetChanged();
    this.g.setSize(this.k.getAdapter().getCount());
    this.k.setOffscreenPageLimit(this.k.getAdapter().getCount());
  }
  
  private void d(int paramInt) {
    if (paramInt == 8) {
      this.q = true;
      this.l = "CreditoFinanciamento_AnteciparIR_Elegivel";
      this.m = "CreditoFinanciamento_AnteciparIR_Indisponivel";
      this.n = "CreditoFinanciamento_CarrosselHomeLogada_Acao";
      this.p = "AnteciparIR";
      this.o = "AntecipacaoIR";
      return;
    } 
    if (paramInt == 7) {
      this.q = true;
      this.l = "CreditoFinanciamento_Antecipar13_Elegivel";
      this.m = "CreditoFinanciamento_Antecipar13_Indisponivel";
      this.n = "CreditoFinanciamento_Carrossel_HomeLogada_Acao";
      this.p = "Antecipar13o";
      this.o = "Antecipacao13";
      return;
    } 
    this.q = false;
  }
  
  private ViewPager.OnPageChangeListener e() {
    return (ViewPager.OnPageChangeListener)new gmn(this);
  }
  
  public int a() {
    return 2130968863;
  }
  
  public PagerAdapter a(View paramView, Context paramContext, List<?> paramList) {
    return new gmo(this, paramContext);
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(View paramView) {
    TextView textView = (TextView)paramView.findViewById(2131756489);
    textView.setText(this.e.getString(2131297918));
    ImageView imageView = (ImageView)paramView.findViewById(2131756488);
    imageView.setImageResource(2130838559);
    this.g = (Indicator)paramView.findViewById(2131756042);
    if (this.b.isEmpty()) {
      this.b.add(Integer.valueOf(3));
      this.b.add(Integer.valueOf(7));
      this.b.add(Integer.valueOf(8));
      this.b.add(Integer.valueOf(11));
      this.b.add(Integer.valueOf(10));
      this.b.add(Integer.valueOf(9));
    } 
    this.k = (ViewPager)paramView.findViewById(2131756490);
    if (this.b.size() > 0) {
      PagerAdapter pagerAdapter = a(paramView, this.e, this.b);
      this.k.setAdapter(pagerAdapter);
      this.k.setOffscreenPageLimit(pagerAdapter.getCount());
      this.k.setOnPageChangeListener(e());
      this.g.setSize(pagerAdapter.getCount());
      if (pagerAdapter.getCount() <= 1)
        this.g.setVisibility(8); 
      return;
    } 
    textView.setVisibility(8);
    imageView.setVisibility(8);
    this.g.setVisibility(8);
    this.k.setVisibility(8);
  }
  
  public void a(gla paramgla) {
    this.f = paramgla;
  }
  
  public <T> void a(T paramT) {
    this.a = (fss)paramT;
  }
  
  public <T> T b() {
    return (T)this.a;
  }
  
  public void b(@ColorInt int paramInt) {
    this.h = paramInt;
  }
  
  public void b(View paramView) {
    a(paramView);
  }
  
  public void b(Object paramObject) {
    if (paramObject instanceof Integer)
      c(((Integer)paramObject).intValue()); 
    d();
  }
  
  public int c() {
    return this.d;
  }
  
  public void c(Object paramObject) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gmm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */