import android.view.View;

class jho implements View.OnClickListener {
  jho(jhn paramjhn, jhq paramjhq, jdx paramjdx) {}
  
  public void onClick(View paramView) {
    jhq.g(this.a).setVisibility(0);
    this.b.g().a(true);
    this.a.itemView.setTag(this.b);
    this.c.notifyDataSetChanged();
    jhn.a(this.c).onClick(this.a.itemView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */