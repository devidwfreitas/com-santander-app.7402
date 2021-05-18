import android.view.View;

class lte implements View.OnClickListener {
  lte(ltd paramltd, ltg paramltg) {}
  
  public void onClick(View paramView) {
    boolean bool = false;
    ltd.a(this.b, Integer.valueOf(this.a.getAdapterPosition()));
    ltg.a(this.a).setClickable(false);
    this.b.notifyDataSetChanged();
    if (ltd.a(this.b) != null) {
      ltf ltf = ltd.a(this.b);
      if (ltd.b(this.b) == null || ltd.b(this.b).isEmpty())
        bool = true; 
      ltf.a(bool);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lte.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */