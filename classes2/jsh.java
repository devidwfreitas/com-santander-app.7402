import android.content.SharedPreferences;
import com.santander.app.MinhaConta;

public class jsh implements jsf {
  public String a() {
    SharedPreferences sharedPreferences = MinhaConta.b().getSharedPreferences("novidadesSegmentada", 0);
    String str1 = sharedPreferences.getString("segPrimario", "");
    String str2 = sharedPreferences.getString("segSecundario", "");
    return str2.equalsIgnoreCase("OT") ? str1 : str2;
  }
  
  public void a(String paramString, jsg paramjsg) {
    jrx jrx;
    jrz jrz;
    jru jru;
    jsa jsa;
    jry jry;
    jsb jsb;
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            jrx = new jrx();
            paramjsg.a(jrx);
            return;
          case 0:
            jrz = new jrz();
            paramjsg.a(jrz);
            return;
          case 1:
            jru = new jru();
            paramjsg.a(jru);
            return;
          case 2:
            jsa = new jsa();
            paramjsg.a(jsa);
            return;
          case 3:
            jry = new jry();
            paramjsg.a(jry);
            return;
          case 4:
            jsb = new jsb();
            paramjsg.a(jsb);
            return;
          case 5:
            break;
        } 
        break;
      case 2713:
        if (jsb.equals("UN"))
          b = 0; 
      case 2374:
        if (jsb.equals("JP"))
          b = 1; 
      case 2734:
        if (jsb.equals("VD"))
          b = 2; 
      case 2642:
        if (jsb.equals("SE"))
          b = 3; 
      case 2737:
        if (jsb.equals("VG"))
          b = 4; 
      case 2562:
        if (jsb.equals("PR"))
          b = 5; 
    } 
    jrw jrw = new jrw();
    paramjsg.a(jrw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jsh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */