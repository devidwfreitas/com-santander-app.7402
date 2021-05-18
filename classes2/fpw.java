import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class fpw extends PagerAdapter {
  private List<fpv> a;
  
  private Context b;
  
  public fpw(Context paramContext, List<fpv> paramList) {
    this.b = paramContext;
    this.a = paramList;
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    ((ViewPager)paramView).removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(View paramView, int paramInt) {
    LinearLayout linearLayout = (LinearLayout)((Activity)this.b).getLayoutInflater().inflate(2130969400, null);
    linearLayout.setTag("page" + paramInt);
    View view1 = linearLayout.findViewById(2131759179);
    View view2 = linearLayout.findViewById(2131759182);
    View view3 = linearLayout.findViewById(2131759185);
    if (((fpv)this.a.get(paramInt)).c() == 0 || ((fpv)this.a.get(paramInt)).c() == 2) {
      view1.setVisibility(0);
      view2.setVisibility(8);
      view3.setVisibility(8);
      TextView textView1 = (TextView)view1.findViewById(2131759180);
      ((TextView)view1.findViewById(2131759181)).setText(((fpv)this.a.get(paramInt)).b());
      textView1.setText(((fpv)this.a.get(paramInt)).a());
      ((ViewPager)paramView).addView((View)linearLayout, 0);
      return linearLayout;
    } 
    if (((fpv)this.a.get(paramInt)).c() == 1 || ((fpv)this.a.get(paramInt)).c() == 4) {
      view1.setVisibility(8);
      view2.setVisibility(8);
      view3.setVisibility(0);
      TextView textView1 = (TextView)view3.findViewById(2131759186);
      ((TextView)view3.findViewById(2131759187)).setText(((fpv)this.a.get(paramInt)).b());
      textView1.setText(((fpv)this.a.get(paramInt)).a());
      ((ViewPager)paramView).addView((View)linearLayout, 0);
      return linearLayout;
    } 
    view2.setVisibility(0);
    view1.setVisibility(8);
    view3.setVisibility(8);
    TextView textView = (TextView)view2.findViewById(2131759183);
    EditText editText = (EditText)view2.findViewById(2131759184);
    editText.setText(((fpv)this.a.get(paramInt)).b());
    guj guj = new guj();
    guj.a(editText);
    editText.addTextChangedListener(guj);
    textView.setText(((fpv)this.a.get(paramInt)).a());
    ((ViewPager)paramView).addView((View)linearLayout, 0);
    return linearLayout;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == (LinearLayout)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fpw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */