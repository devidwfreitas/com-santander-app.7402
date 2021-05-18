.class public final Ldgw;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldgw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;

.field public d:[I

.field public e:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ldqy;-><init>()V

    iput-object v1, p0, Ldgw;->a:Ljava/lang/Long;

    iput-object v1, p0, Ldgw;->b:Ljava/lang/Integer;

    iput-object v1, p0, Ldgw;->c:Ljava/lang/Boolean;

    sget-object v0, Ldrh;->e:[I

    iput-object v0, p0, Ldgw;->d:[I

    iput-object v1, p0, Ldgw;->e:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Ldgw;->ah:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v2, p0, Ldgw;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Ldgw;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Ldgw;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Ldgw;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ldqw;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Ldgw;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Ldgw;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Ldqw;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Ldgw;->d:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Ldgw;->d:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    :goto_0
    iget-object v3, p0, Ldgw;->d:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Ldgw;->d:[I

    aget v3, v3, v1

    invoke-static {v3}, Ldqw;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v2

    iget-object v1, p0, Ldgw;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Ldgw;->e:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Ldgw;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ldqw;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public a(Ldqv;)Ldgw;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ldqv;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Ldqy;->a(Ldqv;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldgw;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldgw;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Ldqv;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldgw;->c:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x20

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldgw;->d:[I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    iget-object v3, p0, Ldgw;->d:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Ldqv;->g()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ldgw;->d:[I

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Ldgw;->d:[I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Ldqv;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Ldqv;->d(I)I

    move-result v3

    invoke-virtual {p1}, Ldqv;->t()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Ldqv;->r()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Ldqv;->g()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Ldqv;->f(I)V

    iget-object v2, p0, Ldgw;->d:[I

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_5

    iget-object v4, p0, Ldgw;->d:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Ldqv;->g()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Ldgw;->d:[I

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Ldgw;->d:[I

    invoke-virtual {p1, v3}, Ldqv;->e(I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Ldqv;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldgw;->e:Ljava/lang/Long;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 4

    iget-object v0, p0, Ldgw;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldgw;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_0
    iget-object v0, p0, Ldgw;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Ldgw;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_1
    iget-object v0, p0, Ldgw;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Ldgw;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldqw;->a(IZ)V

    :cond_2
    iget-object v0, p0, Ldgw;->d:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldgw;->d:[I

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldgw;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Ldgw;->d:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Ldqw;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldgw;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Ldgw;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->a(IJ)V

    :cond_4
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldgw;->a(Ldqv;)Ldgw;

    move-result-object v0

    return-object v0
.end method
