import android.app.Activity;
import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import java.util.List;

public class hdh extends PagerAdapter {
  private List<Conta> a;
  
  private Context b;
  
  public hdh(Activity paramActivity, List<Conta> paramList, Boolean paramBoolean) {
    this.b = (Context)paramActivity;
    this.a = paramList;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
    View view = ((Activity)this.b).getLayoutInflater().inflate(2130969005, null);
    if (this.a.size() > paramInt) {
      fuu fuu = (fuu)this.a.get(paramInt);
      TextView textView1 = (TextView)view.findViewById(2131757111);
      TextView textView2 = (TextView)view.findViewById(2131757112);
      TextView textView3 = (TextView)view.findViewById(2131757113);
      textView1.setText(naq.c(fuu.getAgencia(), fuu.getCuenta()));
      textView2.setText(naj.s(fuu.getExtractoHome().u()));
      textView3.setText(naj.s(fuu.getValor()));
      paramViewGroup.addView(view, 0);
    } 
    return view;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return (paramView == paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */