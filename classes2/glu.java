import android.app.Activity;
import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;

public class glu implements glb {
  private Activity a;
  
  private TextView b;
  
  private ImageView c;
  
  private boolean d = true;
  
  private View.OnClickListener e;
  
  private LinearLayout f;
  
  private RelativeLayout g;
  
  private ImageView h;
  
  private Button i;
  
  private TextView j;
  
  private TextView k;
  
  private TextView l;
  
  private TextView m;
  
  private TextView n;
  
  private jdf o;
  
  private int p;
  
  private gla q;
  
  public glu(Activity paramActivity, View.OnClickListener paramOnClickListener) {
    this.e = paramOnClickListener;
    this.a = paramActivity;
  }
  
  private void a(View paramView, Activity paramActivity) {
    this.f = (LinearLayout)paramView.findViewById(2131756445);
    this.j = (TextView)paramView.findViewById(2131756441);
    this.h = (ImageView)paramView.findViewById(2131756442);
    this.i = (Button)paramView.findViewById(2131756444);
    this.g = (RelativeLayout)paramView.findViewById(2131756440);
    this.k = (TextView)paramView.findViewById(2131756448);
    this.l = (TextView)paramView.findViewById(2131756449);
    this.m = (TextView)paramView.findViewById(2131756450);
    this.n = (TextView)paramView.findViewById(2131756451);
    this.i.setText(paramActivity.getString(2131298005));
    this.j.setText(paramActivity.getString(2131298040));
    this.k.setText(paramActivity.getString(2131298004));
    this.m.setVisibility(8);
    this.n.setVisibility(8);
    this.i.setOnClickListener(new glv(this));
    this.f.setOnClickListener(new glw(this));
    this.g.setOnClickListener(new glx(this));
    a(true);
  }
  
  private void a(boolean paramBoolean) {
    if (!paramBoolean)
      if (this.d) {
        frq.d("Outros_ExibirEOcultar_Investimentos_Acao", "Ocultar");
      } else {
        frq.d("Outros_ExibirEOcultar_Investimentos_Acao", "Exibir ");
      }  
    if (this.d) {
      this.f.setVisibility(8);
      this.i.setVisibility(0);
      this.h.setImageResource(2130838739);
      return;
    } 
    this.f.setVisibility(0);
    this.i.setVisibility(8);
    this.h.setImageResource(2130838775);
  }
  
  private void e() {
    jcw.a(this.a, this.o);
  }
  
  public int a() {
    return 2130968864;
  }
  
  public PagerAdapter a(View paramView, Context paramContext, List<?> paramList) {
    return null;
  }
  
  public void a(int paramInt) {}
  
  public void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131756489);
    this.b.setText(this.a.getString(2131297946));
    this.c = (ImageView)paramView.findViewById(2131756488);
    this.c.setImageResource(2130838561);
    a(paramView, this.a);
  }
  
  public void a(gla paramgla) {
    this.q = paramgla;
  }
  
  public <T> void a(T paramT) {}
  
  public void a(jdf paramjdf) {
    this.o = paramjdf;
    if (this.o.e() != null && !this.o.e().equalsIgnoreCase("R$ 0,00")) {
      this.l.setText(this.o.e());
      return;
    } 
    this.l.setText(naj.f(paramjdf.c()));
  }
  
  public <T> T b() {
    return null;
  }
  
  public void b(@ColorInt int paramInt) {
    this.p = paramInt;
  }
  
  public void b(View paramView) {
    a(paramView);
  }
  
  public void b(Object paramObject) {}
  
  public int c() {
    return 0;
  }
  
  public void d() {
    this.l.setText("Serviço indisponível");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */