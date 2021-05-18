import android.app.Activity;
import android.app.DatePickerDialog;
import android.content.Context;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;

public class fou extends fom implements DatePickerDialog.OnDateSetListener, Serializable {
  private static final long a = 1L;
  
  private Vector<fos> b = null;
  
  private Context c = null;
  
  private nez d = null;
  
  private Activity e = null;
  
  private TextView f = null;
  
  public fou(Context paramContext, Vector<fos> paramVector, Activity paramActivity) {
    this.c = paramContext;
    this.b = paramVector;
    this.e = paramActivity;
  }
  
  public void a(nez paramnez) {
    this.d = paramnez;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    if (((fos)this.b.elementAt(paramInt)).c() == fot.DPP) {
      LinearLayout linearLayout1 = (LinearLayout)((Activity)this.c).getLayoutInflater().inflate(2130968909, null);
      linearLayout1.setOnClickListener(new fov(this, paramInt));
      TextView textView3 = (TextView)linearLayout1.findViewById(2131755121);
      TextView textView4 = (TextView)linearLayout1.findViewById(2131756717);
      textView3.setText(((fos)this.b.elementAt(paramInt)).a());
      textView4.setText(((fos)this.b.elementAt(paramInt)).b());
      paramViewGroup.addView((View)linearLayout1, 0);
      return linearLayout1;
    } 
    if (((fos)this.b.elementAt(paramInt)).c() == fot.NORMAL) {
      LinearLayout linearLayout1 = (LinearLayout)((Activity)this.c).getLayoutInflater().inflate(2130968909, null);
      linearLayout1.setOnClickListener(new fow(this, paramInt));
      TextView textView3 = (TextView)linearLayout1.findViewById(2131755121);
      TextView textView4 = (TextView)linearLayout1.findViewById(2131756717);
      textView3.setText(((fos)this.b.elementAt(paramInt)).a());
      textView4.setText(((fos)this.b.elementAt(paramInt)).b());
      paramViewGroup.addView((View)linearLayout1, 0);
      return linearLayout1;
    } 
    LinearLayout linearLayout = (LinearLayout)((Activity)this.c).getLayoutInflater().inflate(2130968908, null);
    ((LinearLayout)linearLayout.findViewById(2131756718)).setOnClickListener(new fox(this, paramInt));
    TextView textView1 = (TextView)linearLayout.findViewById(2131755121);
    TextView textView2 = (TextView)linearLayout.findViewById(2131756717);
    textView1.setText(((fos)this.b.elementAt(paramInt)).a());
    textView2.setText(((fos)this.b.elementAt(paramInt)).b());
    paramViewGroup.addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, paramInt1);
    calendar.set(2, paramInt2);
    calendar.set(5, paramInt3);
    DateFormat.getDateFormat(this.c);
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    String str = nak.a(new Date(calendar.getTimeInMillis()));
    if (this.b.size() == 2) {
      ((fos)this.b.get(1)).b(str);
      ((TextView)this.e.findViewById(2131756717)).setText(simpleDateFormat.format(calendar.getTime()));
      return;
    } 
    if (this.b.size() == 1) {
      ((fos)this.b.get(0)).b(str);
      ((TextView)this.e.findViewById(2131756717)).setText(simpleDateFormat.format(calendar.getTime()));
      return;
    } 
    if (this.b.size() > 2) {
      this.f.setText(simpleDateFormat.format(calendar.getTime()));
      ((fos)this.b.get(1)).b(str);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */