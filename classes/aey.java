import android.content.Context;
import android.content.res.ColorStateList;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RadioButton;
import java.util.List;

public class aey extends RecyclerView.Adapter {
  private static ColorStateList d;
  
  private List a;
  
  private afh b;
  
  private int c = -1;
  
  public aey(afh paramafh, List paramList) {
    this.b = paramafh;
    this.a = paramList;
  }
  
  private static void b(ColorStateList paramColorStateList) {
    if (d == null)
      d = paramColorStateList; 
  }
  
  public int a() {
    return this.c;
  }
  
  public aez a(ViewGroup paramViewGroup, int paramInt) {
    return new aez(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(adt.layout_title_item, paramViewGroup, false));
  }
  
  public void a(aez paramaez, int paramInt) {
    boolean bool;
    aeb aeb = this.a.get(paramInt);
    RadioButton radioButton = paramaez.a;
    if (this.c == paramInt) {
      bool = true;
    } else {
      bool = false;
    } 
    radioButton.setChecked(bool);
    try {
      paramaez.b.setText(aea.a().d().c(aeb.c()));
    } catch (Exception exception) {
      Log.e(aey.class.getName(), Log.getStackTraceString(exception));
    } 
    String str = aeo.a(aeb.d());
    if (str.equals("Vencido em ")) {
      paramaez.e.setTextColor(ContextCompat.getColor((Context)this.b.a(), ado.vencido_em));
      paramaez.c.setTextColor(ContextCompat.getColor((Context)this.b.a(), ado.vencido_em));
      paramaez.d.setTextColor(ContextCompat.getColor((Context)this.b.a(), ado.vencido_em));
    } else {
      paramaez.e.setTextColor(d);
      paramaez.c.setTextColor(d);
      paramaez.d.setTextColor(d);
    } 
    paramaez.e.setText(str.concat(aeo.b(aeb.d())));
    paramaez.d.setTextAndFormat(aep.a(aeb.e().substring(0, aeb.e().length() - 3)));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */