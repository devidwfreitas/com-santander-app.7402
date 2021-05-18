import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class lbp extends Fragment {
  public static final String a = "ASSISTANCE_DETAIL_BOTTOM_VIEW_MODEL_KEY";
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private LinearLayout h;
  
  private koh i;
  
  public static lbp a(koh paramkoh) {
    lbp lbp1 = new lbp();
    Bundle bundle = new Bundle();
    bundle.putString("ASSISTANCE_DETAIL_BOTTOM_VIEW_MODEL_KEY", paramkoh.toString());
    lbp1.setArguments(bundle);
    return lbp1;
  }
  
  private void a() {
    this.b.setText(this.i.a());
    this.e.setText(this.i.a());
    this.c.setText(this.i.b());
    this.d.setText(this.i.c());
    this.g.setText(this.i.f());
    if (this.i.d()) {
      this.f.setText(this.i.e());
      return;
    } 
    this.h.setVisibility(8);
  }
  
  private void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131757498);
    this.c = (TextView)paramView.findViewById(2131757508);
    this.d = (TextView)paramView.findViewById(2131757509);
    this.e = (TextView)paramView.findViewById(2131757333);
    this.f = (TextView)paramView.findViewById(2131757465);
    this.g = (TextView)paramView.findViewById(2131757470);
    this.h = (LinearLayout)paramView.findViewById(2131757464);
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null)
      this.i = (new ejm()).<koh>a(getArguments().getString("ASSISTANCE_DETAIL_BOTTOM_VIEW_MODEL_KEY"), koh.class); 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969078, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */