import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.support.v4.view.PagerAdapter;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class fpr extends PagerAdapter {
  private List<ghu> a;
  
  private List<fvx> b;
  
  private Context c;
  
  private Boolean d;
  
  public fpr(Activity paramActivity, List<ghu> paramList, Boolean paramBoolean) {
    this.c = (Context)paramActivity;
    this.a = paramList;
    this.d = paramBoolean;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = ((Activity)this.c).getLayoutInflater().inflate(2130968855, null);
    TextView textView1 = (TextView)view.findViewById(2131756456);
    TextView textView2 = (TextView)view.findViewById(2131756460);
    LinearLayout linearLayout1 = (LinearLayout)view.findViewById(2131756458);
    LinearLayout linearLayout2 = (LinearLayout)view.findViewById(2131756462);
    LinearLayout linearLayout3 = (LinearLayout)view.findViewById(2131756464);
    TextView textView3 = (TextView)view.findViewById(2131756459);
    if (((ghu)this.a.get(paramInt)).a().contains("UNLIMITED")) {
      textView3.setVisibility(8);
    } else {
      textView3.setText("Limite disponível:");
    } 
    ImageView imageView = (ImageView)view.findViewById(2131756457);
    if (((ghu)this.a.get(paramInt)).b().length() > 4) {
      textView1.setText(((ghu)this.a.get(paramInt)).b());
    } else {
      textView1.setText(((ghu)this.a.get(paramInt)).a());
    } 
    if (((ghu)this.a.get(paramInt)).z() == null) {
      if (((ghu)this.a.get(paramInt)).a().contains("UNLIMITED")) {
        textView2.setText("Unlimited");
      } else {
        textView2.setText(naj.f(((ghu)this.a.get(paramInt)).c()));
      } 
    } else {
      ((TextView)view.findViewById(2131756465)).setText(((ghu)this.a.get(paramInt)).a().trim());
    } 
    if (((ghu)this.a.get(paramInt)).u().equals("TI"))
      if (((ghu)this.a.get(paramInt)).z() == null) {
        linearLayout1.setVisibility(0);
        linearLayout2.setVisibility(8);
        linearLayout3.setVisibility(8);
      } else {
        linearLayout1.setVisibility(8);
        linearLayout2.setVisibility(8);
        linearLayout3.setVisibility(0);
      }  
    if (((ghu)this.a.get(paramInt)).u().equals("BE"))
      if (((ghu)this.a.get(paramInt)).z() == null) {
        linearLayout1.setVisibility(8);
        linearLayout2.setVisibility(0);
        linearLayout3.setVisibility(8);
      } else {
        linearLayout1.setVisibility(8);
        linearLayout2.setVisibility(8);
        linearLayout3.setVisibility(0);
      }  
    if (this.d.booleanValue() == true)
      view.findViewById(2131756466).setVisibility(0); 
    if (((ghu)this.a.get(paramInt)).A() != null) {
      byte[] arrayOfByte = Base64.decode(((ghu)this.a.get(paramInt)).A(), 0);
      imageView.setImageBitmap(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
    } 
    paramViewGroup.addView(view, 0);
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */