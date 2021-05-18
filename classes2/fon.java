import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.components.view.FontFitTextView;
import java.util.List;

public class fon extends fom implements View.OnClickListener {
  private List<? extends fvw> a = null;
  
  private Context b = null;
  
  private nez c = null;
  
  private LinearLayout d;
  
  private FontFitTextView e;
  
  private boolean f;
  
  public fon(Context paramContext, List<? extends fvw> paramList) {
    this.b = paramContext;
    this.a = paramList;
  }
  
  public void a() {
    if (this.d != null) {
      this.d.setVisibility(4);
      if (this.f && this.e != null)
        this.e.setVisibility(4); 
    } 
  }
  
  public void a(nez paramnez) {
    this.c = paramnez;
  }
  
  public void b() {
    if (this.d != null) {
      this.d.setVisibility(0);
      if (this.f && this.e != null)
        this.e.setVisibility(0); 
    } 
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public int getItemPosition(Object paramObject) {
    return -2;
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    fvw fvw;
    LinearLayout linearLayout1 = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130968880, null);
    linearLayout1.setOnClickListener(this);
    ((TextView)linearLayout1.findViewById(2131756597)).setText(((fvw)this.a.get(paramInt)).a());
    ((TextView)linearLayout1.findViewById(2131756598)).setText(((fvw)this.a.get(paramInt)).b());
    TextView textView1 = (TextView)linearLayout1.findViewById(2131756601);
    this.d = (LinearLayout)linearLayout1.findViewById(2131756599);
    LinearLayout linearLayout2 = (LinearLayout)linearLayout1.findViewById(2131756458);
    LinearLayout linearLayout3 = (LinearLayout)linearLayout1.findViewById(2131756462);
    LinearLayout linearLayout4 = (LinearLayout)linearLayout1.findViewById(2131756603);
    SharedPreferences sharedPreferences = this.b.getSharedPreferences("CartaoPreferences", 0);
    TextView textView2 = (TextView)linearLayout1.findViewById(2131756590);
    this.e = (FontFitTextView)linearLayout1.findViewById(2131756602);
    this.f = ((fvw)this.a.get(paramInt)).u().equals("BE");
    if (((fvw)this.a.get(paramInt)).u().equals("TI")) {
      if (((fvw)this.a.get(paramInt)).z() != null) {
        linearLayout2.setVisibility(8);
        linearLayout3.setVisibility(8);
        linearLayout4.setVisibility(0);
      } else {
        linearLayout2.setVisibility(0);
        linearLayout3.setVisibility(8);
        linearLayout4.setVisibility(8);
        fvw = this.a.get(paramInt);
        textView2.setText("Saldo parcial da fatura: \n " + naj.f(fvw.w()));
        textView2 = (TextView)linearLayout1.findViewById(2131756600);
        if (((fvw)this.a.get(paramInt)).a().contains("UNLIMITED")) {
          textView2.setVisibility(8);
          textView1.setText("Unlimited");
        } else {
          textView2.setText("Limite disponível:");
          textView1.setText(naj.f(((fvw)this.a.get(paramInt)).c()));
        } 
      } 
    } else if (((fvw)this.a.get(paramInt)).u().equals("BE")) {
      if (((fvw)this.a.get(paramInt)).z() != null) {
        fvw.setVisibility(8);
        linearLayout3.setVisibility(8);
        linearLayout4.setVisibility(0);
      } else {
        fvw.setVisibility(8);
        linearLayout3.setVisibility(0);
        linearLayout4.setVisibility(8);
      } 
    } 
    linearLayout1.setTag(this.a.get(paramInt));
    ((ViewPager)paramView).addView((View)linearLayout1, 0);
    if (sharedPreferences.getInt("limite_cartao_state", 0) == 4) {
      a();
      return linearLayout1;
    } 
    if (((fvw)this.a.get(paramInt)).z() == null) {
      b();
      return linearLayout1;
    } 
    return linearLayout1;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
  
  public void onClick(View paramView) {
    if (this.c != null)
      this.c.a(this.a.indexOf(paramView.getTag())); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fon.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */