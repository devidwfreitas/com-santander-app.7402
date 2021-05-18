import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;

public class ma extends RecyclerView.Adapter<mj> {
  private List<ace> a;
  
  private mr b;
  
  private acg c;
  
  private Context d;
  
  private Boolean e = Boolean.valueOf(false);
  
  private String f;
  
  private boolean g;
  
  public ma(acg paramacg, mr parammr, Context paramContext) {
    if (paramacg.w().isEmpty()) {
      this.a = paramacg.l();
      this.g = false;
    } else {
      this.a = paramacg.w();
      this.g = true;
    } 
    this.b = parammr;
    this.c = paramacg;
    this.d = paramContext;
  }
  
  private List<acc> a(List<acc> paramList) {
    boolean bool = false;
    try {
      if (this.g && this.c.b()) {
        Iterator<abz> iterator = ((tk)this.c.r().get(0)).h().iterator();
        while (true) {
          if (iterator.hasNext()) {
            abz abz = iterator.next();
            if (!bool) {
              for (acc acc : abz.d()) {
                if (acc.c().equalsIgnoreCase("valorTaxaSaida")) {
                  for (acc acc1 : paramList) {
                    if (acc1.c().equalsIgnoreCase("taxaSaidaResgate"))
                      acc1.b(acc.b()); 
                  } 
                  bool = true;
                } 
              } 
              continue;
            } 
          } 
          return paramList;
        } 
      } 
    } catch (Exception exception) {
      Log.d(getClass().getSimpleName(), "Erro Sistemico", exception);
    } 
    return paramList;
  }
  
  private void b(mj parammj) {
    if (parammj.f.getMaxLines() == 2) {
      parammj.f.setMaxLines(20);
      parammj.g.setVisibility(8);
      return;
    } 
    parammj.f.setMaxLines(2);
    parammj.g.setVisibility(0);
  }
  
  public mj a(ViewGroup paramViewGroup, int paramInt) {
    return new mj(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_carrinho_item, paramViewGroup, false));
  }
  
  public void a(mj parammj) {
    super.onViewAttachedToWindow(parammj);
    if (this.f != null && !this.f.isEmpty())
      parammj.f.getViewTreeObserver().addOnGlobalLayoutListener(new mb(this, parammj)); 
  }
  
  public void a(mj parammj, int paramInt) {
    byte b = 8;
    int i = parammj.getAdapterPosition();
    parammj.a = this.a.get(i);
    try {
      this.e = Boolean.valueOf(parammj.a.r().l().equalsIgnoreCase("S"));
    } catch (Exception exception) {
      this.e = Boolean.valueOf(false);
    } 
    parammj.i.setBackgroundColor(parammj.a.g().intValue());
    parammj.b.setText(parammj.a.f().k());
    parammj.h.setOnClickListener(new mc(this, parammj));
    String str = ((ace)this.a.get(i)).r().a();
    if (str == null || str.isEmpty() || aat.d(str)) {
      parammj.c.setText(this.d.getString(lg.cart_novo_contrato));
    } else if (this.c.p() != null && (this.c.p().equalsIgnoreCase("POUPANCA") || this.c.p().equalsIgnoreCase("POUPANÇA"))) {
      parammj.c.setText(parammj.a.f().l() + ": " + aat.i(((ace)this.a.get(i)).r().a()));
    } else {
      parammj.c.setText(parammj.a.f().l() + ": " + ((ace)this.a.get(i)).r().a());
    } 
    if (!parammj.a.A()) {
      parammj.d.setText(this.d.getString(lg.cart_titular_name) + ": " + this.c.B());
      parammj.d.setVisibility(0);
    } else {
      parammj.d.setVisibility(8);
    } 
    View view = parammj.j;
    if (parammj.a.c()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    } 
    view.setVisibility(paramInt);
    RelativeLayout relativeLayout = parammj.n;
    if (!parammj.a.D() && (parammj.a.a() || this.e.booleanValue())) {
      paramInt = 0;
    } else {
      paramInt = 8;
    } 
    relativeLayout.setVisibility(paramInt);
    if (parammj.a.r().i() != null && !parammj.a.r().i().isEmpty()) {
      String str2 = ((acb)parammj.a.r().i().get(0)).d();
      String str1 = ((acb)parammj.a.r().i().get(0)).b();
      TextView textView2 = parammj.e;
      if (str2 != null && !str2.isEmpty()) {
        paramInt = 0;
      } else {
        paramInt = 8;
      } 
      textView2.setVisibility(paramInt);
      parammj.e.setText(str2);
      TextView textView1 = parammj.f;
      if (str1 != null && !str1.isEmpty()) {
        paramInt = 0;
      } else {
        paramInt = 8;
      } 
      textView1.setVisibility(paramInt);
      parammj.f.setText(str1);
      this.f = str1;
    } 
    Button button = parammj.l;
    paramInt = b;
    if (parammj.a.d())
      paramInt = 0; 
    button.setVisibility(paramInt);
    parammj.f.setOnClickListener(new md(this, parammj));
    parammj.g.setOnClickListener(new me(this, parammj));
    parammj.k.setOnClickListener(new mf(this, parammj, i));
    parammj.l.setOnClickListener(new mi(this, parammj));
    parammj.m.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(this.d));
    parammj.m.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    parammj.m.setNestedScrollingEnabled(false);
    parammj.m.setAdapter(new mk(a(parammj.a.r().k().d()), parammj.a.a()));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */