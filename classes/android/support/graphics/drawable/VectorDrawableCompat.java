package android.support.graphics.drawable;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class VectorDrawableCompat extends VectorDrawableCommon {
  private static final boolean DBG_VECTOR_DRAWABLE = false;
  
  static final PorterDuff.Mode DEFAULT_TINT_MODE = PorterDuff.Mode.SRC_IN;
  
  private static final int LINECAP_BUTT = 0;
  
  private static final int LINECAP_ROUND = 1;
  
  private static final int LINECAP_SQUARE = 2;
  
  private static final int LINEJOIN_BEVEL = 2;
  
  private static final int LINEJOIN_MITER = 0;
  
  private static final int LINEJOIN_ROUND = 1;
  
  static final String LOGTAG = "VectorDrawableCompat";
  
  private static final int MAX_CACHED_BITMAP_SIZE = 2048;
  
  private static final String SHAPE_CLIP_PATH = "clip-path";
  
  private static final String SHAPE_GROUP = "group";
  
  private static final String SHAPE_PATH = "path";
  
  private static final String SHAPE_VECTOR = "vector";
  
  private boolean mAllowCaching = true;
  
  private Drawable.ConstantState mCachedConstantStateDelegate;
  
  private ColorFilter mColorFilter;
  
  private boolean mMutated;
  
  private PorterDuffColorFilter mTintFilter;
  
  private final Rect mTmpBounds = new Rect();
  
  private final float[] mTmpFloats = new float[9];
  
  private final Matrix mTmpMatrix = new Matrix();
  
  private VectorDrawableCompat$VectorDrawableCompatState mVectorState = new VectorDrawableCompat$VectorDrawableCompatState();
  
  VectorDrawableCompat() {}
  
  VectorDrawableCompat(@NonNull VectorDrawableCompat$VectorDrawableCompatState paramVectorDrawableCompat$VectorDrawableCompatState) {
    this.mTintFilter = updateTintFilter(this.mTintFilter, paramVectorDrawableCompat$VectorDrawableCompatState.mTint, paramVectorDrawableCompat$VectorDrawableCompatState.mTintMode);
  }
  
  static int applyAlpha(int paramInt, float paramFloat) {
    return (int)(Color.alpha(paramInt) * paramFloat) << 24 | 0xFFFFFF & paramInt;
  }
  
  @SuppressLint({"NewApi"})
  @Nullable
  public static VectorDrawableCompat create(@NonNull Resources paramResources, @DrawableRes int paramInt, @Nullable Resources.Theme paramTheme) {
    if (Build.VERSION.SDK_INT >= 24) {
      VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
      vectorDrawableCompat.mDelegateDrawable = ResourcesCompat.getDrawable(paramResources, paramInt, paramTheme);
      vectorDrawableCompat.mCachedConstantStateDelegate = new VectorDrawableCompat$VectorDrawableDelegateState(vectorDrawableCompat.mDelegateDrawable.getConstantState());
      return vectorDrawableCompat;
    } 
    try {
      XmlResourceParser xmlResourceParser = paramResources.getXml(paramInt);
      AttributeSet attributeSet = Xml.asAttributeSet((XmlPullParser)xmlResourceParser);
      do {
        paramInt = xmlResourceParser.next();
      } while (paramInt != 2 && paramInt != 1);
      if (paramInt != 2)
        throw new XmlPullParserException("No start tag found"); 
      return createFromXmlInner(paramResources, (XmlPullParser)xmlResourceParser, attributeSet, paramTheme);
    } catch (XmlPullParserException xmlPullParserException) {
      Log.e("VectorDrawableCompat", "parser error", (Throwable)xmlPullParserException);
    } catch (IOException iOException) {
      Log.e("VectorDrawableCompat", "parser error", iOException);
    } 
    return null;
  }
  
  @SuppressLint({"NewApi"})
  public static VectorDrawableCompat createFromXmlInner(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme) {
    VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
    vectorDrawableCompat.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return vectorDrawableCompat;
  }
  
  private void inflateInternal(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme) {
    VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
    VectorDrawableCompat$VPathRenderer vectorDrawableCompat$VPathRenderer = vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer;
    Stack<VectorDrawableCompat$VGroup> stack = new Stack();
    stack.push(vectorDrawableCompat$VPathRenderer.mRootGroup);
    int i = paramXmlPullParser.getEventType();
    int j = paramXmlPullParser.getDepth();
    boolean bool;
    for (bool = true; i != 1 && (paramXmlPullParser.getDepth() >= j + 1 || i != 3); bool = bool1) {
      boolean bool1;
      if (i == 2) {
        VectorDrawableCompat$VFullPath vectorDrawableCompat$VFullPath;
        String str = paramXmlPullParser.getName();
        VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup = stack.peek();
        if ("path".equals(str)) {
          vectorDrawableCompat$VFullPath = new VectorDrawableCompat$VFullPath();
          vectorDrawableCompat$VFullPath.inflate(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          vectorDrawableCompat$VGroup.mChildren.add(vectorDrawableCompat$VFullPath);
          if (vectorDrawableCompat$VFullPath.getPathName() != null)
            vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(vectorDrawableCompat$VFullPath.getPathName(), vectorDrawableCompat$VFullPath); 
          bool = false;
          int k = vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations;
          vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations = vectorDrawableCompat$VFullPath.mChangingConfigurations | k;
        } else {
          VectorDrawableCompat$VClipPath vectorDrawableCompat$VClipPath;
          if ("clip-path".equals(vectorDrawableCompat$VFullPath)) {
            vectorDrawableCompat$VClipPath = new VectorDrawableCompat$VClipPath();
            vectorDrawableCompat$VClipPath.inflate(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
            vectorDrawableCompat$VGroup.mChildren.add(vectorDrawableCompat$VClipPath);
            if (vectorDrawableCompat$VClipPath.getPathName() != null)
              vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(vectorDrawableCompat$VClipPath.getPathName(), vectorDrawableCompat$VClipPath); 
            vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations |= vectorDrawableCompat$VClipPath.mChangingConfigurations;
          } else if ("group".equals(vectorDrawableCompat$VClipPath)) {
            VectorDrawableCompat$VGroup vectorDrawableCompat$VGroup1 = new VectorDrawableCompat$VGroup();
            vectorDrawableCompat$VGroup1.inflate(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
            vectorDrawableCompat$VGroup.mChildren.add(vectorDrawableCompat$VGroup1);
            stack.push(vectorDrawableCompat$VGroup1);
            if (vectorDrawableCompat$VGroup1.getGroupName() != null)
              vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(vectorDrawableCompat$VGroup1.getGroupName(), vectorDrawableCompat$VGroup1); 
            vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations |= vectorDrawableCompat$VGroup1.mChangingConfigurations;
          } 
        } 
        bool1 = bool;
      } else {
        bool1 = bool;
        if (i == 3) {
          bool1 = bool;
          if ("group".equals(paramXmlPullParser.getName())) {
            stack.pop();
            bool1 = bool;
          } 
        } 
      } 
      i = paramXmlPullParser.next();
    } 
    if (bool) {
      StringBuffer stringBuffer = new StringBuffer();
      if (stringBuffer.length() > 0)
        stringBuffer.append(" or "); 
      stringBuffer.append("path");
      throw new XmlPullParserException("no " + stringBuffer + " defined");
    } 
  }
  
  @SuppressLint({"NewApi"})
  private boolean needMirroring() {
    boolean bool = true;
    if (Build.VERSION.SDK_INT < 17)
      return false; 
    if (!isAutoMirrored() || getLayoutDirection() != 1)
      bool = false; 
    return bool;
  }
  
  private static PorterDuff.Mode parseTintModeCompat(int paramInt, PorterDuff.Mode paramMode) {
    switch (paramInt) {
      default:
        return paramMode;
      case 3:
        return PorterDuff.Mode.SRC_OVER;
      case 5:
        return PorterDuff.Mode.SRC_IN;
      case 9:
        return PorterDuff.Mode.SRC_ATOP;
      case 14:
        return PorterDuff.Mode.MULTIPLY;
      case 15:
        return PorterDuff.Mode.SCREEN;
      case 16:
        break;
    } 
    if (Build.VERSION.SDK_INT >= 11)
      return PorterDuff.Mode.ADD; 
  }
  
  private void printGroupTree(VectorDrawableCompat$VGroup paramVectorDrawableCompat$VGroup, int paramInt) {
    String str = "";
    int i;
    for (i = 0; i < paramInt; i++)
      str = str + "    "; 
    Log.v("VectorDrawableCompat", str + "current group is :" + paramVectorDrawableCompat$VGroup.getGroupName() + " rotation is " + paramVectorDrawableCompat$VGroup.mRotate);
    Log.v("VectorDrawableCompat", str + "matrix is :" + paramVectorDrawableCompat$VGroup.getLocalMatrix().toString());
    for (i = 0; i < paramVectorDrawableCompat$VGroup.mChildren.size(); i++) {
      str = (String)paramVectorDrawableCompat$VGroup.mChildren.get(i);
      if (str instanceof VectorDrawableCompat$VGroup) {
        printGroupTree((VectorDrawableCompat$VGroup)str, paramInt + 1);
      } else {
        ((VectorDrawableCompat$VPath)str).printVPath(paramInt + 1);
      } 
    } 
  }
  
  private void updateStateFromTypedArray(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser) {
    VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
    VectorDrawableCompat$VPathRenderer vectorDrawableCompat$VPathRenderer = vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer;
    vectorDrawableCompat$VectorDrawableCompatState.mTintMode = parseTintModeCompat(TypedArrayUtils.getNamedInt(paramTypedArray, paramXmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
    ColorStateList colorStateList = paramTypedArray.getColorStateList(1);
    if (colorStateList != null)
      vectorDrawableCompat$VectorDrawableCompatState.mTint = colorStateList; 
    vectorDrawableCompat$VectorDrawableCompatState.mAutoMirrored = TypedArrayUtils.getNamedBoolean(paramTypedArray, paramXmlPullParser, "autoMirrored", 5, vectorDrawableCompat$VectorDrawableCompatState.mAutoMirrored);
    vectorDrawableCompat$VPathRenderer.mViewportWidth = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "viewportWidth", 7, vectorDrawableCompat$VPathRenderer.mViewportWidth);
    vectorDrawableCompat$VPathRenderer.mViewportHeight = TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "viewportHeight", 8, vectorDrawableCompat$VPathRenderer.mViewportHeight);
    if (vectorDrawableCompat$VPathRenderer.mViewportWidth <= 0.0F)
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0"); 
    if (vectorDrawableCompat$VPathRenderer.mViewportHeight <= 0.0F)
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0"); 
    vectorDrawableCompat$VPathRenderer.mBaseWidth = paramTypedArray.getDimension(3, vectorDrawableCompat$VPathRenderer.mBaseWidth);
    vectorDrawableCompat$VPathRenderer.mBaseHeight = paramTypedArray.getDimension(2, vectorDrawableCompat$VPathRenderer.mBaseHeight);
    if (vectorDrawableCompat$VPathRenderer.mBaseWidth <= 0.0F)
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires width > 0"); 
    if (vectorDrawableCompat$VPathRenderer.mBaseHeight <= 0.0F)
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires height > 0"); 
    vectorDrawableCompat$VPathRenderer.setAlpha(TypedArrayUtils.getNamedFloat(paramTypedArray, paramXmlPullParser, "alpha", 4, vectorDrawableCompat$VPathRenderer.getAlpha()));
    String str = paramTypedArray.getString(0);
    if (str != null) {
      vectorDrawableCompat$VPathRenderer.mRootName = str;
      vectorDrawableCompat$VPathRenderer.mVGTargetsMap.put(str, vectorDrawableCompat$VPathRenderer);
    } 
  }
  
  public boolean canApplyTheme() {
    if (this.mDelegateDrawable != null)
      DrawableCompat.canApplyTheme(this.mDelegateDrawable); 
    return false;
  }
  
  public void draw(Canvas paramCanvas) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.draw(paramCanvas);
      return;
    } 
    copyBounds(this.mTmpBounds);
    if (this.mTmpBounds.width() > 0 && this.mTmpBounds.height() > 0) {
      ColorFilter colorFilter;
      if (this.mColorFilter == null) {
        PorterDuffColorFilter porterDuffColorFilter = this.mTintFilter;
      } else {
        colorFilter = this.mColorFilter;
      } 
      paramCanvas.getMatrix(this.mTmpMatrix);
      this.mTmpMatrix.getValues(this.mTmpFloats);
      float f2 = Math.abs(this.mTmpFloats[0]);
      float f1 = Math.abs(this.mTmpFloats[4]);
      float f4 = Math.abs(this.mTmpFloats[1]);
      float f3 = Math.abs(this.mTmpFloats[3]);
      if (f4 != 0.0F || f3 != 0.0F) {
        f1 = 1.0F;
        f2 = 1.0F;
      } 
      int i = (int)(f2 * this.mTmpBounds.width());
      int j = (int)(f1 * this.mTmpBounds.height());
      i = Math.min(2048, i);
      j = Math.min(2048, j);
      if (i > 0 && j > 0) {
        int k = paramCanvas.save();
        paramCanvas.translate(this.mTmpBounds.left, this.mTmpBounds.top);
        if (needMirroring()) {
          paramCanvas.translate(this.mTmpBounds.width(), 0.0F);
          paramCanvas.scale(-1.0F, 1.0F);
        } 
        this.mTmpBounds.offsetTo(0, 0);
        this.mVectorState.createCachedBitmapIfNeeded(i, j);
        if (!this.mAllowCaching) {
          this.mVectorState.updateCachedBitmap(i, j);
        } else if (!this.mVectorState.canReuseCache()) {
          this.mVectorState.updateCachedBitmap(i, j);
          this.mVectorState.updateCacheStates();
        } 
        this.mVectorState.drawCachedBitmapWithRootAlpha(paramCanvas, colorFilter, this.mTmpBounds);
        paramCanvas.restoreToCount(k);
        return;
      } 
    } 
  }
  
  public int getAlpha() {
    return (this.mDelegateDrawable != null) ? DrawableCompat.getAlpha(this.mDelegateDrawable) : this.mVectorState.mVPathRenderer.getRootAlpha();
  }
  
  public int getChangingConfigurations() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getChangingConfigurations() : (super.getChangingConfigurations() | this.mVectorState.getChangingConfigurations());
  }
  
  public Drawable.ConstantState getConstantState() {
    if (this.mDelegateDrawable != null)
      return new VectorDrawableCompat$VectorDrawableDelegateState(this.mDelegateDrawable.getConstantState()); 
    this.mVectorState.mChangingConfigurations = getChangingConfigurations();
    return this.mVectorState;
  }
  
  public int getIntrinsicHeight() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getIntrinsicHeight() : (int)this.mVectorState.mVPathRenderer.mBaseHeight;
  }
  
  public int getIntrinsicWidth() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getIntrinsicWidth() : (int)this.mVectorState.mVPathRenderer.mBaseWidth;
  }
  
  public int getOpacity() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.getOpacity() : -3;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public float getPixelSize() {
    if ((this.mVectorState == null && this.mVectorState.mVPathRenderer == null) || this.mVectorState.mVPathRenderer.mBaseWidth == 0.0F || this.mVectorState.mVPathRenderer.mBaseHeight == 0.0F || this.mVectorState.mVPathRenderer.mViewportHeight == 0.0F || this.mVectorState.mVPathRenderer.mViewportWidth == 0.0F)
      return 1.0F; 
    float f1 = this.mVectorState.mVPathRenderer.mBaseWidth;
    float f2 = this.mVectorState.mVPathRenderer.mBaseHeight;
    float f3 = this.mVectorState.mVPathRenderer.mViewportWidth;
    float f4 = this.mVectorState.mVPathRenderer.mViewportHeight;
    return Math.min(f3 / f1, f4 / f2);
  }
  
  Object getTargetByName(String paramString) {
    return this.mVectorState.mVPathRenderer.mVGTargetsMap.get(paramString);
  }
  
  @SuppressLint({"NewApi"})
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
      return;
    } 
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, (Resources.Theme)null);
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.inflate(this.mDelegateDrawable, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    } 
    VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
    vectorDrawableCompat$VectorDrawableCompatState.mVPathRenderer = new VectorDrawableCompat$VPathRenderer();
    TypedArray typedArray = obtainAttributes(paramResources, paramTheme, paramAttributeSet, AndroidResources.styleable_VectorDrawableTypeArray);
    updateStateFromTypedArray(typedArray, paramXmlPullParser);
    typedArray.recycle();
    vectorDrawableCompat$VectorDrawableCompatState.mChangingConfigurations = getChangingConfigurations();
    vectorDrawableCompat$VectorDrawableCompatState.mCacheDirty = true;
    inflateInternal(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableCompat$VectorDrawableCompatState.mTint, vectorDrawableCompat$VectorDrawableCompatState.mTintMode);
  }
  
  public void invalidateSelf() {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.invalidateSelf();
      return;
    } 
    super.invalidateSelf();
  }
  
  public boolean isAutoMirrored() {
    return (this.mDelegateDrawable != null) ? DrawableCompat.isAutoMirrored(this.mDelegateDrawable) : this.mVectorState.mAutoMirrored;
  }
  
  public boolean isStateful() {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.isStateful() : ((super.isStateful() || (this.mVectorState != null && this.mVectorState.mTint != null && this.mVectorState.mTint.isStateful())));
  }
  
  public Drawable mutate() {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.mutate();
      return this;
    } 
    if (!this.mMutated && super.mutate() == this) {
      this.mVectorState = new VectorDrawableCompat$VectorDrawableCompatState(this.mVectorState);
      this.mMutated = true;
      return this;
    } 
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect) {
    if (this.mDelegateDrawable != null)
      this.mDelegateDrawable.setBounds(paramRect); 
  }
  
  protected boolean onStateChange(int[] paramArrayOfint) {
    if (this.mDelegateDrawable != null)
      return this.mDelegateDrawable.setState(paramArrayOfint); 
    VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
    if (vectorDrawableCompat$VectorDrawableCompatState.mTint != null && vectorDrawableCompat$VectorDrawableCompatState.mTintMode != null) {
      this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableCompat$VectorDrawableCompatState.mTint, vectorDrawableCompat$VectorDrawableCompatState.mTintMode);
      invalidateSelf();
      return true;
    } 
    return false;
  }
  
  public void scheduleSelf(Runnable paramRunnable, long paramLong) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.scheduleSelf(paramRunnable, paramLong);
      return;
    } 
    super.scheduleSelf(paramRunnable, paramLong);
  }
  
  void setAllowCaching(boolean paramBoolean) {
    this.mAllowCaching = paramBoolean;
  }
  
  public void setAlpha(int paramInt) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.setAlpha(paramInt);
      return;
    } 
    if (this.mVectorState.mVPathRenderer.getRootAlpha() != paramInt) {
      this.mVectorState.mVPathRenderer.setRootAlpha(paramInt);
      invalidateSelf();
      return;
    } 
  }
  
  public void setAutoMirrored(boolean paramBoolean) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.setAutoMirrored(this.mDelegateDrawable, paramBoolean);
      return;
    } 
    this.mVectorState.mAutoMirrored = paramBoolean;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.setColorFilter(paramColorFilter);
      return;
    } 
    this.mColorFilter = paramColorFilter;
    invalidateSelf();
  }
  
  @SuppressLint({"NewApi"})
  public void setTint(int paramInt) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.setTint(this.mDelegateDrawable, paramInt);
      return;
    } 
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.setTintList(this.mDelegateDrawable, paramColorStateList);
      return;
    } 
    VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
    if (vectorDrawableCompat$VectorDrawableCompatState.mTint != paramColorStateList) {
      vectorDrawableCompat$VectorDrawableCompatState.mTint = paramColorStateList;
      this.mTintFilter = updateTintFilter(this.mTintFilter, paramColorStateList, vectorDrawableCompat$VectorDrawableCompatState.mTintMode);
      invalidateSelf();
      return;
    } 
  }
  
  public void setTintMode(PorterDuff.Mode paramMode) {
    if (this.mDelegateDrawable != null) {
      DrawableCompat.setTintMode(this.mDelegateDrawable, paramMode);
      return;
    } 
    VectorDrawableCompat$VectorDrawableCompatState vectorDrawableCompat$VectorDrawableCompatState = this.mVectorState;
    if (vectorDrawableCompat$VectorDrawableCompatState.mTintMode != paramMode) {
      vectorDrawableCompat$VectorDrawableCompatState.mTintMode = paramMode;
      this.mTintFilter = updateTintFilter(this.mTintFilter, vectorDrawableCompat$VectorDrawableCompatState.mTint, paramMode);
      invalidateSelf();
      return;
    } 
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2) {
    return (this.mDelegateDrawable != null) ? this.mDelegateDrawable.setVisible(paramBoolean1, paramBoolean2) : super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void unscheduleSelf(Runnable paramRunnable) {
    if (this.mDelegateDrawable != null) {
      this.mDelegateDrawable.unscheduleSelf(paramRunnable);
      return;
    } 
    super.unscheduleSelf(paramRunnable);
  }
  
  PorterDuffColorFilter updateTintFilter(PorterDuffColorFilter paramPorterDuffColorFilter, ColorStateList paramColorStateList, PorterDuff.Mode paramMode) {
    return (paramColorStateList == null || paramMode == null) ? null : new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\graphics\drawable\VectorDrawableCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */