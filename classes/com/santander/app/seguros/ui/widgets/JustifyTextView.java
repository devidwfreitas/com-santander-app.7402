package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.graphics.Paint;
import android.support.v7.widget.AppCompatTextView;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.style.CharacterStyle;
import android.util.AttributeSet;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import mcs;

public class JustifyTextView extends AppCompatTextView {
  private Paint a;
  
  private String b = " ";
  
  private String c = "";
  
  private float d = 0.0F;
  
  private int e = 0;
  
  private int f = 0;
  
  private ArrayList<String> g = new ArrayList<String>();
  
  private StringBuilder h = new StringBuilder();
  
  private List<mcs> i = new ArrayList<mcs>();
  
  private StringBuilder j = new StringBuilder();
  
  private int k;
  
  private float l;
  
  private float m;
  
  public JustifyTextView(Context paramContext) {
    super(paramContext);
  }
  
  public JustifyTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public JustifyTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int a(int paramInt) {
    return (new Random()).nextInt(paramInt) & 0xFFFFFFFE;
  }
  
  private String a(ArrayList<String> paramArrayList) {
    this.j.setLength(0);
    for (String str : paramArrayList)
      this.j.append(str); 
    return this.j.toString();
  }
  
  private void a() {
    this.g.clear();
    this.d = 0.0F;
    this.e = 0;
    this.f = 0;
  }
  
  private void a(int paramInt1, int paramInt2, ArrayList<String> paramArrayList) {
    int i = 0;
    boolean bool1 = true;
    boolean bool2 = true;
    if (paramInt1 != 0) {
      if (paramInt1 == paramInt2) {
        paramInt1 = bool2;
        while (true) {
          if (paramInt1 < paramArrayList.size()) {
            paramArrayList.set(paramInt1, (String)paramArrayList.get(paramInt1) + this.b);
            paramInt1 += 2;
            continue;
          } 
          return;
        } 
      } 
      if (paramInt1 < paramInt2) {
        paramInt2 = i;
        while (true) {
          if (paramInt2 < paramInt1) {
            i = a(paramArrayList.size() - 1);
            paramArrayList.set(i, (String)paramArrayList.get(i) + this.b);
            paramInt2++;
            continue;
          } 
          return;
        } 
      } 
      if (paramInt1 > paramInt2) {
        while (paramInt1 > paramInt2) {
          for (i = 1; i < paramArrayList.size() - 1; i += 2)
            paramArrayList.set(i, (String)paramArrayList.get(i) + this.b); 
          paramInt1 -= paramInt2 - 1;
        } 
        if (paramInt1 != 0) {
          if (paramInt1 == paramInt2) {
            paramInt1 = bool1;
            while (true) {
              if (paramInt1 < paramArrayList.size()) {
                paramArrayList.set(paramInt1, (String)paramArrayList.get(paramInt1) + this.b);
                paramInt1 += 2;
                continue;
              } 
              return;
            } 
          } 
          if (paramInt1 < paramInt2) {
            paramInt2 = 0;
            while (true) {
              if (paramInt2 < paramInt1) {
                i = a(paramArrayList.size() - 1);
                paramArrayList.set(i, (String)paramArrayList.get(i) + this.b);
                paramInt2++;
                continue;
              } 
              return;
            } 
          } 
        } 
      } 
    } 
  }
  
  private void a(String paramString, boolean paramBoolean) {
    if (this.d + this.a.measureText(paramString) < this.k) {
      String str;
      this.g.add(paramString);
      this.f++;
      ArrayList<String> arrayList = this.g;
      if (paramBoolean) {
        str = "";
      } else {
        str = " ";
      } 
      arrayList.add(str);
      this.d += this.a.measureText(paramString) + this.m;
      if (paramBoolean) {
        this.c += a(this.g);
        a();
      } 
      return;
    } 
    while (this.d < this.k) {
      this.d += this.l;
      if (this.d < this.k)
        this.e++; 
    } 
    if (this.f > 1)
      a(this.e, this.f, this.g); 
    this.c += a(this.g);
    a();
    if (paramBoolean) {
      this.c += paramString;
      this.f = 0;
      return;
    } 
    this.g.add(paramString);
    this.f = 1;
    this.g.add(" ");
    this.d += this.a.measureText(paramString) + this.m;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (!this.c.replace(" ", "").replace("", this.b).equals(getText().toString().replace(" ", "").replace("", this.b))) {
      ViewGroup.LayoutParams layoutParams = getLayoutParams();
      CharSequence charSequence = getText();
      this.i.clear();
      String[] arrayOfString = getText().toString().split(" ");
      SpannableString spannableString2 = SpannableString.valueOf(charSequence);
      if (charSequence instanceof SpannedString)
        for (paramInt1 = 0; paramInt1 < getText().length() - 1; paramInt1++) {
          CharacterStyle[] arrayOfCharacterStyle = (CharacterStyle[])((SpannedString)charSequence).getSpans(paramInt1, paramInt1 + 1, CharacterStyle.class);
          if (arrayOfCharacterStyle != null && arrayOfCharacterStyle.length > 0) {
            paramInt4 = arrayOfCharacterStyle.length;
            paramInt2 = 0;
            label89: while (paramInt2 < paramInt4) {
              CharacterStyle characterStyle = arrayOfCharacterStyle[paramInt2];
              paramInt3 = (charSequence.toString().substring(0, paramInt1).split(" ")).length;
              int i = (charSequence.toString().substring(0, paramInt1).split(this.b)).length;
              mcs mcs = mcs.a(arrayOfCharacterStyle, spannableString2.getSpanStart(characterStyle), spannableString2.getSpanEnd(characterStyle), paramInt3 + i);
              this.h.setLength(0);
              paramInt3 = 0;
              while (true) {
                if (paramInt3 <= arrayOfString.length - 1) {
                  this.h.append(arrayOfString[paramInt3]);
                  this.h.append(" ");
                  if (this.h.length() > paramInt1) {
                    if (arrayOfString[paramInt3].trim().replace(this.b, "").length() == 1) {
                      mcs.a(paramInt3);
                    } else {
                      mcs.a(paramInt3);
                      mcs.a(true);
                    } 
                  } else {
                    paramInt3++;
                    continue;
                  } 
                } 
                this.i.add(mcs);
                paramInt2++;
                continue label89;
              } 
            } 
          } 
        }  
      this.a = (Paint)getPaint();
      this.k = getMeasuredWidth() - getPaddingLeft() + getPaddingRight();
      if (layoutParams.width != -2 && this.k > 0 && arrayOfString.length > 0 && this.c.isEmpty()) {
        this.l = this.a.measureText(this.b);
        this.m = this.a.measureText(" ");
        for (paramInt1 = 0; paramInt1 <= arrayOfString.length - 1; paramInt1++) {
          if (arrayOfString[paramInt1].contains("\n") || arrayOfString[paramInt1].contains("\r")) {
            paramInt2 = 1;
          } else {
            paramInt2 = 0;
          } 
          if (paramInt2 != 0) {
            String[] arrayOfString1 = arrayOfString[paramInt1].split("(?<=\\n)");
            paramInt3 = arrayOfString1.length;
            for (paramInt2 = 0; paramInt2 < paramInt3; paramInt2++) {
              charSequence = arrayOfString1[paramInt2];
              a((String)charSequence, charSequence.contains("\n"));
            } 
          } else {
            a(arrayOfString[paramInt1], false);
          } 
        } 
        this.c += a(this.g);
      } 
      SpannableString spannableString1 = SpannableString.valueOf(this.c);
      for (mcs mcs : this.i) {
        paramInt3 = 0;
        paramInt1 = 0;
        int i = 0;
        paramInt4 = 0;
        while (paramInt1 < mcs.b() + 1) {
          if (this.c.charAt(paramInt4) == ' ' || this.c.charAt(paramInt4) == ' ') {
            paramInt3++;
            paramInt2 = paramInt1;
            if (i)
              paramInt2 = paramInt1 + 1; 
            i = 0;
            paramInt1 = paramInt2;
            paramInt2 = i;
          } else {
            paramInt2 = 1;
          } 
          paramInt4++;
          i = paramInt2;
        } 
        paramInt2 = mcs.d();
        paramInt4 = mcs.f();
        if (mcs.a()) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        } 
        mcs.b(paramInt1 + paramInt2 + paramInt3 - paramInt4);
        paramInt2 = mcs.e();
        paramInt4 = mcs.f();
        if (mcs.a()) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        } 
        mcs.c(paramInt1 + paramInt2 + paramInt3 - paramInt4);
      } 
      for (mcs mcs : this.i) {
        CharacterStyle[] arrayOfCharacterStyle = mcs.c();
        paramInt2 = arrayOfCharacterStyle.length;
        for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++)
          spannableString1.setSpan(arrayOfCharacterStyle[paramInt1], mcs.d(), mcs.e(), 0); 
      } 
      if (!this.c.isEmpty()) {
        setText((CharSequence)spannableString1);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\JustifyTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */