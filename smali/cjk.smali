.class public final Lcjk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcjk;

.field public static final e:Lcjk;

.field public static final f:Lcjk;

.field public static final g:Lcjk;


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 12
    new-instance v0, Lcjk;

    invoke-direct {v0, v1, v1, v1}, Lcjk;-><init>(FFF)V

    sput-object v0, Lcjk;->d:Lcjk;

    .line 13
    new-instance v0, Lcjk;

    invoke-direct {v0, v2, v1, v1}, Lcjk;-><init>(FFF)V

    sput-object v0, Lcjk;->e:Lcjk;

    .line 14
    new-instance v0, Lcjk;

    invoke-direct {v0, v1, v2, v1}, Lcjk;-><init>(FFF)V

    sput-object v0, Lcjk;->f:Lcjk;

    .line 15
    new-instance v0, Lcjk;

    invoke-direct {v0, v1, v1, v2}, Lcjk;-><init>(FFF)V

    sput-object v0, Lcjk;->g:Lcjk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcjk;->b(FFF)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcjk;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcjk;->d(Lcjk;)V

    .line 31
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcjk;->b(FFF)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcjk;->b()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcjk;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcjk;->a:F

    .line 60
    iget v0, p0, Lcjk;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcjk;->b:F

    .line 61
    iget v0, p0, Lcjk;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcjk;->c:F

    .line 62
    return-void
.end method

.method public final a(FFF)V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcjk;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcjk;->a:F

    .line 41
    iget v0, p0, Lcjk;->b:F

    add-float/2addr v0, p2

    iput v0, p0, Lcjk;->b:F

    .line 42
    iget v0, p0, Lcjk;->c:F

    add-float/2addr v0, p3

    iput v0, p0, Lcjk;->c:F

    .line 43
    return-void
.end method

.method public final a(Lcjk;)V
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcjk;->a:F

    iget v1, p1, Lcjk;->a:F

    add-float/2addr v0, v1

    iput v0, p0, Lcjk;->a:F

    .line 35
    iget v0, p0, Lcjk;->b:F

    iget v1, p1, Lcjk;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcjk;->b:F

    .line 36
    iget v0, p0, Lcjk;->c:F

    iget v1, p1, Lcjk;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lcjk;->c:F

    .line 37
    return-void
.end method

.method public final a(Lcjk;F)V
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcjk;->a:F

    iget v1, p1, Lcjk;->a:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcjk;->a:F

    .line 54
    iget v0, p0, Lcjk;->b:F

    iget v1, p1, Lcjk;->b:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcjk;->b:F

    .line 55
    iget v0, p0, Lcjk;->c:F

    iget v1, p1, Lcjk;->c:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcjk;->c:F

    .line 56
    return-void
.end method

.method public final b()F
    .locals 3

    .prologue
    .line 105
    iget v0, p0, Lcjk;->a:F

    iget v1, p0, Lcjk;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcjk;->b:F

    iget v2, p0, Lcjk;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcjk;->c:F

    iget v2, p0, Lcjk;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lcjk;->a:F

    div-float/2addr v0, p1

    iput v0, p0, Lcjk;->a:F

    .line 73
    iget v0, p0, Lcjk;->b:F

    div-float/2addr v0, p1

    iput v0, p0, Lcjk;->b:F

    .line 74
    iget v0, p0, Lcjk;->c:F

    div-float/2addr v0, p1

    iput v0, p0, Lcjk;->c:F

    .line 76
    :cond_0
    return-void
.end method

.method public final b(FFF)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcjk;->a:F

    .line 86
    iput p2, p0, Lcjk;->b:F

    .line 87
    iput p3, p0, Lcjk;->c:F

    .line 88
    return-void
.end method

.method public final b(Lcjk;)V
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcjk;->a:F

    iget v1, p1, Lcjk;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcjk;->a:F

    .line 47
    iget v0, p0, Lcjk;->b:F

    iget v1, p1, Lcjk;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcjk;->b:F

    .line 48
    iget v0, p0, Lcjk;->c:F

    iget v1, p1, Lcjk;->c:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcjk;->c:F

    .line 49
    return-void
.end method

.method public final c()F
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcjk;->a()F

    move-result v0

    .line 119
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 120
    iget v1, p0, Lcjk;->a:F

    div-float/2addr v1, v0

    iput v1, p0, Lcjk;->a:F

    .line 121
    iget v1, p0, Lcjk;->b:F

    div-float/2addr v1, v0

    iput v1, p0, Lcjk;->b:F

    .line 122
    iget v1, p0, Lcjk;->c:F

    div-float/2addr v1, v0

    iput v1, p0, Lcjk;->c:F

    .line 125
    :cond_0
    return v0
.end method

.method public final c(Lcjk;)V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcjk;->a:F

    iget v1, p1, Lcjk;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcjk;->a:F

    .line 66
    iget v0, p0, Lcjk;->b:F

    iget v1, p1, Lcjk;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcjk;->b:F

    .line 67
    iget v0, p0, Lcjk;->c:F

    iget v1, p1, Lcjk;->c:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcjk;->c:F

    .line 68
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0, v0, v0}, Lcjk;->b(FFF)V

    .line 130
    return-void
.end method

.method public final d(Lcjk;)V
    .locals 1

    .prologue
    .line 79
    iget v0, p1, Lcjk;->a:F

    iput v0, p0, Lcjk;->a:F

    .line 80
    iget v0, p1, Lcjk;->b:F

    iput v0, p0, Lcjk;->b:F

    .line 81
    iget v0, p1, Lcjk;->c:F

    iput v0, p0, Lcjk;->c:F

    .line 82
    return-void
.end method

.method public final e(Lcjk;)F
    .locals 3

    .prologue
    .line 91
    iget v0, p0, Lcjk;->a:F

    iget v1, p1, Lcjk;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcjk;->b:F

    iget v2, p1, Lcjk;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcjk;->c:F

    iget v2, p1, Lcjk;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final f(Lcjk;)Lcjk;
    .locals 6

    .prologue
    .line 95
    new-instance v0, Lcjk;

    iget v1, p0, Lcjk;->b:F

    iget v2, p1, Lcjk;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcjk;->c:F

    iget v3, p1, Lcjk;->b:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcjk;->c:F

    iget v3, p1, Lcjk;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcjk;->a:F

    iget v4, p1, Lcjk;->c:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcjk;->a:F

    iget v4, p1, Lcjk;->b:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcjk;->b:F

    iget v5, p1, Lcjk;->a:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcjk;-><init>(FFF)V

    return-object v0
.end method

.method public final g(Lcjk;)F
    .locals 4

    .prologue
    .line 109
    iget v0, p0, Lcjk;->a:F

    iget v1, p1, Lcjk;->a:F

    sub-float/2addr v0, v1

    .line 110
    iget v1, p0, Lcjk;->b:F

    iget v2, p1, Lcjk;->b:F

    sub-float/2addr v1, v2

    .line 111
    iget v2, p0, Lcjk;->c:F

    iget v3, p1, Lcjk;->c:F

    sub-float/2addr v2, v3

    .line 112
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final h(Lcjk;)Z
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcjk;->e(Lcjk;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
