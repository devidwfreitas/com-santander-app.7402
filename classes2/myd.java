import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.homenaologada.presentation.HomeActivity;

class myd extends AsyncTask<Void, Void, Void> {
  protected Dialog a = null;
  
  myd(myc parammyc) {}
  
  protected Void a(Void... paramVarArgs) {
    hat.b().d();
    return null;
  }
  
  protected void a(Void paramVoid) {
    this.b.b.cancel();
    if (this.a != null && this.a.isShowing())
      this.a.cancel(); 
    miq.C().o();
    jcd.a();
    aqt.a();
    Intent intent = new Intent((Context)this.b.a, HomeActivity.class);
    intent.putExtra("reopen", true);
    intent.setFlags(67108864);
    ism.a = true;
    this.b.a.startActivity(intent);
  }
  
  protected void onPreExecute() {
    this.a = mxn.b(this.b.a);
    Log.d("DialogUtil", "Chat Finished");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */