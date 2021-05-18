import android.telephony.TelephonyManager;
import com.santander.app.MinhaConta;

class itm implements foh {
  itm(itg paramitg) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    String[] arrayOfString = myz.a(MinhaConta.b());
    String str1 = ((TelephonyManager)MinhaConta.b().getSystemService("phone")).getSimOperatorName().toUpperCase();
    String str2 = arrayOfString[2];
    frq.d("Outros_Geolocalizacao_StartGeo", "Sucesso");
    itg.c(this.a).a(String.valueOf(paramObject.getLatitude()), String.valueOf(paramObject.getLongitude()), str1, "", str2);
    itg.e(this.a).removeUpdates(itg.d(this.a));
    frq.e("Login_Acao", paramObject.getLatitude() + "," + paramObject.getLongitude() + ",");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */