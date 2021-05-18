import android.content.Context;
import android.view.View;
import com.santander.app.seguros.ui.widgets.BankItemView;
import com.santander.app.seguros.ui.widgets.DocumentAddItemView;
import com.santander.app.seguros.ui.widgets.DocumentItemView;

class lui implements Runnable {
  lui(luh paramluh, lur paramlur, kvs paramkvs) {}
  
  public void run() {
    lur.m(this.a).removeAllViews();
    BankItemView bankItemView = new BankItemView((Context)luh.a(this.c));
    bankItemView.setDesc(luh.b(this.c));
    bankItemView.setButtonOnClick(new luj(this));
    lur.m(this.a).addView((View)bankItemView);
    int i = 0;
    boolean bool;
    for (bool = true; i < this.b.a().size(); bool = bool1) {
      kwk kwk = this.b.a().get(i);
      boolean bool1 = bool;
      if (!kwk.d().d()) {
        if (kwk.a())
          bool = false; 
        DocumentItemView documentItemView = new DocumentItemView((Context)luh.a(this.c));
        documentItemView.setDocument(kwk);
        documentItemView.setListener(new luk(this));
        lur.m(this.a).addView((View)documentItemView);
        bool1 = bool;
      } 
      i++;
    } 
    DocumentAddItemView documentAddItemView = new DocumentAddItemView((Context)luh.a(this.c));
    documentAddItemView.setAddOnClickListener(new lul(this));
    lur.m(this.a).addView((View)documentAddItemView);
    if (bool && luh.b(this.c).a()) {
      lur.n(this.a).setImageResource(2130838381);
      return;
    } 
    lur.n(this.a).setImageResource(2130838466);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */