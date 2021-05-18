import android.content.Context;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import java.util.ArrayList;

public class lix implements kxl<kry> {
  public lix(ContractActivity paramContractActivity, String paramString) {}
  
  public void a(kry paramkry) {
    if (this.b.isFinishing())
      return; 
    ArrayList arrayList = new ArrayList();
    if (paramkry != null && paramkry.a() != null)
      for (int i = 0; i < paramkry.a().size(); i++) {
        if (((krz)paramkry.a().get(i)).c() != null && !((krz)paramkry.a().get(i)).c().isEmpty())
          arrayList.add(paramkry.a().get(i)); 
      }  
    paramkry = new kry();
    paramkry.a(arrayList);
    ContractActivity.a(this.b, paramkry);
    if (ContractActivity.a(this.b) != null && ContractActivity.a(this.b).a() != null) {
      if (ContractActivity.a(this.b).a().size() == 0) {
        ContractActivity.a(this.b, this.b.getResources().getString(2131298431));
        return;
      } 
      if (((krz)ContractActivity.a(this.b).a().get(0)).a().a() != null) {
        lnt lnt = lnt.a(ContractActivity.a(this.b), this.a);
        this.b.a(lnt, "offers_is_tag");
        return;
      } 
      ContractActivity.a(this.b, this.b.getResources().getString(2131298431));
      return;
    } 
    this.b.a((Context)this.b.i, this.b.getResources().getString(2131298431));
    ContractActivity.b(this.b).setState(aor.ERROR);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */