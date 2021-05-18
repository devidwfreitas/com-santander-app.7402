import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public class jhn extends RecyclerView.Adapter<jhq> {
  private ArrayList<jdx> a;
  
  private jdx b;
  
  private View.OnClickListener c;
  
  private boolean d = true;
  
  public jhn(ArrayList<jdx> paramArrayList, jdx paramjdx, View.OnClickListener paramOnClickListener) {
    this.a = paramArrayList;
    this.b = paramjdx;
    this.c = paramOnClickListener;
  }
  
  public jhq a(ViewGroup paramViewGroup, int paramInt) {
    return new jhq(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968779, paramViewGroup, false));
  }
  
  public void a(jhq paramjhq, int paramInt) {
    jdx jdx1 = this.a.get(paramInt);
    if (jdx1.g() == null)
      jdx1.a(new jdu()); 
    if (!jdx1.g().b()) {
      jhq.a(paramjhq).setText(jdx1.c());
      switch (jhp.a[this.b.t().ordinal()]) {
        default:
          if (jdx1.g().a()) {
            jdx1.g().a(false);
            jhq.g(paramjhq).setVisibility(0);
          } else {
            jhq.g(paramjhq).setVisibility(4);
          } 
          paramjhq.itemView.setOnClickListener(new jho(this, paramjhq, jdx1));
          if (this.d && this.b.g().b()) {
            if (getItemCount() - 1 == paramInt && this.b.g().a()) {
              jdx1.g().a(false);
              jhq.g(paramjhq).setVisibility(0);
              this.d = false;
            } 
            return;
          } 
          break;
        case 1:
          jhq.b(paramjhq).setText("Saldo bruto:");
          jhq.c(paramjhq).setText(naj.f(jdx1.X()));
          jhq.d(paramjhq).setVisibility(8);
        case 2:
          jhq.b(paramjhq).setText("Saldo líquido:");
          jhq.c(paramjhq).setText(naj.f(jdx1.Y()));
          jhq.e(paramjhq).setText(naj.L(jdx1.C()));
      } 
    } else {
      jhq.f(paramjhq).setVisibility(8);
      jhq.d(paramjhq).setVisibility(8);
      jhq.b(paramjhq).setText("Nova conta fundo");
      jhq.c(paramjhq).setText("");
    } 
    if (this.d && this.b.c().equals(jdx1.c()) && this.b.g().a()) {
      jdx1.g().a(false);
      jhq.g(paramjhq).setVisibility(0);
      this.d = false;
      return;
    } 
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */