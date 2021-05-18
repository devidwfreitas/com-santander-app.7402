package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

class CardViewGingerbread$1 implements RoundRectDrawableWithShadow$RoundRectHelper {
  public void drawRoundRect(Canvas paramCanvas, RectF paramRectF, float paramFloat, Paint paramPaint) {
    float f1 = 2.0F * paramFloat;
    float f2 = paramRectF.width() - f1 - 1.0F;
    float f3 = paramRectF.height();
    if (paramFloat >= 1.0F) {
      float f = paramFloat + 0.5F;
      CardViewGingerbread.this.sCornerRect.set(-f, -f, f, f);
      int i = paramCanvas.save();
      paramCanvas.translate(paramRectF.left + f, paramRectF.top + f);
      paramCanvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.translate(f2, 0.0F);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.translate(f3 - f1 - 1.0F, 0.0F);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.translate(f2, 0.0F);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawArc(CardViewGingerbread.this.sCornerRect, 180.0F, 90.0F, true, paramPaint);
      paramCanvas.restoreToCount(i);
      paramCanvas.drawRect(paramRectF.left + f - 1.0F, paramRectF.top, 1.0F + paramRectF.right - f, paramRectF.top + f, paramPaint);
      paramCanvas.drawRect(paramRectF.left + f - 1.0F, paramRectF.bottom - f, 1.0F + paramRectF.right - f, paramRectF.bottom, paramPaint);
    } 
    paramCanvas.drawRect(paramRectF.left, paramRectF.top + paramFloat, paramRectF.right, paramRectF.bottom - paramFloat, paramPaint);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\CardViewGingerbread$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */