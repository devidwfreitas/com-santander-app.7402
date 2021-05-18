import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.util.Log;

public class gka extends AsyncTask<gie, Void, gid> {
  private Activity a;
  
  private Dialog b;
  
  private gkv c;
  
  public gka(Activity paramActivity, gkv paramgkv) {
    this.a = paramActivity;
    this.c = paramgkv;
  }
  
  private gid a() {
    mzd<gid> mzd = new mzd();
    try {
      return mzd.a(gid.class, mzd.a("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\">\n   <soapenv:Body>\n      <dlwmin:obterCodigoBarraResponse xmlns:dlwmin=\"http://webservice.mbb.app.bsbr.altec.com/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n         <return>\n            <codigoBarra>03399.49281 36981.624608 00000.901025 8 00000000000000      </codigoBarra>\n            <codigoRetorno>0</codigoRetorno>\n            <dataHash>B+ImS7D8UwLuv1DuKrnOujr/N6wbSB0NOYsZp255XoERVebDU+ZdeFHxyBfReR0IFCaj6vzv7XjqkqzgKrTMszWqSqXaGY82xzFXc3fJ9J4=</dataHash>\n            <requestId>da8ec034-201a-4ab7-9b81-b79a683ba82a</requestId>\n            <autenticacao>da8ec034-201a-4ab7-9b81-b79a683ba82a</autenticacao>\n         </return>\n      </dlwmin:obterCodigoBarraResponse>\n   </soapenv:Body>\n</soapenv:Envelope>", "return", Boolean.valueOf(false)));
    } catch (Exception exception) {
      Log.e("ERROR_PARSER", exception.getMessage());
      return null;
    } 
  }
  
  protected gid a(gie... paramVarArgs) {
    gie gie1 = paramVarArgs[0];
    return (new gog<gie, gid>()).a(gie1, gid.class, has.w(), "obterCodigoBarra", "return");
  }
  
  protected void a(gid paramgid) {
    this.c.a(paramgid);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
    super.onPostExecute(paramgid);
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */