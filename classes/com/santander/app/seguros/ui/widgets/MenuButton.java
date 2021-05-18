package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.Button;
import flv;
import java.util.ArrayList;
import java.util.List;
import mhj;

public class MenuButton extends Button {
  private Paint a;
  
  private TextPaint b;
  
  private TextPaint c;
  
  private Float d;
  
  private String e;
  
  private Bitmap f;
  
  private Bitmap g;
  
  private Paint h;
  
  private float i;
  
  private float j;
  
  private float k;
  
  private int l;
  
  private int m;
  
  private Bitmap n;
  
  private boolean o;
  
  private final String p = "fonts/OpenSans-Light.ttf";
  
  private String q = "fonts/OpenSans-Light.ttf";
  
  public MenuButton(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public MenuButton(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.MenuButton, 0, 0);
    this.e = typedArray.getString(0);
    this.d = Float.valueOf(typedArray.getDimension(2, getResources().getDimensionPixelSize(2131362047)));
    Drawable drawable = typedArray.getDrawable(3);
    if (drawable != null)
      this.f = ((BitmapDrawable)drawable).getBitmap(); 
    drawable = typedArray.getDrawable(4);
    if (drawable != null)
      this.g = ((BitmapDrawable)drawable).getBitmap(); 
    int i = typedArray.getInteger(1, 0);
    int j = typedArray.getInteger(5, 0);
    this.m = typedArray.getColor(6, getResources().getColor(2131624056));
    this.i = mhj.b(getContext(), Integer.valueOf(j).intValue());
    this.j = mhj.b(getContext(), Integer.valueOf(i).intValue());
    this.o = typedArray.getBoolean(7, true);
    this.l = typedArray.getColor(8, -3355444);
    typedArray.recycle();
    a();
  }
  
  private void a() {
    int i;
    if (Build.VERSION.SDK_INT >= 21)
      setStateListAnimator(null); 
    this.b = new TextPaint(1);
    TextPaint textPaint = this.b;
    if (isSelected()) {
      i = getResources().getColor(2131624121);
    } else {
      i = this.m;
    } 
    textPaint.setColor(i);
    this.b.setTextSize(this.d.floatValue());
    if (this.f != null) {
      this.k = this.i + this.f.getWidth() + this.j;
    } else {
      this.k = this.i + this.j;
    } 
    this.h = new Paint(1);
    this.a = new Paint(1);
    this.a.setColor(this.l);
    if (this.f != null)
      this.n = a(this.f, this.f.getWidth() - 24, this.f.getHeight() - 24); 
    if (TextUtils.isEmpty(this.q))
      this.q = "fonts/OpenSans-Light.ttf"; 
  }
  
  private List<String> b() {
    String[] arrayOfString = this.e.split("\\s+");
    ArrayList<String> arrayList = new ArrayList();
    float f = getWidth() - this.k - getResources().getDimension(2131361962);
    for (int i = 0; i < arrayOfString.length; i++) {
      String str = arrayOfString[i];
      if (a(str, (Paint)this.b) > f) {
        char[] arrayOfChar = str.toCharArray();
        str = "";
        String str1 = "";
        int j;
        for (j = 0; j < arrayOfChar.length; j++) {
          if (a(str, (Paint)this.b) < f) {
            str = str + arrayOfChar[j];
          } else {
            str1 = str1 + arrayOfChar[j];
          } 
        } 
        arrayList.add(str);
        j = i + 1;
        i = j;
        if (!str1.isEmpty()) {
          i = j - 1;
          arrayOfString[i] = str1;
        } 
        continue;
      } 
      while (true) {
        String str1;
        StringBuilder stringBuilder = (new StringBuilder()).append(str).append(" ");
        if (i < arrayOfString.length - 1) {
          str1 = arrayOfString[i + 1];
        } else {
          str1 = "";
        } 
        if (a(stringBuilder.append(str1).toString(), (Paint)this.b) < f && i < arrayOfString.length) {
          i++;
          StringBuilder stringBuilder1 = (new StringBuilder()).append(str).append(" ");
          if (i < arrayOfString.length) {
            str = arrayOfString[i];
          } else {
            str = "";
          } 
          str = stringBuilder1.append(str).toString();
          continue;
        } 
        break;
      } 
      arrayList.add(str);
    } 
    return arrayList;
  }
  
  public int a(String paramString, Paint paramPaint) {
    Rect rect = new Rect();
    paramPaint.getTextBounds(paramString, 0, paramString.length(), rect);
    int i = rect.left;
    return rect.width() + i;
  }
  
  public Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2) {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    float f1 = paramInt1 / i;
    float f2 = paramInt2 / j;
    Matrix matrix = new Matrix();
    matrix.postScale(f1, f2);
    return Bitmap.createBitmap(paramBitmap, 0, 0, i, j, matrix, true);
  }
  
  public int b(String paramString, Paint paramPaint) {
    Rect rect = new Rect();
    paramPaint.getTextBounds(paramString, 0, paramString.length(), rect);
    int i = rect.bottom;
    return rect.height() + i;
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (this.n != null)
      paramCanvas.drawBitmap(this.n, this.i * 2.0F, (getHeight() / 2 - this.n.getHeight() / 2), this.h); 
    if (this.e != null) {
      float f;
      List<String> list = b();
      int i = b(this.e, (Paint)this.b) * list.size() + list.size() * 8 + (int)getResources().getDimension(2131361962);
      if (getHeight() < i)
        (getLayoutParams()).height = i; 
      if (list.size() <= 1) {
        f = (getHeight() / 2) - (this.b.descent() + this.b.ascent()) / 2.0F;
      } else {
        f = (getHeight() / list.size()) - (this.b.descent() + this.b.ascent()) / list.size() - (b(this.e, (Paint)this.b) / list.size());
      } 
      for (i = 0; i < list.size(); i++) {
        paramCanvas.drawText(((String)list.get(i)).trim(), this.k, f, (Paint)this.b);
        f += (b(this.e, (Paint)this.b) + 8);
      } 
      if (this.o)
        paramCanvas.drawLine(50.0F, (getHeight() - 1), (getWidth() - 50), getHeight(), this.a); 
    } 
  }
  
  public void setSelectedCustom(boolean paramBoolean) {
    setSelected(paramBoolean);
    a();
  }
  
  public void setTopText(String paramString) {
    this.e = paramString;
    invalidate();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\MenuButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */