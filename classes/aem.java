import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatTextView;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

public class aem {
  public static void a(AppCompatActivity paramAppCompatActivity) {
    String str = paramAppCompatActivity.getSupportActionBar().getTitle().toString();
    paramAppCompatActivity.getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    paramAppCompatActivity.getSupportActionBar().setHomeButtonEnabled(true);
    Drawable drawable = AppCompatResources.getDrawable((Context)paramAppCompatActivity, adq.abc_ic_ab_back_material);
    drawable.setColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
    paramAppCompatActivity.getSupportActionBar().setHomeAsUpIndicator(drawable);
    View view = paramAppCompatActivity.getWindow().getDecorView();
    ArrayList arrayList = new ArrayList();
    view.findViewsWithText(arrayList, str, 1);
    for (AppCompatTextView appCompatTextView : arrayList) {
      if (appCompatTextView.getText().equals(str)) {
        appCompatTextView.setPadding((-drawable.getIntrinsicWidth() << 1) + 20, 0, 0, 0);
        view.requestLayout();
        break;
      } 
    } 
  }
  
  public static void a(AppCompatActivity paramAppCompatActivity, String paramString) {
    paramAppCompatActivity.getSupportActionBar().setTitle(paramString);
    View view = paramAppCompatActivity.getWindow().getDecorView();
    ArrayList arrayList = new ArrayList();
    view.findViewsWithText(arrayList, paramString, 1);
    for (AppCompatTextView appCompatTextView : arrayList) {
      if (appCompatTextView.getText().equals(paramString)) {
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setGravity(17);
        (appCompatTextView.getLayoutParams()).width = -1;
        a(appCompatTextView, paramAppCompatActivity);
        view.requestLayout();
        break;
      } 
    } 
  }
  
  private static void a(AppCompatTextView paramAppCompatTextView, AppCompatActivity paramAppCompatActivity) {
    View view = (View)paramAppCompatTextView.getParent();
    switch (aew.a[aea.a().b().ordinal()]) {
      default:
        view.setBackgroundColor(paramAppCompatActivity.getResources().getColor(ado.inv_header_defaut));
        view.requestLayout();
        return;
      case 1:
        view.setBackgroundColor(paramAppCompatActivity.getResources().getColor(ado.inv_header_private));
        view.requestLayout();
        return;
      case 2:
        view.setBackgroundColor(paramAppCompatActivity.getResources().getColor(ado.inv_header_select));
        view.requestLayout();
        return;
      case 3:
      case 4:
        break;
    } 
    view.setBackgroundColor(paramAppCompatActivity.getResources().getColor(ado.inv_header_van_gogh));
    view.requestLayout();
  }
  
  public static boolean a(MenuItem paramMenuItem, aen paramaen) {
    if (paramMenuItem.getItemId() == 16908332) {
      paramaen.a();
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */