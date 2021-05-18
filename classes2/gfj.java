import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import com.santander.app.contacorrente.domain.Conta;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;

public class gfj implements gfh {
  private Activity a;
  
  private gfi b;
  
  private ggo c;
  
  private Dialog d;
  
  private ger e;
  
  public gfj(gfi paramgfi, Activity paramActivity) {
    this.b = paramgfi;
    this.a = paramActivity;
    this.c = new ggp();
  }
  
  private String a(is paramis) {
    try {
      return paramis.c().getJSONObject("result").getString("positionDate");
    } catch (JSONException jSONException) {
      Log.e("Error", jSONException.toString());
      return "";
    } 
  }
  
  private String a(String paramString) {
    try {
      Date date = (new SimpleDateFormat("dd-MMM-yyyy")).parse(paramString);
      return (new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH)).format(date);
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
      return "";
    } 
  }
  
  private boolean a(String paramString1, String paramString2) {
    if (!paramString2.equals(""))
      try {
        Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString1);
        String str1 = (new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH)).format(date);
        String str2 = str1.toUpperCase();
        if (!paramString2.equals(str1)) {
          boolean bool = paramString2.equals(str2);
          if (!bool)
            return false; 
        } 
        return true;
      } catch (ParseException parseException) {
        Log.e("Error", parseException.toString());
        return true;
      }  
    return true;
  }
  
  private String b(int paramInt, String paramString) {
    String str1;
    String str2 = "";
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString);
      str1 = (new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH)).format(date);
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
      str1 = str2;
    } 
    return "/" + paramInt + "/" + str1;
  }
  
  public ger a(gfg paramgfg) {
    return this.e.a(paramgfg);
  }
  
  public void a() {
    List<Conta> list = miq.C().f().q().b();
    this.b.a(list);
  }
  
  public void a(int paramInt, String paramString) {
    this.d = mxn.b(this.a);
    this.c.a(new gfk(this, paramString), b(paramInt, paramString));
  }
  
  public String b() {
    try {
      InputStream inputStream = this.a.getAssets().open("jsons/carteiraDiaria.json");
      byte[] arrayOfByte = new byte[inputStream.available()];
      inputStream.read(arrayOfByte);
      inputStream.close();
      return new String(arrayOfByte, "UTF-8");
    } catch (IOException iOException) {
      Log.e("Error", iOException.getMessage());
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gfj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */