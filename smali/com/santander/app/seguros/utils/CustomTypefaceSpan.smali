.class public Lcom/santander/app/seguros/utils/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/santander/app/seguros/utils/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    .line 20
    return-void
.end method

.method private a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 42
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 46
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 47
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 50
    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    return-void

    .line 38
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/santander/app/seguros/utils/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/utils/CustomTypefaceSpan;->a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 25
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/santander/app/seguros/utils/CustomTypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/utils/CustomTypefaceSpan;->a(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 30
    return-void
.end method
