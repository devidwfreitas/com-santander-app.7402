package com.santander.app.perfil.activity;

import amr;
import amt;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.contacorrente.domain.Conta;
import gmy;
import grs;
import jrn;
import kbc;
import kbd;
import kbe;
import kbf;
import kbg;
import kbh;
import kbu;
import myg;
import myh;
import mzq;

public class InvestimentosNoAtmActivity extends grs {
  private static final String a = "InvestimentosNoAtmActivity";
  
  private SantanderDropDownView A;
  
  private int B = 0;
  
  private Conta C;
  
  private Dialog b;
  
  private kbu c = null;
  
  private String d = "";
  
  private ImageView e = null;
  
  private ImageView f = null;
  
  private ImageView g = null;
  
  private TextView w = null;
  
  private TextView x = null;
  
  private TextView y = null;
  
  private TextView z = null;
  
  private void a(SeekBar paramSeekBar) {
    (new kbh(this, (jrn)new kbe(this, paramSeekBar), (Activity)this)).c((Object[])new kca[0]);
  }
  
  public int a(String paramString1, String paramString2) {
    byte b2 = -1;
    byte b1 = b2;
    switch (paramString1.hashCode()) {
      default:
        b1 = b2;
      case 79:
      case 81:
      case 82:
        switch (b1) {
          default:
            return 0;
          case 0:
            this.e.setImageDrawable(getResources().getDrawable(2130839075));
            this.f.setImageDrawable(getResources().getDrawable(2130839074));
            this.g.setImageDrawable(getResources().getDrawable(2130839074));
            this.w.setTextColor(getResources().getColor(2131624195));
            this.x.setTextColor(getResources().getColor(2131624186));
            this.y.setTextColor(getResources().getColor(2131624186));
            this.z.setText(paramString2);
            return 0;
          case 1:
            this.e.setImageDrawable(getResources().getDrawable(2130839074));
            this.f.setImageDrawable(getResources().getDrawable(2130839075));
            this.g.setImageDrawable(getResources().getDrawable(2130839074));
            this.w.setTextColor(getResources().getColor(2131624186));
            this.x.setTextColor(getResources().getColor(2131624195));
            this.y.setTextColor(getResources().getColor(2131624186));
            this.z.setText(paramString2);
            return 50;
          case 2:
            break;
        } 
        this.e.setImageDrawable(getResources().getDrawable(2130839074));
        this.f.setImageDrawable(getResources().getDrawable(2130839074));
        this.g.setImageDrawable(getResources().getDrawable(2130839075));
        this.w.setTextColor(getResources().getColor(2131624186));
        this.x.setTextColor(getResources().getColor(2131624186));
        this.y.setTextColor(getResources().getColor(2131624195));
        this.z.setText(paramString2);
        return 100;
      case 83:
        b1 = b2;
        if (paramString1.equals("S"))
          b1 = 0; 
      case 80:
        b1 = b2;
        if (paramString1.equals("P"))
          b1 = 1; 
      case 78:
        break;
    } 
    b1 = b2;
    if (paramString1.equals("N"))
      b1 = 2; 
  }
  
  public SeekBar a(SeekBar paramSeekBar, Drawable paramDrawable, int paramInt1, int paramInt2) {
    paramSeekBar.setThumb(paramDrawable);
    paramSeekBar.setThumbOffset(paramInt2);
    paramSeekBar.setMax(paramInt1);
    return paramSeekBar;
  }
  
  public void a() {
    this.z = (TextView)findViewById(2131755870);
    this.e = (ImageView)findViewById(2131759543);
    this.f = (ImageView)findViewById(2131759544);
    this.g = (ImageView)findViewById(2131759545);
    this.w = (TextView)findViewById(2131759540);
    this.w.setTextColor(getResources().getColor(2131624195));
    this.x = (TextView)findViewById(2131759541);
    this.x.setTextColor(getResources().getColor(2131624195));
    this.y = (TextView)findViewById(2131759542);
    this.y.setTextColor(getResources().getColor(2131624195));
    SeekBar seekBar = (SeekBar)findViewById(2131759539);
    int i = (int)(seekBar.getMeasuredWidth() - getResources().getDimension(2131362010));
    seekBar = a(seekBar, getResources().getDrawable(2130839073), 100, i);
    a(this.e, this.f, this.g, getResources().getDrawable(2130839075), getResources().getDrawable(2130839074), getResources().getDrawable(2130839074));
    a(this.w, this.x, this.y, "    Não\nbloquear", "   Bloquear das\n18:00h até 9:00h", "Bloquear\n24 horas");
    this.A = (SantanderDropDownView)findViewById(2131755321);
    this.A.setAdapter((amr)gmy.e());
    this.A.setOnItemSelectedListener((amt)new kbc(this, seekBar));
    seekBar.setOnSeekBarChangeListener((SeekBar.OnSeekBarChangeListener)new kbd(this, seekBar));
  }
  
  public void a(int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 0:
        a(this.e, this.f, this.g, getResources().getDrawable(2130839075), getResources().getDrawable(2130839074), getResources().getDrawable(2130839074));
        a(this.w, this.x, this.y, "    Não\nbloquear", "   Bloquear das\n18:00h até 9:00h", "Bloquear\n24 horas");
        a(this.w, this.x, this.y, getResources().getColor(2131624195), getResources().getColor(2131624186), getResources().getColor(2131624186));
        return;
      case 50:
        a(this.e, this.f, this.g, getResources().getDrawable(2130839074), getResources().getDrawable(2130839075), getResources().getDrawable(2130839074));
        a(this.w, this.x, this.y, "    Não\nbloquear", "   Bloquear das\n18:00h até 9:00h", "Bloquear\n24 horas");
        a(this.w, this.x, this.y, getResources().getColor(2131624186), getResources().getColor(2131624195), getResources().getColor(2131624186));
        return;
      case 100:
        break;
    } 
    a(this.e, this.f, this.g, getResources().getDrawable(2130839074), getResources().getDrawable(2130839074), getResources().getDrawable(2130839075));
    a(this.w, this.x, this.y, "    Não\nbloquear", "   Bloquear das\n18:00h até 9:00h", "Bloquear\n24 horas");
    a(this.w, this.x, this.y, getResources().getColor(2131624186), getResources().getColor(2131624186), getResources().getColor(2131624195));
  }
  
  public void a(int paramInt1, int paramInt2, SeekBar paramSeekBar) {
    String str = "";
    switch (paramInt1) {
      default:
        a((Activity)this, str, paramInt2, paramInt1, paramSeekBar);
        return;
      case 0:
        this.d = "S";
        str = getString(2131298223);
        a(this.e, this.f, this.g, getResources().getDrawable(2130839075), getResources().getDrawable(2130839074), getResources().getDrawable(2130839074));
        a(this.w, this.x, this.y, "    Não\nbloquear", "   Bloquear das\n18:00h até 9:00h", "Bloquear\n24 horas");
        a(this.w, this.x, this.y, getResources().getColor(2131624195), getResources().getColor(2131624186), getResources().getColor(2131624186));
      case 50:
        this.d = "P";
        str = getString(2131298181);
        a(this.e, this.f, this.g, getResources().getDrawable(2130839074), getResources().getDrawable(2130839075), getResources().getDrawable(2130839074));
        a(this.w, this.x, this.y, "    Não\nbloquear", "   Bloquear das\n18:00h até 9:00h", "Bloquear\n24 horas");
        a(this.w, this.x, this.y, getResources().getColor(2131624186), getResources().getColor(2131624195), getResources().getColor(2131624186));
      case 100:
        break;
    } 
    this.d = "N";
    str = getString(2131298180);
    a(this.e, this.f, this.g, getResources().getDrawable(2130839074), getResources().getDrawable(2130839074), getResources().getDrawable(2130839075));
    a(this.w, this.x, this.y, "    Não\nbloquear", "   Bloquear das\n18:00h até 9:00h", "Bloquear\n24 horas");
    a(this.w, this.x, this.y, getResources().getColor(2131624186), getResources().getColor(2131624186), getResources().getColor(2131624195));
  }
  
  public void a(Activity paramActivity, String paramString, int paramInt1, int paramInt2, SeekBar paramSeekBar) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130968872);
    dialog.setCancelable(false);
    ((TextView)dialog.findViewById(2131756526)).setText(paramString);
    Button button = (Button)dialog.findViewById(2131756528);
    button.setText("Confirmar");
    button.setOnClickListener((View.OnClickListener)new kbf(this, dialog, paramSeekBar, paramInt1, paramInt2));
    button = (Button)dialog.findViewById(2131756527);
    button.setText("Cancelar");
    button.setOnClickListener((View.OnClickListener)new kbg(this, paramSeekBar, paramInt1, dialog));
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg(paramActivity));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh(paramActivity));
    dialog.show();
  }
  
  public void a(ImageView paramImageView1, ImageView paramImageView2, ImageView paramImageView3, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3) {
    paramImageView1.setImageDrawable(paramDrawable1);
    paramImageView2.setImageDrawable(paramDrawable2);
    paramImageView3.setImageDrawable(paramDrawable3);
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
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968696);
    c(2131298954);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\perfil\activity\InvestimentosNoAtmActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */