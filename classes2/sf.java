import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

class sf implements View.OnClickListener {
  sf(rz paramrz) {}
  
  public void onClick(View paramView) {
    Dialog dialog = new Dialog((Context)this.a.e());
    dialog.setContentView(lc.layout_composicao_poupanca);
    dialog.setTitle(lg.label_composicao);
    if (Build.VERSION.SDK_INT >= 23)
      dialog.findViewById(la.dialg_title).setVisibility(0); 
    Button button = (Button)dialog.findViewById(la.btn_fechar);
    TextView textView1 = (TextView)dialog.findViewById(la.vlr_nova_regra);
    TextView textView2 = (TextView)dialog.findViewById(la.vlr_nova_antiga);
    TextView textView3 = (TextView)dialog.findViewById(la.total_investido);
    textView1.setText(aat.a(rz.a(this.a).n().s().i()));
    textView2.setText(aat.a(rz.a(this.a).n().s().j()));
    textView3.setText(aat.a(rz.a(this.a).n().s().b()));
    button.setOnClickListener(new sg(this, dialog));
    InsetDrawable insetDrawable = new InsetDrawable((Drawable)new ColorDrawable(this.a.e().getResources().getColor(kx.inv_white)), 20);
    dialog.getWindow().setBackgroundDrawable((Drawable)insetDrawable);
    dialog.show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\sf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */