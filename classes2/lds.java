import android.app.DatePickerDialog;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import java.util.Calendar;

public class lds extends Fragment implements DatePickerDialog.OnDateSetListener {
  private EditText a;
  
  private LinearLayout b;
  
  private RelativeLayout c;
  
  private RadioButton d;
  
  private RelativeLayout e;
  
  private RadioButton f;
  
  private Button g;
  
  private ldx h;
  
  private Calendar i;
  
  public static lds a() {
    return new lds();
  }
  
  private void a(View paramView) {
    this.b = (LinearLayout)paramView.findViewById(2131757536);
    this.c = (RelativeLayout)paramView.findViewById(2131757538);
    this.d = (RadioButton)paramView.findViewById(2131756089);
    this.e = (RelativeLayout)paramView.findViewById(2131757539);
    this.f = (RadioButton)paramView.findViewById(2131757540);
    this.a = (EditText)paramView.findViewById(2131757535);
    this.g = (Button)paramView.findViewById(2131757373);
  }
  
  private void b() {
    mhj.d((View)this.g);
    this.a.setOnClickListener(new ldt(this));
    ldu ldu = new ldu(this);
    this.d.setOnClickListener(ldu);
    this.c.setOnClickListener(ldu);
    ldv ldv = new ldv(this);
    this.f.setOnClickListener(ldv);
    this.e.setOnClickListener(ldv);
    this.g.setOnClickListener(new ldw(this));
  }
  
  private String c() {
    if (this.d.isChecked()) {
      this.i.set(11, 10);
      this.i.set(12, 0);
      this.i.set(13, 0);
      return mhj.a(this.i.getTime(), "yyyy-MM-dd'T'HH:mm:ss");
    } 
    this.i.set(11, 14);
    this.i.set(12, 0);
    this.i.set(13, 0);
    return mhj.a(this.i.getTime(), "yyyy-MM-dd'T'HH:mm:ss");
  }
  
  private String d() {
    if (this.d.isChecked()) {
      String str3 = getString(2131298165);
      String str4 = mhj.a(this.i.getTime(), "dd/MM/yyyy");
      return str4 + " - " + str3;
    } 
    String str1 = getString(2131297393);
    String str2 = mhj.a(this.i.getTime(), "dd/MM/yyyy");
    return str2 + " - " + str1;
  }
  
  public void a(ldx paramldx) {
    this.h = paramldx;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969084, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, paramInt1);
    calendar.set(2, paramInt2);
    calendar.set(5, paramInt3);
    String str = mhj.a(calendar.getTime());
    this.a.setText(str);
    this.i = calendar;
    this.b.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */