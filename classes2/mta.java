import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class mta extends mso implements mtd {
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private mvd h;
  
  public void a(mrp parammrp) {
    this.b.setText(parammrp.c());
    this.e.setText(parammrp.d());
    String str = parammrp.e();
    if (parammrp.a()) {
      this.f.setText(mwv.b(str));
    } else {
      this.f.setText(mwv.a(str));
    } 
    this.c.setText(parammrp.g());
    this.d.setText(parammrp.f());
    this.g.setText(parammrp.i());
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969510, paramViewGroup, false);
  }
  
  public void onDestroyView() {
    super.onDestroyView();
    this.h.b();
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    this.b = (TextView)paramView.findViewById(2131759571);
    this.c = (TextView)paramView.findViewById(2131759573);
    this.d = (TextView)paramView.findViewById(2131759574);
    this.e = (TextView)paramView.findViewById(2131759572);
    this.f = (TextView)paramView.findViewById(2131755221);
    this.g = (TextView)paramView.findViewById(2131755605);
    paramView.findViewById(2131759575).setOnClickListener(new mtb(this));
    paramView.findViewById(2131759576).setOnClickListener(new mtc(this));
    this.h = new mve(this);
    this.h.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */