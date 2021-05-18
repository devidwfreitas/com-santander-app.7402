.class public Lbce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[F

.field private final b:[I


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbce;->a:[F

    .line 13
    iput-object p2, p0, Lbce;->b:[I

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lbce;Lbce;F)V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p1, Lbce;->b:[I

    array-length v0, v0

    iget-object v1, p2, Lbce;->b:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lbce;->b:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lbce;->b:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lbce;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lbce;->a:[F

    iget-object v2, p1, Lbce;->a:[F

    aget v2, v2, v0

    iget-object v3, p2, Lbce;->a:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Lbex;->a(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 36
    iget-object v1, p0, Lbce;->b:[I

    iget-object v2, p1, Lbce;->b:[I

    aget v2, v2, v0

    iget-object v3, p2, Lbce;->b:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Lber;->a(FII)I

    move-result v2

    aput v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public a()[F
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbce;->a:[F

    return-object v0
.end method

.method public b()[I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbce;->b:[I

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbce;->b:[I

    array-length v0, v0

    return v0
.end method
