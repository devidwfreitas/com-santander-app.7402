import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class lho extends RecyclerView.Adapter<lhq> {
  private List<kpw> a = new ArrayList<kpw>();
  
  private double b = 0.0D;
  
  private lhr c;
  
  public lho(kpu paramkpu) {
    if (paramkpu != null)
      try {
        if (paramkpu.b() != null && paramkpu.b().size() > 0) {
          this.a.addAll(paramkpu.b());
          this.b = Double.parseDouble(paramkpu.a());
        } 
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        this.b = 0.0D;
        return;
      }  
  }
  
  public lhq a(ViewGroup paramViewGroup, int paramInt) {
    return new lhq(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969427, paramViewGroup, false));
  }
  
  public void a(lhq paramlhq, int paramInt) {
    kpw kpw = this.a.get(paramInt);
    lhq.a(paramlhq).setImageResource(2130838476);
    lhq.b(paramlhq).setText(mhj.s(kpw.b()));
    lhq.c(paramlhq).setText(mhj.p(kpw.c()));
    lhq.d(paramlhq).setText(String.format("%s%%", new Object[] { kpw.d() }));
    String str = mhj.a(Double.valueOf(this.b * Double.parseDouble(kpw.d()) / 100.0D));
    lhq.e(paramlhq).setText(str);
    lhq.f(paramlhq).setImageResource(2130838436);
    lhq.f(paramlhq).setOnClickListener(new lhp(this, kpw));
  }
  
  public void a(lhr paramlhr) {
    this.c = paramlhr;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */