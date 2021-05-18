import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class let extends RecyclerView.Adapter<leu> {
  private List<kqf> a;
  
  public let(List<kqf> paramList) {
    this.a = paramList;
  }
  
  public leu a(ViewGroup paramViewGroup, int paramInt) {
    return new leu(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968807, paramViewGroup, false));
  }
  
  public void a() {
    if (this.a != null && this.a.size() > 0)
      for (int i = 0; i < getItemCount(); i++) {
        ((kqf)this.a.get(i)).a(true);
        notifyItemChanged(i);
      }  
  }
  
  public void a(leu paramleu, int paramInt) {
    kqf kqf = this.a.get(paramleu.getAdapterPosition());
    leu.a(paramleu).setText(kqf.g().b());
    String str = nab.a().c(kqf.e());
    if (!str.equals("CONFORME LEGISLACAO VIGENTE") && !str.equals("CONFORME LEGISLAÇÃO VIGENTE")) {
      leu.b(paramleu).setText(str);
    } else {
      leu.c(paramleu).setText("");
    } 
    leu.d(paramleu).setText(kqf.f() + "%");
    if (kqf.i()) {
      leu.e(paramleu).setImageResource(2130838361);
    } else {
      leu.e(paramleu).setImageResource(2130838638);
    } 
    if (paramleu.getAdapterPosition() == getItemCount() - 1) {
      leu.f(paramleu).setVisibility(8);
      return;
    } 
    leu.f(paramleu).setVisibility(0);
  }
  
  public void b() {
    if (this.a != null && this.a.size() > 0)
      for (int i = 0; i < getItemCount(); i++) {
        ((kqf)this.a.get(i)).a(false);
        notifyItemChanged(i);
      }  
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\let.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */