package br.com.santander.investimentoV2.shared.commons;

import aav;
import aaw;
import aax;
import aay;
import android.content.Context;
import android.support.v7.widget.AppCompatEditText;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

public class TextWatcherValorBR extends AppCompatEditText {
  private DecimalFormat a;
  
  private EditText b;
  
  private aay c;
  
  public TextWatcherValorBR(Context paramContext) {
    super(paramContext);
  }
  
  public TextWatcherValorBR(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public TextWatcherValorBR(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a() {
    clearFocus();
    this.c.b();
  }
  
  private void b() {
    requestFocus();
    this.c.a();
  }
  
  public void a(aay paramaay) {
    this.a = new DecimalFormat("#,###.##", new DecimalFormatSymbols(new Locale("pt", "BR")));
    this.a.setDecimalSeparatorAlwaysShown(true);
    this.a.setMinimumFractionDigits(2);
    this.b = (EditText)this;
    this.c = paramaay;
    this.b.setOnEditorActionListener((TextView.OnEditorActionListener)new aav(this));
    this.b.setOnFocusChangeListener((View.OnFocusChangeListener)new aaw(this));
    this.b.addTextChangedListener((TextWatcher)new aax(this));
  }
  
  public boolean dispatchKeyEventPreIme(KeyEvent paramKeyEvent) {
    if (paramKeyEvent.getKeyCode() == 4 && paramKeyEvent.getAction() == 1) {
      a();
      return false;
    } 
    return super.dispatchKeyEventPreIme(paramKeyEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\shared\commons\TextWatcherValorBR.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */