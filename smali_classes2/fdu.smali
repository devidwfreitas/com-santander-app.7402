.class public Lfdu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lfdu;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lfdu;->a:I

    .line 14
    iput p2, p0, Lfdu;->b:I

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lfdu;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lfdu;

    iget v1, p0, Lfdu;->b:I

    iget v2, p0, Lfdu;->a:I

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    return-object v0
.end method

.method public a(II)Lfdu;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lfdu;

    iget v1, p0, Lfdu;->a:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iget v2, p0, Lfdu;->b:I

    mul-int/2addr v2, p1

    div-int/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    return-object v0
.end method

.method public a(Lfdu;)Lfdu;
    .locals 4

    .prologue
    .line 46
    iget v0, p0, Lfdu;->a:I

    iget v1, p1, Lfdu;->b:I

    mul-int/2addr v0, v1

    iget v1, p1, Lfdu;->a:I

    iget v2, p0, Lfdu;->b:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 48
    new-instance v0, Lfdu;

    iget v1, p1, Lfdu;->a:I

    iget v2, p0, Lfdu;->b:I

    iget v3, p1, Lfdu;->a:I

    mul-int/2addr v2, v3

    iget v3, p0, Lfdu;->a:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lfdu;

    iget v1, p0, Lfdu;->a:I

    iget v2, p1, Lfdu;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lfdu;->b:I

    div-int/2addr v1, v2

    iget v2, p1, Lfdu;->b:I

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    goto :goto_0
.end method

.method public b(Lfdu;)Lfdu;
    .locals 4

    .prologue
    .line 62
    iget v0, p0, Lfdu;->a:I

    iget v1, p1, Lfdu;->b:I

    mul-int/2addr v0, v1

    iget v1, p1, Lfdu;->a:I

    iget v2, p0, Lfdu;->b:I

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 64
    new-instance v0, Lfdu;

    iget v1, p1, Lfdu;->a:I

    iget v2, p0, Lfdu;->b:I

    iget v3, p1, Lfdu;->a:I

    mul-int/2addr v2, v3

    iget v3, p0, Lfdu;->a:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lfdu;

    iget v1, p0, Lfdu;->a:I

    iget v2, p1, Lfdu;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lfdu;->b:I

    div-int/2addr v1, v2

    iget v2, p1, Lfdu;->b:I

    invoke-direct {v0, v1, v2}, Lfdu;-><init>(II)V

    goto :goto_0
.end method

.method public c(Lfdu;)Z
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lfdu;->a:I

    iget v1, p1, Lfdu;->a:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lfdu;->b:I

    iget v1, p1, Lfdu;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8
    check-cast p1, Lfdu;

    invoke-virtual {p0, p1}, Lfdu;->d(Lfdu;)I

    move-result v0

    return v0
.end method

.method public d(Lfdu;)I
    .locals 3
    .param p1    # Lfdu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    iget v0, p0, Lfdu;->b:I

    iget v1, p0, Lfdu;->a:I

    mul-int/2addr v0, v1

    .line 87
    iget v1, p1, Lfdu;->b:I

    iget v2, p1, Lfdu;->a:I

    mul-int/2addr v1, v2

    .line 88
    if-ge v1, v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_0
    if-le v1, v0, :cond_1

    .line 92
    const/4 v0, -0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 106
    :cond_3
    check-cast p1, Lfdu;

    .line 108
    iget v2, p0, Lfdu;->a:I

    iget v3, p1, Lfdu;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lfdu;->b:I

    iget v3, p1, Lfdu;->b:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lfdu;->a:I

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lfdu;->b:I

    add-int/2addr v0, v1

    .line 115
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lfdu;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfdu;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
