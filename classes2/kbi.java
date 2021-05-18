import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.List;

public class kbi extends BaseAdapter {
  private Context a;
  
  private LayoutInflater b;
  
  private List<kbq> c;
  
  private ImageView d;
  
  private ImageView e;
  
  private ImageView f;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private ImageView k;
  
  private TextView l;
  
  private kbq m;
  
  private int n = 0;
  
  public kbi(Context paramContext, List<kbq> paramList) {
    this.a = paramContext;
    this.c = paramList;
  }
  
  public int a(String paramString) {
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return 0;
          case 0:
            a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839075), this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839076));
            a(this.g, this.h, this.i, "Consultar", "Habilitar", "Excluir");
            a(this.g, this.h, this.i, this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624186));
            return 0;
          case 1:
            a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839075), this.a.getResources().getDrawable(2130839076));
            a(this.g, this.h, this.i, "Bloquear", "Habilitado", "Excluir");
            a(this.g, this.h, this.i, this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186));
            return 50;
          case 2:
            a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839075));
            a(this.g, this.h, this.i, "Consultar", "Habilitar", "Excluir");
            a(this.g, this.h, this.i, this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624195));
            return 100;
          case 3:
            a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839075), this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839076));
            a(this.g, this.h, this.i, "Bloqueado", "Habilitar", "Excluir");
            a(this.g, this.h, this.i, this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624186));
            return 0;
          case 4:
            break;
        } 
        a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839075), this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839076));
        a(this.g, this.h, this.i, "Bloqueado", "Habilitar", "Excluir");
        a(this.g, this.h, this.i, this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186));
        return 0;
      case 50:
        if (paramString.equals("2"))
          b = 0; 
      case 55:
        if (paramString.equals("7"))
          b = 1; 
      case 56:
        if (paramString.equals("8"))
          b = 2; 
      case 1598:
        if (paramString.equals("20"))
          b = 3; 
      case 1605:
        break;
    } 
    if (paramString.equals("27"))
      b = 4; 
  }
  
  public kbq a(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, SeekBar paramSeekBar, int paramInt3, String paramString) {
    String str = new String();
    switch (paramInt1) {
      default:
        paramString = str;
        a((Activity)this.a, paramString, this.c.get(paramInt2), paramInt3, paramInt1, paramSeekBar);
        return;
      case 0:
        this.m = this.c.get(paramInt2);
        a(this.g, this.h, this.i, "Consultar", "Habilitar", "Excluir");
        a(this.g, this.h, this.i, this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624186));
        paramString = this.a.getString(2131296419) + " " + paramString + "?";
        a((Activity)this.a, paramString, this.c.get(paramInt2), paramInt3, paramInt1, paramSeekBar);
        return;
      case 50:
        a(this.g, this.h, this.i, "Bloquear", "Habilitado", "Excluir");
        a(this.g, this.h, this.i, this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186));
        paramString = this.a.getString(2131296421) + " " + paramString + "?";
        a((Activity)this.a, paramString, this.c.get(paramInt2), paramInt3, paramInt1, paramSeekBar);
        return;
      case 100:
        break;
    } 
    a(this.g, this.h, this.i, "Consultar", "Habilitar", "Excluir");
    a(this.g, this.h, this.i, this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624195));
    paramString = this.a.getString(2131296420) + " " + paramString + "?";
    a((Activity)this.a, paramString, this.c.get(paramInt2), paramInt3, paramInt1, paramSeekBar);
  }
  
  public void a(Activity paramActivity, String paramString, kbq paramkbq, int paramInt1, int paramInt2, SeekBar paramSeekBar) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    dialog.setCancelable(false);
    ((TextView)dialog.findViewById(2131756526)).setText(paramString);
    Button button = (Button)dialog.findViewById(2131756528);
    button.setText("Confirmar");
    button.setOnClickListener(new kbk(this, paramSeekBar, paramInt1, dialog, paramkbq, paramInt2));
    button = (Button)dialog.findViewById(2131756527);
    button.setText("Cancelar");
    button.setOnClickListener(new kbl(this, paramSeekBar, paramInt1, dialog));
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    dialog.show();
  }
  
  public void a(ImageView paramImageView1, ImageView paramImageView2, ImageView paramImageView3, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3) {
    paramImageView1.setImageDrawable(paramDrawable1);
    paramImageView2.setImageDrawable(paramDrawable2);
    paramImageView3.setImageDrawable(paramDrawable3);
  }
  
  public void a(SeekBar paramSeekBar, Drawable paramDrawable, int paramInt1, int paramInt2) {
    paramSeekBar.setThumb(paramDrawable);
    paramSeekBar.setThumbOffset(paramInt2);
    paramSeekBar.setMax(paramInt1);
  }
  
  public void a(TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, int paramInt1, int paramInt2, int paramInt3) {
    paramTextView1.setTextColor(paramInt1);
    paramTextView2.setTextColor(paramInt2);
    paramTextView3.setTextColor(paramInt3);
  }
  
  public void a(TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, String paramString1, String paramString2, String paramString3) {
    paramTextView1.setText(paramString1);
    paramTextView2.setText(paramString2);
    paramTextView3.setText(paramString3);
  }
  
  public void b(int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 0:
        a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839075), this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839076));
        a(this.g, this.h, this.i, "Consultar", "Habilitar", "Excluir");
        a(this.g, this.h, this.i, this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624186));
        return;
      case 50:
        a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839075), this.a.getResources().getDrawable(2130839076));
        a(this.g, this.h, this.i, "Bloquear", "Habilitado", "Excluir");
        a(this.g, this.h, this.i, this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624195), this.a.getResources().getColor(2131624186));
        return;
      case 100:
        break;
    } 
    a(this.d, this.e, this.f, this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839074), this.a.getResources().getDrawable(2130839075));
    a(this.g, this.h, this.i, "Consultar", "Habilitar", "Excluir");
    a(this.g, this.h, this.i, this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624186), this.a.getResources().getColor(2131624195));
  }
  
  public int getCount() {
    return this.c.size();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    this.b = (LayoutInflater)this.a.getSystemService("layout_inflater");
    paramView = this.b.inflate(2130968773, null);
    this.k = (ImageView)paramView.findViewById(2131755797);
    this.j = (TextView)paramView.findViewById(2131756154);
    this.l = (TextView)paramView.findViewById(2131756153);
    this.l.setText(((kbq)this.c.get(paramInt)).b());
    SeekBar seekBar = (SeekBar)paramView.findViewById(2131759539);
    if (Integer.parseInt(((kbq)this.c.get(paramInt)).f()) == 7)
      this.k.setImageDrawable(this.a.getResources().getDrawable(2130838258)); 
    this.j.setText("inclusão: " + ((kbq)this.c.get(paramInt)).e());
    this.j.setTextColor(paramView.getResources().getColor(2131624186));
    this.d = (ImageView)paramView.findViewById(2131759543);
    this.e = (ImageView)paramView.findViewById(2131759544);
    this.f = (ImageView)paramView.findViewById(2131759545);
    this.g = (TextView)paramView.findViewById(2131759540);
    this.g.setTextColor(paramView.getResources().getColor(2131624195));
    this.h = (TextView)paramView.findViewById(2131759541);
    this.h.setTextColor(paramView.getResources().getColor(2131624195));
    this.i = (TextView)paramView.findViewById(2131759542);
    this.i.setTextColor(paramView.getResources().getColor(2131624195));
    int i = (int)(seekBar.getMeasuredWidth() - paramView.getResources().getDimension(2131362010));
    a(seekBar, paramView.getResources().getDrawable(2130839073), 100, i);
    seekBar.setProgress(a(((kbq)this.c.get(paramInt)).f()));
    seekBar.setOnSeekBarChangeListener(new kbj(this, paramInt));
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */