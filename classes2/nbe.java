import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

public class nbe implements nbd {
  private static List<gyv> c;
  
  private nds a;
  
  private Activity b;
  
  private String d;
  
  private gzs e;
  
  public nbe(nds paramnds, Activity paramActivity) {
    this.a = paramnds;
    this.b = paramActivity;
  }
  
  private boolean b(String paramString) {
    return (paramString != null && !paramString.isEmpty() && !paramString.equals("NULL_CSTRING") && !paramString.equals("NULL"));
  }
  
  public void a() {
    gyu gyu = new gyu(this.b.getApplicationContext());
    gyu.a();
    c = gyu.c();
    gyu.close();
    if (c.size() > 0) {
      this.a.b();
      return;
    } 
    this.a.c();
  }
  
  public void a(String paramString) {
    try {
      this.d = paramString;
      this.e = gyy.a(c, paramString);
      if (this.e.b() != null && this.e.b().size() > 0) {
        String str = this.e.b().get(0);
        if (this.e.b().size() > 1) {
          paramString = ((String)this.e.b().get(1)).trim();
        } else {
          paramString = "";
        } 
        if (b(str)) {
          if (b(paramString)) {
            ArrayList<gky> arrayList = new ArrayList();
            String[] arrayOfString = paramString.split("\\*");
            int j = arrayOfString.length;
            for (int i = 0; i < j; i++) {
              String[] arrayOfString1 = arrayOfString[i].trim().split("\\|");
              arrayList.add(new gky(arrayOfString1[0], arrayOfString1[1]));
            } 
            this.a.a(str, arrayList);
            return;
          } 
          this.a.d(str);
          return;
        } 
        frq.d("ID_SANTANDER_LEITURA_QR_CODE_VALIDAR_RESULTADO_SCAN", "ERROR - qr1");
        this.a.b("qr1");
        return;
      } 
    } catch (Exception exception) {
      frq.d("ID_SANTANDER_LEITURA_QR_CODE_VALIDAR_RESULTADO_SCAN_EXCEPTION", exception.toString());
      return;
    } 
    frq.d("ID_SANTANDER_LEITURA_QR_CODE_VALIDAR_RESULTADO_SCAN_ACTIVATIONPARAMETERS", "LISTA_VAZIA");
    this.a.b(null);
  }
  
  public void b() {
    this.e = gyy.a(c, this.e, this.d);
    if (this.e.a() != null) {
      this.a.c(this.e.a().toString());
      return;
    } 
    this.a.b(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */