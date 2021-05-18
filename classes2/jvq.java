import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosDDAActivity;
import java.util.ArrayList;
import java.util.List;

public class jvq extends RecyclerView.Adapter<jvs> {
  private FormaPagamentosDDAActivity a;
  
  private List<jsr> b;
  
  private aoa c;
  
  private boolean d;
  
  private boolean e;
  
  public jvq(FormaPagamentosDDAActivity paramFormaPagamentosDDAActivity, List<jsr> paramList) {
    this.a = paramFormaPagamentosDDAActivity;
    this.b = paramList;
    this.d = true;
    this.e = true;
  }
  
  private String a(ArrayList<gku> paramArrayList, String paramString) {
    for (gku gku : paramArrayList) {
      if (gku.b().equals(paramString))
        return gku.c(); 
    } 
    return "";
  }
  
  public jvs a(ViewGroup paramViewGroup, int paramInt) {
    return new jvs(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969322, paramViewGroup, false));
  }
  
  public void a() {
    if (this.c != null) {
      this.e = false;
      this.c.c();
    } 
  }
  
  public void a(jvs paramjvs, int paramInt) {
    jsr jsr = this.b.get(paramInt);
    ArrayList<gku> arrayList = jsr.m();
    jvs.a(paramjvs).setText(a(arrayList, "Beneficiário"));
    jvs.b(paramjvs).setText(a(arrayList, "Valor a receber ").replace("R$ ", ""));
    if (jsr.f().equals("N")) {
      jvs.c(paramjvs).setVisibility(4);
      jvs.c(paramjvs).setEnabled(false);
      return;
    } 
    jvs.c(paramjvs).setVisibility(0);
    jvs.c(paramjvs).setEnabled(true);
    if (this.d) {
      this.d = false;
      this.c = (new aoj((View)jvs.c(paramjvs), 2131427668)).a("Para alterar o valor, clique aqui.").i(80).a(this.a.getResources().getColor(2131624101)).l(this.a.getResources().getColor(2131623972)).n(8388611).a(new jvr(this)).a();
      this.c.b();
      return;
    } 
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */