.class public abstract Lcey;
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


# instance fields
.field protected a:I

.field public final b:[F

.field protected c:F

.field protected d:F

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcey;->a:I

    .line 20
    iput v1, p0, Lcey;->c:F

    .line 23
    iput v1, p0, Lcey;->d:F

    .line 26
    iput v0, p0, Lcey;->e:I

    .line 29
    iput v0, p0, Lcey;->f:I

    .line 37
    iput v0, p0, Lcey;->a:I

    .line 38
    new-array v0, p1, [F

    iput-object v0, p0, Lcey;->b:[F

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcey;->a:I

    .line 60
    return-void
.end method

.method public a(FF)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcey;->c:F

    .line 79
    iput p2, p0, Lcey;->d:F

    .line 80
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 43
    if-gez p1, :cond_0

    .line 44
    const/4 p1, 0x0

    .line 45
    :cond_0
    iput p1, p0, Lcey;->e:I

    .line 46
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcey;->b:[F

    array-length v0, v0

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 50
    if-gez p1, :cond_0

    .line 51
    const/4 p1, 0x0

    .line 52
    :cond_0
    iput p1, p0, Lcey;->f:I

    .line 53
    return-void
.end method
