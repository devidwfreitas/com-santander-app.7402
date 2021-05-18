import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.santander.app.seguros.ui.assistance.activities.AssistanceActivity;

public class lbi extends DialogFragment {
  private Button a;
  
  private Button b;
  
  private AssistanceActivity c;
  
  public static lbi a() {
    return new lbi();
  }
  
  private void a(View paramView) {
    this.a = (Button)paramView.findViewById(2131756856);
    this.b = (Button)paramView.findViewById(2131756857);
  }
  
  private void b() {
    this.a.setOnClickListener(new lbj(this));
    this.b.setOnClickListener(new lbk(this));
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof android.support.v7.app.AppCompatActivity)
      this.c = (AssistanceActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setStyle(1, 2131427627);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    if (dialog.getWindow() != null) {
      dialog.getWindow().requestFeature(1);
      dialog.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
    } 
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968995, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */