.class public Lfes;
.super Lfew;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lfes;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfes;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lfew;-><init>()V

    return-void
.end method

.method private static a(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    .line 16
    div-float p0, v1, p0

    .line 18
    :cond_0
    return p0
.end method


# virtual methods
.method protected a(Lfdu;Lfdu;)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    iget v0, p1, Lfdu;->a:I

    if-lez v0, :cond_0

    iget v0, p1, Lfdu;->b:I

    if-gtz v0, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 39
    :cond_1
    iget v0, p1, Lfdu;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v1, p2, Lfdu;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lfes;->a(F)F

    move-result v0

    .line 40
    iget v1, p1, Lfdu;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p2, Lfdu;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lfes;->a(F)F

    move-result v1

    .line 42
    div-float v0, v4, v0

    div-float/2addr v0, v1

    .line 44
    iget v1, p1, Lfdu;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget v2, p1, Lfdu;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p2, Lfdu;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p2, Lfdu;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Lfes;->a(F)F

    move-result v1

    .line 47
    div-float v2, v4, v1

    div-float/2addr v2, v1

    div-float v1, v2, v1

    .line 49
    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public b(Lfdu;Lfdu;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Lfdu;->a:I

    iget v2, p2, Lfdu;->b:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
