import android.support.v7.widget.RecyclerView;
import android.view.View;

class tx implements View.OnClickListener {
  tx(tu paramtu, RecyclerView.ViewHolder paramViewHolder) {}
  
  public void onClick(View paramView) {
    if (((tz)this.a).i.getText().toString().equals(((tz)this.a).i.getResources().getString(lg.app_ver_produtos))) {
      ((tz)this.a).i.setText(lg.app_ocultar_produtos);
      ((tz)this.a).j.setVisibility(0);
      ((tz)this.a).h.setVisibility(0);
      ((tz)this.a).g.setVisibility(8);
      return;
    } 
    ((tz)this.a).i.setText(lg.app_ver_produtos);
    ((tz)this.a).j.setVisibility(8);
    ((tz)this.a).g.setVisibility(0);
    ((tz)this.a).h.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\tx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */