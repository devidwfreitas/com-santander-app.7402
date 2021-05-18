.class public final Ldpe;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldpe;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:[Ldpf;

.field public e:[Ldpd;

.field public f:[Ldow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldqy;-><init>()V

    invoke-virtual {p0}, Ldpe;->b()Ldpe;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v2, p0, Ldpe;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Ldpe;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ldqw;->f(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Ldpe;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Ldpe;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ldqw;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Ldpe;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Ldpe;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ldqw;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Ldpe;->d:[Ldpf;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldpe;->d:[Ldpf;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Ldpe;->d:[Ldpf;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Ldpe;->d:[Ldpf;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Ldqw;->c(ILdre;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    iget-object v2, p0, Ldpe;->e:[Ldpd;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ldpe;->e:[Ldpd;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Ldpe;->e:[Ldpd;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Ldpe;->e:[Ldpd;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ldqw;->c(ILdre;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    :cond_8
    iget-object v2, p0, Ldpe;->f:[Ldow;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ldpe;->f:[Ldow;

    array-length v2, v2

    if-lez v2, :cond_a

    :goto_2
    iget-object v2, p0, Ldpe;->f:[Ldow;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Ldpe;->f:[Ldow;

    aget-object v2, v2, v1

    if-eqz v2, :cond_9

    const/4 v3, 0x6

    invoke-static {v3, v2}, Ldqw;->c(ILdre;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return v0
.end method

.method public a(Ldqv;)Ldpe;
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
    invoke-virtual {p1}, Ldqv;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldpe;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpe;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpe;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldpe;->d:[Ldpf;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ldpf;

    if-eqz v0, :cond_1

    iget-object v3, p0, Ldpe;->d:[Ldpf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Ldpf;

    invoke-direct {v3}, Ldpf;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ldpe;->d:[Ldpf;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Ldpf;

    invoke-direct {v3}, Ldpf;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldpe;->d:[Ldpf;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldpe;->e:[Ldpd;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ldpd;

    if-eqz v0, :cond_4

    iget-object v3, p0, Ldpe;->e:[Ldpd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Ldpd;

    invoke-direct {v3}, Ldpd;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Ldpe;->e:[Ldpd;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Ldpd;

    invoke-direct {v3}, Ldpd;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldpe;->e:[Ldpd;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldpe;->f:[Ldow;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ldow;

    if-eqz v0, :cond_7

    iget-object v3, p0, Ldpe;->f:[Ldow;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Ldow;

    invoke-direct {v3}, Ldow;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Ldpe;->f:[Ldow;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Ldow;

    invoke-direct {v3}, Ldow;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldpe;->f:[Ldow;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Ldpe;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Ldpe;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Ldqw;->b(IJ)V

    :cond_0
    iget-object v0, p0, Ldpe;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Ldpe;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ldqw;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ldpe;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Ldpe;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ldqw;->a(II)V

    :cond_2
    iget-object v0, p0, Ldpe;->d:[Ldpf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldpe;->d:[Ldpf;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Ldpe;->d:[Ldpf;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Ldpe;->d:[Ldpf;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Ldqw;->a(ILdre;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldpe;->e:[Ldpd;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldpe;->e:[Ldpd;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Ldpe;->e:[Ldpd;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Ldpe;->e:[Ldpd;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Ldqw;->a(ILdre;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ldpe;->f:[Ldow;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldpe;->f:[Ldow;

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_2
    iget-object v0, p0, Ldpe;->f:[Ldow;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Ldpe;->f:[Ldow;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Ldqw;->a(ILdre;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public b()Ldpe;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Ldpe;->a:Ljava/lang/Long;

    iput-object v1, p0, Ldpe;->b:Ljava/lang/String;

    iput-object v1, p0, Ldpe;->c:Ljava/lang/Integer;

    invoke-static {}, Ldpf;->b()[Ldpf;

    move-result-object v0

    iput-object v0, p0, Ldpe;->d:[Ldpf;

    invoke-static {}, Ldpd;->b()[Ldpd;

    move-result-object v0

    iput-object v0, p0, Ldpe;->e:[Ldpd;

    invoke-static {}, Ldow;->b()[Ldow;

    move-result-object v0

    iput-object v0, p0, Ldpe;->f:[Ldow;

    iput-object v1, p0, Ldpe;->ag:Ldra;

    const/4 v0, -0x1

    iput v0, p0, Ldpe;->ah:I

    return-object p0
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldpe;->a(Ldqv;)Ldpe;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ldpe;

    if-eqz v2, :cond_0

    check-cast p1, Ldpe;

    iget-object v2, p0, Ldpe;->a:Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p1, Ldpe;->a:Ljava/lang/Long;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Ldpe;->b:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Ldpe;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Ldpe;->c:Ljava/lang/Integer;

    if-nez v2, :cond_9

    iget-object v2, p1, Ldpe;->c:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Ldpe;->d:[Ldpf;

    iget-object v3, p1, Ldpe;->d:[Ldpf;

    invoke-static {v2, v3}, Ldrc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpe;->e:[Ldpd;

    iget-object v3, p1, Ldpe;->e:[Ldpd;

    invoke-static {v2, v3}, Ldrc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpe;->f:[Ldow;

    iget-object v3, p1, Ldpe;->f:[Ldow;

    invoke-static {v2, v3}, Ldrc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpe;->ag:Ldra;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldpe;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p1, Ldpe;->ag:Ldra;

    if-eqz v2, :cond_6

    iget-object v2, p1, Ldpe;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Ldpe;->a:Ljava/lang/Long;

    iget-object v3, p1, Ldpe;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_8
    iget-object v2, p0, Ldpe;->b:Ljava/lang/String;

    iget-object v3, p1, Ldpe;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_9
    iget-object v2, p0, Ldpe;->c:Ljava/lang/Integer;

    iget-object v3, p1, Ldpe;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_a
    iget-object v0, p0, Ldpe;->ag:Ldra;

    iget-object v1, p1, Ldpe;->ag:Ldra;

    invoke-virtual {v0, v1}, Ldra;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpe;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpe;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpe;->c:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpe;->d:[Ldpf;

    invoke-static {v2}, Ldrc;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpe;->e:[Ldpd;

    invoke-static {v2}, Ldrc;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpe;->f:[Ldow;

    invoke-static {v2}, Ldrc;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpe;->ag:Ldra;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpe;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Ldpe;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldpe;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ldpe;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Ldpe;->ag:Ldra;

    invoke-virtual {v1}, Ldra;->hashCode()I

    move-result v1

    goto :goto_3
.end method
