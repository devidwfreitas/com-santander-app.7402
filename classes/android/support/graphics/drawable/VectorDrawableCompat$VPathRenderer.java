package android.support.graphics.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.v4.util.ArrayMap;

class VectorDrawableCompat$VPathRenderer {
  private static final Matrix IDENTITY_MATRIX = new Matrix();
  
  float mBaseHeight = 0.0F;
  
  float mBaseWidth = 0.0F;
  
  private int mChangingConfigurations;
  
  private Paint mFillPaint;
  
  private final Matrix mFinalPathMatrix = new Matrix();
  
  private final Path mPath = new Path();
  
  private PathMeasure mPathMeasure;
  
  private final Path mRenderPath = new Path();
  
  int mRootAlpha = 255;
  
  final VectorDrawableCompat$VGroup mRootGroup = new VectorDrawableCompat$VGroup();
  
  String mRootName = null;
  
  private Paint mStrokePaint;
  
  final ArrayMap<String, Object> mVGTargetsMap = new ArrayMap();
  
  float mViewportHeight = 0.0F;
  
  float mViewportWidth = 0.0F;
  
  public VectorDrawableCompat$VPathRenderer() {}
  
  public VectorDrawableCompat$VPathRenderer(VectorDrawableCompat$VPathRenderer paramVectorDrawableCompat$VPathRenderer) {
    this.mBaseWidth = paramVectorDrawableCompat$VPathRenderer.mBaseWidth;
    this.mBaseHeight = paramVectorDrawableCompat$VPathRenderer.mBaseHeight;
    this.mViewportWidth = paramVectorDrawableCompat$VPathRenderer.mViewportWidth;
    this.mViewportHeight = paramVectorDrawableCompat$VPathRenderer.mViewportHeight;
    this.mChangingConfigurations = paramVectorDrawableCompat$VPathRenderer.mChangingConfigurations;
    this.mRootAlpha = paramVectorDrawableCompat$VPathRenderer.mRootAlpha;
    this.mRootName = paramVectorDrawableCompat$VPathRenderer.mRootName;
    if (paramVectorDrawableCompat$VPathRenderer.mRootName != null)
      this.mVGTargetsMap.put(paramVectorDrawableCompat$VPathRenderer.mRootName, this); 
  }
  
  private static float cross(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    return paramFloat1 * paramFloat4 - paramFloat2 * paramFloat3;
  }
  
  private void drawGroupTree(VectorDrawableCompat$VGroup paramVectorDrawableCompat$VGroup, Matrix paramMatrix, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter) {
    VectorDrawableCompat$VGroup.access$200(paramVectorDrawableCompat$VGroup).set(paramMatrix);
    VectorDrawableCompat$VGroup.access$200(paramVectorDrawableCompat$VGroup).preConcat(VectorDrawableCompat$VGroup.access$300(paramVectorDrawableCompat$VGroup));
    paramCanvas.save();
    for (int i = 0; i < paramVectorDrawableCompat$VGroup.mChildren.size(); i++) {
      paramMatrix = (Matrix)paramVectorDrawableCompat$VGroup.mChildren.get(i);
      if (paramMatrix instanceof VectorDrawableCompat$VGroup) {
        drawGroupTree((VectorDrawableCompat$VGroup)paramMatrix, VectorDrawableCompat$VGroup.access$200(paramVectorDrawableCompat$VGroup), paramCanvas, paramInt1, paramInt2, paramColorFilter);
      } else if (paramMatrix instanceof VectorDrawableCompat$VPath) {
        drawPath(paramVectorDrawableCompat$VGroup, (VectorDrawableCompat$VPath)paramMatrix, paramCanvas, paramInt1, paramInt2, paramColorFilter);
      } 
    } 
    paramCanvas.restore();
  }
  
  private void drawPath(VectorDrawableCompat$VGroup paramVectorDrawableCompat$VGroup, VectorDrawableCompat$VPath paramVectorDrawableCompat$VPath, Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter) {
    float f2 = paramInt1 / this.mViewportWidth;
    float f3 = paramInt2 / this.mViewportHeight;
    float f1 = Math.min(f2, f3);
    Matrix matrix = VectorDrawableCompat$VGroup.access$200(paramVectorDrawableCompat$VGroup);
    this.mFinalPathMatrix.set(matrix);
    this.mFinalPathMatrix.postScale(f2, f3);
    f2 = getMatrixScale(matrix);
    if (f2 != 0.0F) {
      paramVectorDrawableCompat$VPath.toPath(this.mPath);
      Path path = this.mPath;
      this.mRenderPath.reset();
      if (paramVectorDrawableCompat$VPath.isClipPath()) {
        this.mRenderPath.addPath(path, this.mFinalPathMatrix);
        paramCanvas.clipPath(this.mRenderPath);
        return;
      } 
      VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath = (VectorDrawableCompat$VFullPath)paramVectorDrawableCompat$VPath;
      if (vectorDrawableCompat$VFullPath.mTrimPathStart != 0.0F || vectorDrawableCompat$VFullPath.mTrimPathEnd != 1.0F) {
        float f6 = vectorDrawableCompat$VFullPath.mTrimPathStart;
        float f7 = vectorDrawableCompat$VFullPath.mTrimPathOffset;
        float f4 = vectorDrawableCompat$VFullPath.mTrimPathEnd;
        float f5 = vectorDrawableCompat$VFullPath.mTrimPathOffset;
        if (this.mPathMeasure == null)
          this.mPathMeasure = new PathMeasure(); 
        this.mPathMeasure.setPath(this.mPath, false);
        f3 = this.mPathMeasure.getLength();
        f6 = (f6 + f7) % 1.0F * f3;
        f4 = (f4 + f5) % 1.0F * f3;
        path.reset();
        if (f6 > f4) {
          this.mPathMeasure.getSegment(f6, f3, path, true);
          this.mPathMeasure.getSegment(0.0F, f4, path, true);
        } else {
          this.mPathMeasure.getSegment(f6, f4, path, true);
        } 
        path.rLineTo(0.0F, 0.0F);
      } 
      this.mRenderPath.addPath(path, this.mFinalPathMatrix);
      if (vectorDrawableCompat$VFullPath.mFillColor != 0) {
        if (this.mFillPaint == null) {
          this.mFillPaint = new Paint();
          this.mFillPaint.setStyle(Paint.Style.FILL);
          this.mFillPaint.setAntiAlias(true);
        } 
        Paint paint = this.mFillPaint;
        paint.setColor(VectorDrawableCompat.applyAlpha(vectorDrawableCompat$VFullPath.mFillColor, vectorDrawableCompat$VFullPath.mFillAlpha));
        paint.setColorFilter(paramColorFilter);
        paramCanvas.drawPath(this.mRenderPath, paint);
      } 
      if (vectorDrawableCompat$VFullPath.mStrokeColor != 0) {
        if (this.mStrokePaint == null) {
          this.mStrokePaint = new Paint();
          this.mStrokePaint.setStyle(Paint.Style.STROKE);
          this.mStrokePaint.setAntiAlias(true);
        } 
        Paint paint = this.mStrokePaint;
        if (vectorDrawableCompat$VFullPath.mStrokeLineJoin != null)
          paint.setStrokeJoin(vectorDrawableCompat$VFullPath.mStrokeLineJoin); 
        if (vectorDrawableCompat$VFullPath.mStrokeLineCap != null)
          paint.setStrokeCap(vectorDrawableCompat$VFullPath.mStrokeLineCap); 
        paint.setStrokeMiter(vectorDrawableCompat$VFullPath.mStrokeMiterlimit);
        paint.setColor(VectorDrawableCompat.applyAlpha(vectorDrawableCompat$VFullPath.mStrokeColor, vectorDrawableCompat$VFullPath.mStrokeAlpha));
        paint.setColorFilter(paramColorFilter);
        paint.setStrokeWidth(f2 * f1 * vectorDrawableCompat$VFullPath.mStrokeWidth);
        paramCanvas.drawPath(this.mRenderPath, paint);
        return;
      } 
    } 
  }
  
  private float getMatrixScale(Matrix paramMatrix) {
    float f1 = 0.0F;
    float[] arrayOfFloat = new float[4];
    arrayOfFloat[0] = 0.0F;
    arrayOfFloat[1] = 1.0F;
    arrayOfFloat[2] = 1.0F;
    arrayOfFloat[3] = 0.0F;
    paramMatrix.mapVectors(arrayOfFloat);
    float f3 = (float)Math.hypot(arrayOfFloat[0], arrayOfFloat[1]);
    float f4 = (float)Math.hypot(arrayOfFloat[2], arrayOfFloat[3]);
    float f2 = cross(arrayOfFloat[0], arrayOfFloat[1], arrayOfFloat[2], arrayOfFloat[3]);
    f3 = Math.max(f3, f4);
    if (f3 > 0.0F)
      f1 = Math.abs(f2) / f3; 
    return f1;
  }
  
  public void draw(Canvas paramCanvas, int paramInt1, int paramInt2, ColorFilter paramColorFilter) {
    drawGroupTree(this.mRootGroup, IDENTITY_MATRIX, paramCanvas, paramInt1, paramInt2, paramColorFilter);
  }
  
  public float getAlpha() {
    return getRootAlpha() / 255.0F;
  }
  
  public int getRootAlpha() {
    return this.mRootAlpha;
  }
  
  public void setAlpha(float paramFloat) {
    setRootAlpha((int)(255.0F * paramFloat));
  }
  
  public void setRootAlpha(int paramInt) {
    this.mRootAlpha = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat$VPathRenderer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */