import android.app.Activity;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.widget.Indicator;

public class gpm {
  public static void a(int paramInt1, ViewPager paramViewPager, ImageView paramImageView1, ImageView paramImageView2, int paramInt2, Activity paramActivity) {
    int i = mzr.d();
    if (paramViewPager.getCurrentItem() > 0) {
      if (i == 3) {
        paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837604));
      } else if (i == 4 || i == 5) {
        paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837605));
      } else {
        paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837602));
      } 
    } else {
      paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837603));
    } 
    if (paramViewPager.getCurrentItem() < paramViewPager.getAdapter().getCount() - 1) {
      if (i == 3) {
        paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837608));
      } else if (i == 4 || i == 5) {
        paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837609));
      } else {
        paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837606));
      } 
    } else {
      paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837607));
    } 
    a(paramActivity, paramInt1, paramInt2, paramViewPager.getAdapter().getCount());
  }
  
  public static void a(Activity paramActivity, int paramInt1, int paramInt2, int paramInt3) {
    TextView textView = (TextView)paramActivity.findViewById(paramInt1);
    StringBuilder stringBuilder = new StringBuilder();
    if (paramInt2 < 10)
      stringBuilder.append("0"); 
    stringBuilder.append(paramInt2);
    stringBuilder.append("/");
    stringBuilder.append(paramInt3);
    textView.setText(stringBuilder.toString());
  }
  
  public static void a(Activity paramActivity, int paramInt1, int paramInt2, ImageView paramImageView1, ImageView paramImageView2, ViewPager paramViewPager) {
    paramImageView1.setOnClickListener(new gpn(paramViewPager));
    paramImageView2.setOnClickListener(new gpo(paramViewPager));
    a(paramActivity, paramInt1, 1, paramInt2);
  }
  
  public static void a(ViewPager paramViewPager, ImageView paramImageView1, ImageView paramImageView2, Indicator paramIndicator, int paramInt, Activity paramActivity) {
    int i = mzr.d();
    if (paramViewPager.getCurrentItem() > 0) {
      if (i == 3) {
        paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837604));
      } else if (i == 4 || i == 5) {
        paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837605));
      } else {
        paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837602));
      } 
    } else {
      paramImageView2.setImageDrawable(paramActivity.getResources().getDrawable(2130837603));
    } 
    if (paramViewPager.getCurrentItem() < paramViewPager.getAdapter().getCount() - 1) {
      if (i == 3) {
        paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837608));
      } else if (i == 4 || i == 5) {
        paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837609));
      } else {
        paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837606));
      } 
    } else {
      paramImageView1.setImageDrawable(paramActivity.getResources().getDrawable(2130837607));
    } 
    if (paramIndicator != null)
      paramIndicator.setSelected(paramInt); 
  }
  
  public static void a(View paramView1, View paramView2, int paramInt) {
    if ((paramView1.getContext().getResources().getConfiguration()).fontScale > 1.0F)
      try {
        View view = paramView2.findViewById(paramInt);
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        float f = layoutParams2.height;
        layoutParams2.height = (int)((view.getLayoutParams()).height * 0.18F + f);
        ViewGroup.LayoutParams layoutParams1 = paramView1.getLayoutParams();
        layoutParams1.height = (int)(layoutParams1.height + (paramView1.getLayoutParams()).height * 0.18F);
        paramView2.invalidate();
        paramView1.invalidate();
        return;
      } catch (Exception exception) {
        Log.e("IndicatorCarruselUtil", "Erro no método handleLargeTextSetting.", exception);
        return;
      }  
  }
  
  public static void a(TextView paramTextView, int paramInt1, int paramInt2) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramInt1);
    stringBuilder.append(" / ");
    stringBuilder.append(paramInt2);
    paramTextView.setText(stringBuilder.toString());
  }
  
  public static void a(TextView paramTextView, int paramInt, ImageView paramImageView1, ImageView paramImageView2, ViewPager paramViewPager) {
    paramImageView1.setOnClickListener(new gpp(paramViewPager));
    paramImageView2.setOnClickListener(new gpq(paramViewPager));
    a(paramTextView, 1, paramInt);
  }
  
  public static void a(Indicator paramIndicator, int paramInt, ImageView paramImageView1, ImageView paramImageView2, ViewPager paramViewPager) {
    paramIndicator.setSize(paramInt);
    paramImageView1.setOnClickListener(new gpr(paramViewPager));
    paramImageView2.setOnClickListener(new gps(paramViewPager));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */