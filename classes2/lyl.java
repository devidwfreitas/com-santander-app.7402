import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class lyl extends DialogFragment {
  public static String a = "value-key";
  
  private grs b;
  
  private lyo c;
  
  private TextView d;
  
  private Button e;
  
  private Button f;
  
  private double g = 0.0D;
  
  public static lyl a(double paramDouble) {
    Bundle bundle = new Bundle();
    bundle.putString(a, (new ejm()).b(Double.valueOf(paramDouble)));
    lyl lyl1 = new lyl();
    lyl1.setArguments(bundle);
    return lyl1;
  }
  
  private void a() {
    this.d.setText(String.format(getResources().getString(2131296950), new Object[] { mhj.a(Double.valueOf(this.g)) }));
  }
  
  private void a(View paramView) {
    this.d = (TextView)paramView.findViewById(2131756279);
    this.e = (Button)paramView.findViewById(2131756857);
    this.f = (Button)paramView.findViewById(2131756856);
    this.e.setOnClickListener(new lym(this));
    this.f.setOnClickListener(new lyn(this));
  }
  
  public void a(lyo paramlyo) {
    this.c = paramlyo;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    this.b = (grs)paramContext;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.g = ((Double)(new ejm()).<Double>a(getArguments().getString(a), (Class)double.class)).doubleValue(); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969067, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */