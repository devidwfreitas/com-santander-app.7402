import android.app.Activity;
import java.util.ArrayList;

public class ihx implements igt, ihw {
  private ihl a;
  
  private Activity b;
  
  private igs c;
  
  public ihx(ihl paramihl) {
    this.a = paramihl;
    this.b = (Activity)paramihl;
    this.c = new igu(this.b, this);
  }
  
  private void b(igg paramigg) {
    ArrayList<gkx> arrayList = new ArrayList();
    gkx gkx = null;
    String[] arrayOfString = paramigg.b().split("\\|");
    int j = arrayOfString.length;
    int i = 0;
    while (i < j) {
      gkx gkx1;
      String str = arrayOfString[i];
      if (!str.contains(":")) {
        gkx1 = gkx;
        if (!str.equals("")) {
          gkx1 = new gkx();
          gkx1.a(str);
        } 
      } else if (str.equals("|")) {
        System.out.println(str);
        gkx1 = gkx;
      } else {
        String str1;
        gkx1 = gkx;
        if (arrayList.contains(gkx)) {
          gkx1 = gkx;
          if (arrayList.contains(gkx))
            gkx1 = arrayList.get(arrayList.indexOf(gkx)); 
        } 
        if (gkx1.c() == null)
          gkx1.a(new ArrayList<gky>()); 
        ArrayList<gky> arrayList1 = gkx1.c();
        String str2 = str.split(":")[0] + ": ";
        if ((str.split(":")).length > 1) {
          str1 = str.split(":")[1];
        } else {
          str1 = "";
        } 
        arrayList1.add(new gky(str2, str1));
      } 
      if (!arrayList.contains(gkx1))
        arrayList.add(gkx1); 
      i++;
      gkx = gkx1;
    } 
    paramigg.a(arrayList);
  }
  
  public void a() {
    this.a.a("Anteção", "Desculpe, não conseguimos recuperar sua proposta neste momento. Tente Novamente mais tarde.");
  }
  
  public void a(int paramInt) {
    this.c.a(paramInt);
  }
  
  public void a(gvb paramgvb) {
    this.a.a(paramgvb);
  }
  
  public void a(igg paramigg) {
    b(paramigg);
    this.a.a(paramigg);
  }
  
  public void a(igl paramigl, igg paramigg) {
    mxn.b(this.b);
    this.c.a(paramigl, paramigg);
  }
  
  public void b() {
    this.a.a("Caro cliente", "Desculpe, não conseguimos formalizar sua proposta neste momento. Tente Novamente mais tarde.");
  }
  
  public void c() {
    miq.C().f(true);
    this.a.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */