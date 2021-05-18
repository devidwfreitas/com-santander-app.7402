import android.text.Spannable;
import android.view.View;
import com.santander.app.seguros.ui.widgets.AdapterHISubItem;

class lil implements Runnable {
  lil(lik paramlik, liq paramliq, ktq paramktq) {}
  
  public void run() {
    liq.f(this.a).removeAllViews();
    if (this.b.b() != null)
      for (int i = 0; i < this.b.b().size(); i++) {
        Spannable spannable = this.b.b().get(i);
        AdapterHISubItem adapterHISubItem = new AdapterHISubItem(this.a.itemView.getContext());
        adapterHISubItem.setText(spannable);
        if (i == this.b.b().size() - 1) {
          adapterHISubItem.setLineVisible(4);
        } else {
          adapterHISubItem.setLineVisible(0);
        } 
        liq.f(this.a).addView((View)adapterHISubItem);
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */