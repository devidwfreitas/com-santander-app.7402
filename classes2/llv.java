import android.support.v7.widget.RecyclerView;

public class llv extends llm {
  private String[] a;
  
  private llx b;
  
  public llv(String[] paramArrayOfString) {
    this.a = paramArrayOfString;
  }
  
  public int a() {
    return this.a.length - 1;
  }
  
  public void a(llo paramllo, int paramInt) {
    String str = this.a[paramllo.getAdapterPosition()];
    paramllo.c.setOnClickListener(null);
    if (paramllo.getAdapterPosition() == a()) {
      paramllo.b.setVisibility(4);
    } else {
      paramllo.b.setVisibility(0);
    } 
    paramllo.a.setText(str);
    paramllo.c.setOnClickListener(new llw(this, str));
  }
  
  public void a(llx paramllx) {
    this.b = paramllx;
  }
  
  public int getItemCount() {
    return this.a.length;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */