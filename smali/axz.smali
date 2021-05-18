.class public Laxz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:F = 100.0f

.field private static final g:Landroid/view/animation/Interpolator;


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Landroid/view/animation/Interpolator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:F

.field public e:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lawr;

.field private i:F

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Laxz;->g:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lawr;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawr;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Laxz;->i:F

    .line 62
    iput v0, p0, Laxz;->j:F

    .line 66
    iput-object p1, p0, Laxz;->h:Lawr;

    .line 67
    iput-object p2, p0, Laxz;->a:Ljava/lang/Object;

    .line 68
    iput-object p3, p0, Laxz;->b:Ljava/lang/Object;

    .line 69
    iput-object p4, p0, Laxz;->c:Landroid/view/animation/Interpolator;

    .line 70
    iput p5, p0, Laxz;->d:F

    .line 71
    iput-object p6, p0, Laxz;->e:Ljava/lang/Float;

    .line 72
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Laxz",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 40
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_0

    .line 42
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxz;

    iget v1, v1, Laxz;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Laxz;->e:Ljava/lang/Float;

    .line 40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 44
    :cond_0
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    .line 45
    iget-object v1, v0, Laxz;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 49
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    return-void
.end method

.method static synthetic d()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Laxz;->g:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 4

    .prologue
    .line 75
    iget v0, p0, Laxz;->i:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Laxz;->d:F

    iget-object v1, p0, Laxz;->h:Lawr;

    invoke-virtual {v1}, Lawr;->h()J

    move-result-wide v2

    long-to-float v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Laxz;->h:Lawr;

    invoke-virtual {v1}, Lawr;->o()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Laxz;->i:F

    .line 78
    :cond_0
    iget v0, p0, Laxz;->i:F

    return v0
.end method

.method public a(F)Z
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-virtual {p0}, Laxz;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laxz;->b()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()F
    .locals 3

    .prologue
    .line 82
    iget v0, p0, Laxz;->j:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Laxz;->e:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laxz;->j:F

    .line 92
    :cond_0
    :goto_0
    iget v0, p0, Laxz;->j:F

    return v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Laxz;->a()F

    move-result v0

    .line 87
    iget-object v1, p0, Laxz;->e:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Laxz;->d:F

    sub-float/2addr v1, v2

    .line 88
    iget-object v2, p0, Laxz;->h:Lawr;

    invoke-virtual {v2}, Lawr;->o()F

    move-result v2

    div-float/2addr v1, v2

    .line 89
    add-float/2addr v0, v1

    iput v0, p0, Laxz;->j:F

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Laxz;->c:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyframe{startValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laxz;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laxz;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laxz;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laxz;->e:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laxz;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
