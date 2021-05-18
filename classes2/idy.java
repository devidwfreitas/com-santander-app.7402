import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.santander.app.faturas.activity.DetalheFaturaActivity;

public class idy implements View.OnClickListener {
  public idy(DetalheFaturaActivity paramDetalheFaturaActivity) {}
  
  public void onClick(View paramView) {
    String str = ((EditText)DetalheFaturaActivity.a(this.a).findViewById(2131757220)).getText().toString();
    if (str != null && !str.isEmpty() && DetalheFaturaActivity.a(str)) {
      DetalheFaturaActivity.a(this.a, str);
      DetalheFaturaActivity.a(this.a, new iea(this.a, null));
      DetalheFaturaActivity.b(this.a).execute((Object[])new Void[0]);
      return;
    } 
    (new AlertDialog.Builder((Context)DetalheFaturaActivity.c(this.a))).setTitle("Atenção").setMessage("Favor informar o e-mail corretamente.").setPositiveButton(17039379, new idz(this)).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\idy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */