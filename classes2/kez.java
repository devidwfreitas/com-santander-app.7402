import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.santander.app.components.view.SantanderTextView;
import java.util.ArrayList;
import java.util.List;

public class kez extends BaseAdapter {
  private LayoutInflater a;
  
  private List<kdh> b;
  
  public kez(Context paramContext, kcy paramkcy) {
    this.a = LayoutInflater.from(paramContext);
    this.b = new ArrayList<kdh>();
    for (kdf kdf : paramkcy.a()) {
      for (kdh kdh : kdf.c()) {
        kdh.a(kdf.a());
        this.b.add(kdh);
      } 
    } 
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object getItem(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    if (paramView == null) {
      kfb kfb2 = new kfb(this, null);
      paramView = this.a.inflate(2130968781, paramViewGroup, false);
      kfb.a(kfb2, (SantanderTextView)paramView.findViewById(2131756189));
      kfb.b(kfb2, (SantanderTextView)paramView.findViewById(2131756188));
      kfb.c(kfb2, (SantanderTextView)paramView.findViewById(2131756190));
      paramView.setTag(kfb2);
      kfb kfb1 = kfb2;
      kfb.a(kfb1).setText("Certificado: " + ((kdh)this.b.get(paramInt)).g());
      kfb.b(kfb1).setText(((kdh)this.b.get(paramInt)).f());
      kfb.c(kfb1).setText("Saldo Bruto: " + ((kdh)this.b.get(paramInt)).h());
      return paramView;
    } 
    kfb kfb = (kfb)paramView.getTag();
    kfb.a(kfb).setText("Certificado: " + ((kdh)this.b.get(paramInt)).g());
    kfb.b(kfb).setText(((kdh)this.b.get(paramInt)).f());
    kfb.c(kfb).setText("Saldo Bruto: " + ((kdh)this.b.get(paramInt)).h());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */