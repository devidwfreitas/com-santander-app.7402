import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

class jvs extends RecyclerView.ViewHolder {
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  jvs(jvq paramjvq, View paramView) {
    super(paramView);
    a(paramView);
    a();
  }
  
  private void a() {
    this.d.setOnClickListener(new jvt(this));
  }
  
  private void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131758948);
    this.c = (TextView)paramView.findViewById(2131758949);
    this.d = (TextView)paramView.findViewById(2131758950);
    this.d.setPaintFlags(this.d.getPaintFlags() | 0x8);
  }
  
  private void a(jsr paramjsr, String paramString) {
    for (gku gku : paramjsr.m()) {
      if (gku.b().equals("Valor a receber ")) {
        gku.c("R$ " + paramString);
        break;
      } 
    } 
  }
  
  private void b() {
    this.a.a();
    juf juf = new juf(new jvu(this));
    juf.a(jvq.c(this.a).get(getAdapterPosition()));
    juf.show(jvq.b(this.a).getFragmentManager(), "alterar-valor");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jvs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */