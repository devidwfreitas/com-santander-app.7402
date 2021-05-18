import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.v4.view.ViewCompat;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewAnimationUtils;

public class gsb {
  public static int a = 150;
  
  public static int b = 400;
  
  public static int c = 800;
  
  public static void a(View paramView) {
    a(paramView, a);
  }
  
  public static void a(View paramView, int paramInt) {
    a(paramView, paramInt, (gsf)null);
  }
  
  public static void a(View paramView, int paramInt, gsf paramgsf) {
    paramView.setVisibility(0);
    paramView.setAlpha(0.0F);
    gsc gsc = null;
    if (paramgsf != null)
      gsc = new gsc(paramgsf); 
    ViewCompat.animate(paramView).alpha(1.0F).setDuration(paramInt).setListener(gsc);
  }
  
  public static void a(View paramView1, View paramView2) {
    a(paramView1, paramView2, a);
  }
  
  public static void a(View paramView1, View paramView2, int paramInt) {
    a(paramView1, paramInt);
    b(paramView2, paramInt);
  }
  
  @TargetApi(21)
  public static void a(View paramView, gsf paramgsf) {
    Animator animator = ViewAnimationUtils.createCircularReveal(paramView, paramView.getWidth() - (int)TypedValue.applyDimension(1, 24.0F, paramView.getResources().getDisplayMetrics()), paramView.getHeight() / 2, 0.0F, Math.max(paramView.getWidth(), paramView.getHeight()));
    paramView.setVisibility(0);
    animator.addListener((Animator.AnimatorListener)new gsd(paramgsf, paramView));
    animator.start();
  }
  
  public static void b(View paramView) {
    b(paramView, a);
  }
  
  public static void b(View paramView, int paramInt) {
    b(paramView, paramInt, null);
  }
  
  public static void b(View paramView, int paramInt, gsf paramgsf) {
    ViewCompat.animate(paramView).alpha(0.0F).setDuration(paramInt).setListener(new gse(paramgsf));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */