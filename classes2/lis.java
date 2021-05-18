import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v4.app.DialogFragment;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

public class lis extends DialogFragment {
  private TextView a;
  
  private ImageButton b;
  
  private ImageButton c;
  
  private TextView d;
  
  private TextView e;
  
  private LinearLayout f;
  
  private Button g;
  
  private Button h;
  
  private liw i;
  
  private View.OnClickListener a(@StringRes int paramInt1, @StringRes int paramInt2, ImageButton paramImageButton1, ImageButton paramImageButton2) {
    return new liv(this, paramInt1, paramInt2, paramImageButton1, paramImageButton2);
  }
  
  public static lis a() {
    return new lis();
  }
  
  private void a(View paramView) {
    this.a = (TextView)paramView.findViewById(2131756987);
    this.b = (ImageButton)paramView.findViewById(2131756988);
    this.d = (TextView)paramView.findViewById(2131756993);
    this.e = (TextView)paramView.findViewById(2131756994);
    this.c = (ImageButton)paramView.findViewById(2131756990);
    this.f = (LinearLayout)paramView.findViewById(2131756992);
    this.g = (Button)paramView.findViewById(2131756995);
    this.h = (Button)paramView.findViewById(2131756846);
  }
  
  private void a(ImageButton paramImageButton) {
    paramImageButton.setActivated(true);
    paramImageButton.setBackgroundResource(2130837678);
    paramImageButton.getDrawable().mutate().setTint(ContextCompat.getColor((Context)getActivity(), 2131624121));
  }
  
  private void b() {
    if (miq.C().f() != null) {
      String str = miq.C().f().j();
      this.a.setText(getString(2131297570, new Object[] { str }));
    } 
    this.b.setOnClickListener(a(2131299181, 2131299304, this.b, this.c));
    this.c.setOnClickListener(a(2131296374, 2131299305, this.c, this.b));
    this.g.setOnClickListener(new lit(this));
    this.h.setOnClickListener(new liu(this));
  }
  
  private void b(ImageButton paramImageButton) {
    paramImageButton.setActivated(false);
    paramImageButton.setBackgroundResource(2130837679);
    paramImageButton.getDrawable().mutate().setTint(ContextCompat.getColor((Context)getActivity(), 2131624042));
  }
  
  public void a(liw paramliw) {
    this.i = paramliw;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    if (dialog.getWindow() != null)
      dialog.getWindow().requestFeature(1); 
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968991, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */