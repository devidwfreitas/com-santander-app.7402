import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import com.santander.app.habilitacaointernacional.activity.ListarPaisesHabilitacaoActivity;

public class inn extends AsyncTask<Void, Void, iok> {
  public inn(ListarPaisesHabilitacaoActivity paramListarPaisesHabilitacaoActivity) {}
  
  protected iok a(Void... paramVarArgs) {
    try {
      return hat.t().a();
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(iok paramiok) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramiok != null) {
      if (paramiok.a().size() > 0) {
        new iok();
        this.a.v.f().i(paramiok.g());
        ListarPaisesHabilitacaoActivity.a(this.a, new fqh(paramiok.a(), ListarPaisesHabilitacaoActivity.b(this.a)));
        ListarPaisesHabilitacaoActivity.c(this.a).setAdapter((ListAdapter)ListarPaisesHabilitacaoActivity.a(this.a));
        return;
      } 
      hat.d().a(ListarPaisesHabilitacaoActivity.b(this.a), paramiok, true, false);
      return;
    } 
    ListarPaisesHabilitacaoActivity.a(this.a, 1);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(ListarPaisesHabilitacaoActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */