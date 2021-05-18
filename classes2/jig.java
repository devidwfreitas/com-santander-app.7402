import android.view.View;

class jig implements View.OnClickListener {
  jig(jif paramjif, jih paramjih, jdw paramjdw) {}
  
  public void onClick(View paramView) {
    this.a.itemView.setTag(this.b);
    if (this.b.a()) {
      jih.b(this.a).setVisibility(4);
      jih.a(this.a).setTypeface(null, 0);
      this.b.a(false);
    } else {
      jih.b(this.a).setVisibility(0);
      jih.a(this.a).setTypeface(null, 1);
      this.b.a(true);
    } 
    this.c.notifyDataSetChanged();
    jif.a(this.c).onClick(this.a.itemView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */