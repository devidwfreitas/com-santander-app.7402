import android.content.Context;
import java.util.ArrayList;

class adc implements ot {
  adc(acy paramacy) {}
  
  public void a(abv paramabv) {
    ArrayList<ou> arrayList = new ArrayList();
    if (!((on)paramabv).a().isEmpty()) {
      for (ou ou : ((on)paramabv).a()) {
        ou.g();
        arrayList.add(ou);
      } 
      this.a.a.a(arrayList);
      acy.d(this.a);
      return;
    } 
    this.a.d = Boolean.valueOf(false);
    this.a.k();
  }
  
  public void a(aby paramaby) {
    this.a.d = Boolean.valueOf(false);
    aad.a((Context)this.a.e(), new add(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\adc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */