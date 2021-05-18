import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ca.android.app.CaMDOFragment;

public class gfx extends CaMDOFragment {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private LinearLayout f;
  
  private LinearLayout g;
  
  private LinearLayout h;
  
  private gew i;
  
  private gfg j;
  
  private void a() {
    this.a = (TextView)getView().findViewById(2131757568);
    this.b = (TextView)getView().findViewById(2131757569);
    this.c = (TextView)getView().findViewById(2131756169);
    this.d = (TextView)getView().findViewById(2131757573);
    this.e = (TextView)getView().findViewById(2131757575);
    this.f = (LinearLayout)getView().findViewById(2131757571);
    this.g = (LinearLayout)getView().findViewById(2131757572);
    this.h = (LinearLayout)getView().findViewById(2131757574);
  }
  
  private void a(View paramView) {}
  
  public void onActivityCreated(@Nullable Bundle paramBundle) {
    super.onActivityCreated(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null) {
      this.i = (gew)paramBundle.getSerializable("fragment_topo_model");
      this.j = (gfg)paramBundle.getSerializable("tipo_carteira_enum");
      this.b.setText(this.i.e());
      this.a.setText(this.i.b());
      switch (gfy.a[this.j.ordinal()]) {
        default:
          return;
        case 1:
        case 2:
          this.g.setVisibility(0);
          this.f.setVisibility(0);
          this.h.setVisibility(8);
          this.c.setText(naj.b(this.i.d()));
          this.d.setText(naj.b(this.i.c()));
          return;
        case 3:
        case 4:
        case 5:
          break;
      } 
      this.g.setVisibility(8);
      this.f.setVisibility(8);
      this.h.setVisibility(0);
      this.e.setText(naj.b(this.i.a()));
      return;
    } 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969092, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    a(paramView);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */