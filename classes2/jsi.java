import android.support.v4.view.ViewPager;
import com.santander.app.novidades.view.NovidadesActivity;

public class jsi extends ViewPager.SimpleOnPageChangeListener {
  public jsi(NovidadesActivity paramNovidadesActivity) {}
  
  public void onPageSelected(int paramInt) {
    super.onPageSelected(paramInt);
    NovidadesActivity.a(this.a).setPageSelected(paramInt);
    NovidadesActivity.b(this.a).c(paramInt);
    NovidadesActivity.b(this.a).a(paramInt);
    if (!NovidadesActivity.c(this.a))
      frq.d("Marketing_TelaDeNovidades_Acao", "Proximo"); 
    NovidadesActivity.a(this.a, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */