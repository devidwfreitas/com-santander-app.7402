import android.support.v7.widget.RecyclerView;

public class mhs extends llm {
  private String[] a;
  
  private mhu b;
  
  public mhs(String[] paramArrayOfString) {
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
    paramllo.c.setOnClickListener(new mht(this, str));
  }
  
  public void a(mhu parammhu) {
    this.b = parammhu;
  }
  
  public int getItemCount() {
    return this.a.length;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mhs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */