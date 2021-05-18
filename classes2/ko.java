import br.com.santander.dynamicauth.features.idsantander.a.a;

public class ko implements Runnable {
  public ko(a parama) {}
  
  public void run() {
    String str = a.a(this.a).getIntent().getStringExtra("ID_SANTANDER_TYPE");
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            a.c(this.a);
            return;
          case 0:
            str = a.a(this.a).getIntent().getStringExtra("ID_SANTANDER_QR");
            a.b(this.a, str);
            return;
          case 1:
            break;
        } 
        break;
      case 2028482772:
        if (str.equals("ID_SANTANDER_QR"))
          b = 0; 
      case -1541545288:
        if (str.equals("ID_SANTANDER_OTP"))
          b = 1; 
    } 
    a.c(this.a, a.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */