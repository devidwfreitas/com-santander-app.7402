import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class lyh extends DialogFragment {
  private static String a = "document-key";
  
  private TextView b;
  
  private TextView c;
  
  private kus d;
  
  public static lyh a(kus paramkus) {
    Bundle bundle = new Bundle();
    bundle.putString(a, (new ejm()).b(paramkus));
    lyh lyh1 = new lyh();
    lyh1.setArguments(bundle);
    return lyh1;
  }
  
  private void a() {
    this.b.setText(this.d.c());
  }
  
  private void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131756932);
    this.c = (TextView)paramView.findViewById(2131756933);
    this.c.setOnClickListener(new lyi(this));
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.d = (new ejm()).<kus>a(getArguments().getString(a), kus.class); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968969, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */