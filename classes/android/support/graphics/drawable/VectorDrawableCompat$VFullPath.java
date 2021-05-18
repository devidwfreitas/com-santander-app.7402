package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

class VectorDrawableCompat$VFullPath extends VectorDrawableCompat$VPath {
  float mFillAlpha = 1.0F;
  
  int mFillColor = 0;
  
  int mFillRule;
  
  float mStrokeAlpha = 1.0F;
  
  int mStrokeColor = 0;
  
  Paint.Cap mStrokeLineCap = Paint.Cap.BUTT;
  
  Paint.Join mStrokeLineJoin = Paint.Join.MITER;
  
  float mStrokeMiterlimit = 4.0F;
  
  float mStrokeWidth = 0.0F;
  
  private int[] mThemeAttrs;
  
  float mTrimPathEnd = 1.0F;
  
  float mTrimPathOffset = 0.0F;
  
  float mTrimPathStart = 0.0F;
  
  public VectorDrawableCompat$VFullPath() {}
  
  public VectorDrawableCompat$VFullPath(VectorDrawableCompat$VFullPath paramVectorDrawableCompat$VFullPath) {
    super(paramVectorDrawableCompat$VFullPath);
    this.mThemeAttrs = paramVectorDrawableCompat$VFullPath.mThemeAttrs;
    this.mStrokeColor = paramVectorDrawableCompat$VFullPath.mStrokeColor;
    this.mStrokeWidth = paramVectorDrawableCompat$VFullPath.mStrokeWidth;
    this.mStrokeAlpha = paramVectorDrawableCompat$VFullPath.mStrokeAlpha;
    this.mFillColor = paramVectorDrawableCompat$VFullPath.mFillColor;
    this.mFillRule = paramVectorDrawableCompat$VFullPath.mFillRule;
    this.mFillAlpha = paramVectorDrawableCompat$VFullPath.mFillAlpha;
    this.mTrimPathStart = paramVectorDrawableCompat$VFullPath.mTrimPathStart;
    this.mTrimPathEnd = paramVectorDrawableCompat$VFullPath.mTrimPathEnd;
    this.mTrimPathOffset = paramVectorDrawableCompat$VFullPath.mTrimPathOffset;
    this.mStrokeLineCap = paramVectorDrawableCompat$VFullPath.mStrokeLineCap;
    this.mStrokeLineJoin = paramVectorDrawableCompat$VFullPath.mStrokeLineJoin;
    this.mStrokeMiterlimit = paramVectorDrawableCompat$VFullPath.mStrokeMiterlimit;
  }
  
  private Paint.Cap getStrokeLineCap(int paramInt, Paint.Cap paramCap) {
    switch (paramInt) {
      default:
        return paramCap;
      case 0:
        return Paint.Cap.BUTT;
      case 1:
        return Paint.Cap.ROUND;
      case 2:
        break;
    } 
    return Paint.Cap.SQUARE;
  }
  
  private Paint.Join getStrokeLineJoin(int paramInt, Paint.Join paramJoin) {
    switch (paramInt) {
      default:
        return paramJoin;
      case 0:
        return Paint.Join.MITER;
      case 1:
        return Paint.Join.ROUND;
      case 2:
        break;
    } 
    return Paint.Join.BEVEL;
  }
  
  private void updateStateFromTypedArray(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser) {
    this.mThemeAttrs = null;
    if (!TypedArrayUtils.hasAttribute(paramXmlPullParser, "pathData"))
      return; 
    String str = paramTypedArray.getString(0);
    if (str != null)
      this.mPathName = str; 
    str = paramTypedArray.getString(2);
    if (str != null)
      this.mNodes = PathParser.createNodesFromPathData(str); 
    this.mFillColor = TypedArrayUtils.getNamedColor(paramTypedArray, paramXmlPullParser, "fillColor", 1, this.mFillColor);
    this.mFillAlpha = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "fillAlpha", 12, this.mFillAlpha);
    this.mStrokeLineCap = getStrokeLineCap(TypedArrayUtils.getNamedInt(paramTypedArray, paramXmlPullParser, "strokeLineCap", 8, -1), this.mStrokeLineCap);
    this.mStrokeLineJoin = getStrokeLineJoin(TypedArrayUtils.getNamedInt(paramTypedArray, paramXmlPullParser, "strokeLineJoin", 9, -1), this.mStrokeLineJoin);
    this.mStrokeMiterlimit = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "strokeMiterLimit", 10, this.mStrokeMiterlimit);
    this.mStrokeColor = TypedArrayUtils.getNamedColor(paramTypedArray, paramXmlPullParser, "strokeColor", 3, this.mStrokeColor);
    this.mStrokeAlpha = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "strokeAlpha", 11, this.mStrokeAlpha);
    this.mStrokeWidth = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "strokeWidth", 4, this.mStrokeWidth);
    this.mTrimPathEnd = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "trimPathEnd", 6, this.mTrimPathEnd);
    this.mTrimPathOffset = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "trimPathOffset", 7, this.mTrimPathOffset);
    this.mTrimPathStart = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "trimPathStart", 5, this.mTrimPathStart);
  }
  
  public void applyTheme(Resources.Theme paramTheme) {
    if (this.mThemeAttrs == null);
  }
  
  public boolean canApplyTheme() {
    return (this.mThemeAttrs != null);
  }
  
  float getFillAlpha() {
    return this.mFillAlpha;
  }
  
  int getFillColor() {
    return this.mFillColor;
  }
  
  float getStrokeAlpha() {
    return this.mStrokeAlpha;
  }
  
  int getStrokeColor() {
    return this.mStrokeColor;
  }
  
  float getStrokeWidth() {
    return this.mStrokeWidth;
  }
  
  float getTrimPathEnd() {
    return this.mTrimPathEnd;
  }
  
  float getTrimPathOffset() {
    return this.mTrimPathOffset;
  }
  
  float getTrimPathStart() {
    return this.mTrimPathStart;
  }
  
  public void inflate(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser) {
    TypedArray typedArray = VectorDrawableCommon.obtainAttributes(paramResources, paramTheme, paramAttributeSet, AndroidResources.styleable_VectorDrawablePath);
    updateStateFromTypedArray(typedArray, paramXmlPullParser);
    typedArray.recycle();
  }
  
  void setFillAlpha(float paramFloat) {
    this.mFillAlpha = paramFloat;
  }
  
  void setFillColor(int paramInt) {
    this.mFillColor = paramInt;
  }
  
  void setStrokeAlpha(float paramFloat) {
    this.mStrokeAlpha = paramFloat;
  }
  
  void setStrokeColor(int paramInt) {
    this.mStrokeColor = paramInt;
  }
  
  void setStrokeWidth(float paramFloat) {
    this.mStrokeWidth = paramFloat;
  }
  
  void setTrimPathEnd(float paramFloat) {
    this.mTrimPathEnd = paramFloat;
  }
  
  void setTrimPathOffset(float paramFloat) {
    this.mTrimPathOffset = paramFloat;
  }
  
  void setTrimPathStart(float paramFloat) {
    this.mTrimPathStart = paramFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat$VFullPath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */