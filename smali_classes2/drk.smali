.class public final Ldrk;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldrk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:[Ldrj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldqy;-><init>()V

    invoke-virtual {p0}, Ldrk;->b()Ldrk;

    return-void
.end method

.method public static a([B)Ldrk;
    .locals 1

    new-instance v0, Ldrk;

    invoke-direct {v0}, Ldrk;-><init>()V

    invoke-static {v0, p0}, Ldre;->a(Ldre;[B)Ldre;

    move-result-object v0

    check-cast v0, Ldrk;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 7

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v1, p0, Ldrk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldrk;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ldrk;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldrk;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldrk;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Ldrk;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Ldrk;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Ldrk;->c:J

    invoke-static {v1, v2, v3}, Ldqw;->f(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Ldrk;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldrk;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Ldrk;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Ldrk;->e:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Ldrk;->e:I

    invoke-static {v1, v2}, Ldqw;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ldrk;->f:I

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v2, p0, Ldrk;->f:I

    invoke-static {v1, v2}, Ldqw;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Ldrk;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ldrk;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Ldrk;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Ldrk;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Ldrk;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Ldrk;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Ldrk;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ldrk;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Ldrk;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Ldrk;->j:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Ldrk;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Ldrk;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Ldrk;->k:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Ldrk;->k:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Ldrk;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Ldrk;->l:I

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget v2, p0, Ldrk;->l:I

    invoke-static {v1, v2}, Ldqw;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Ldrk;->m:[Ldrj;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ldrk;->m:[Ldrj;

    array-length v1, v1

    if-lez v1, :cond_e

    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Ldrk;->m:[Ldrj;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Ldrk;->m:[Ldrj;

    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/16 v3, 0xd

    invoke-static {v3, v2}, Ldqw;->c(ILdre;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    move v0, v1

    :cond_e
    return v0
.end method

.method public a(Ldqv;)Ldrk;
    .locals 4

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
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    iput-wide v2, p0, Ldrk;->c:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    iput v0, p0, Ldrk;->e:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    iput v0, p0, Ldrk;->f:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->g:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->h:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->i:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->j:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrk;->k:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Ldrk;->l:I

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldrk;->m:[Ldrj;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ldrj;

    if-eqz v0, :cond_1

    iget-object v3, p0, Ldrk;->m:[Ldrj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Ldrj;

    invoke-direct {v3}, Ldrj;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ldrk;->m:[Ldrj;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Ldrj;

    invoke-direct {v3}, Ldrj;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldrk;->m:[Ldrj;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ldqw;)V
    .locals 4

    iget-object v0, p0, Ldrk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldrk;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldrk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ldrk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldrk;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Ldrk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Ldrk;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Ldrk;->c:J

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_2
    iget-object v0, p0, Ldrk;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldrk;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Ldrk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Ldrk;->e:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Ldrk;->e:I

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_4
    iget v0, p0, Ldrk;->f:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Ldrk;->f:I

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_5
    iget-object v0, p0, Ldrk;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldrk;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Ldrk;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Ldrk;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldrk;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Ldrk;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Ldrk;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldrk;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Ldrk;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Ldrk;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ldrk;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Ldrk;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Ldrk;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ldrk;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Ldrk;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_a
    iget v0, p0, Ldrk;->l:I

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Ldrk;->l:I

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_b
    iget-object v0, p0, Ldrk;->m:[Ldrj;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ldrk;->m:[Ldrj;

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldrk;->m:[Ldrj;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Ldrk;->m:[Ldrj;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Ldqw;->a(ILdre;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldrk;->a(Ldqv;)Ldrk;

    move-result-object v0

    return-object v0
.end method

.method public b()Ldrk;
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Ldrk;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ldrk;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldrk;->c:J

    const-string v0, ""

    iput-object v0, p0, Ldrk;->d:Ljava/lang/String;

    iput v2, p0, Ldrk;->e:I

    iput v2, p0, Ldrk;->f:I

    const-string v0, ""

    iput-object v0, p0, Ldrk;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ldrk;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ldrk;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ldrk;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ldrk;->k:Ljava/lang/String;

    iput v2, p0, Ldrk;->l:I

    invoke-static {}, Ldrj;->b()[Ldrj;

    move-result-object v0

    iput-object v0, p0, Ldrk;->m:[Ldrj;

    const/4 v0, 0x0

    iput-object v0, p0, Ldrk;->ag:Ldra;

    const/4 v0, -0x1

    iput v0, p0, Ldrk;->ah:I

    return-object p0
.end method
