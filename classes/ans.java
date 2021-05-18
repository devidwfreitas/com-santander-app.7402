import android.content.Intent;
import android.view.View;
import br.com.santander.uisdk.search.presentation.SantanderViewSearchActivity;

public class ans implements View.OnClickListener {
  public ans(SantanderViewSearchActivity paramSantanderViewSearchActivity) {}
  
  public void onClick(View paramView) {
    int i = ((Integer)paramView.getTag()).intValue();
    Intent intent = new Intent();
    intent.putExtra("result", SantanderViewSearchActivity.d(this.a).get(i));
    this.a.setResult(-1, intent);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ans.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */