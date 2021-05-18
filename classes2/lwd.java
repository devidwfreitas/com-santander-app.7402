import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.SwitchCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import br.com.zup.multistatelayout.MultiStateLayout;

public class lwd extends Fragment {
  AppCompatActivity a;
  
  private MultiStateLayout b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private SwitchCompat f;
  
  public static lwd a() {
    Bundle bundle = new Bundle();
    lwd lwd1 = new lwd();
    lwd1.setArguments(bundle);
    return lwd1;
  }
  
  private void a(View paramView) {
    this.b = (MultiStateLayout)paramView.findViewById(2131755279);
    this.c = (TextView)paramView.findViewById(2131757368);
    this.d = (TextView)paramView.findViewById(2131757369);
    this.e = (TextView)paramView.findViewById(2131757370);
    this.f = (SwitchCompat)paramView.findViewById(2131756560);
  }
  
  private void b() {
    this.c.setText("Santander");
    this.d.setText("0000");
    this.e.setText("00000000-0");
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof AppCompatActivity)
      this.a = (AppCompatActivity)paramContext; 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969056, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */