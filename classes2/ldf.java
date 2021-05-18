import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ldf extends Fragment {
  private static final String a = "DATA_CONFIRMATION_VIEW_MODEL_KEY";
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private LinearLayout f;
  
  private LinearLayout g;
  
  private ImageButton h;
  
  private ImageButton i;
  
  private ImageButton j;
  
  private Button k;
  
  private ldl l;
  
  private ldm m;
  
  public static ldf a(ldm paramldm) {
    Bundle bundle = new Bundle();
    bundle.putString("DATA_CONFIRMATION_VIEW_MODEL_KEY", paramldm.toString());
    ldf ldf1 = new ldf();
    ldf1.setArguments(bundle);
    return ldf1;
  }
  
  private void a() {
    this.b.setText(this.m.a());
    this.e.setText(this.m.f());
    if (this.m.b()) {
      this.c.setText(this.m.c());
      this.f.setVisibility(0);
    } 
    if (this.m.d()) {
      this.d.setText(this.m.e());
      this.g.setVisibility(0);
    } 
    this.h.setOnClickListener(new ldg(this));
    this.i.setOnClickListener(new ldh(this));
    this.j.setOnClickListener(new ldi(this));
    this.k.setOnClickListener(new ldj(this));
  }
  
  private void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131757462);
    this.c = (TextView)paramView.findViewById(2131757465);
    this.d = (TextView)paramView.findViewById(2131757468);
    this.e = (TextView)paramView.findViewById(2131757470);
    this.f = (LinearLayout)paramView.findViewById(2131757464);
    this.g = (LinearLayout)paramView.findViewById(2131757467);
    this.h = (ImageButton)paramView.findViewById(2131757463);
    this.i = (ImageButton)paramView.findViewById(2131757466);
    this.j = (ImageButton)paramView.findViewById(2131757469);
    this.k = (Button)paramView.findViewById(2131757373);
  }
  
  private void b() {
    lay lay = lay.a(getString(2131298919));
    lay.a(new ldk(this));
    lay.show(getFragmentManager(), null);
  }
  
  public void a(ldl paramldl) {
    this.l = paramldl;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null)
      this.m = (new ejm()).<ldm>a(getArguments().getString("DATA_CONFIRMATION_VIEW_MODEL_KEY"), ldm.class); 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969065, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ldf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */