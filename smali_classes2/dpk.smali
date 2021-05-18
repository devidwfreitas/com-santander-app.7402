.class public final Ldpk;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldpk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ldpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldqy;-><init>()V

    invoke-virtual {p0}, Ldpk;->b()Ldpk;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 4

    invoke-super {p0}, Ldqy;->a()I

    move-result v1

    iget-object v0, p0, Ldpk;->a:[Ldpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldpk;->a:[Ldpl;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ldpk;->a:[Ldpl;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ldpk;->a:[Ldpl;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ldqw;->c(ILdre;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public a(Ldqv;)Ldpk;
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ldrh;->a(Ldqv;I)I

    move-result v2

    iget-object v0, p0, Ldpk;->a:[Ldpl;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ldpl;

    if-eqz v0, :cond_1

    iget-object v3, p0, Ldpk;->a:[Ldpl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Ldpl;

    invoke-direct {v3}, Ldpl;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ldqv;->a(Ldre;)V

    invoke-virtual {p1}, Ldqv;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ldpk;->a:[Ldpl;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Ldpl;

    invoke-direct {v3}, Ldpl;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    iput-object v2, p0, Ldpk;->a:[Ldpl;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 3

    iget-object v0, p0, Ldpk;->a:[Ldpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldpk;->a:[Ldpl;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldpk;->a:[Ldpl;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldpk;->a:[Ldpl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ldqw;->a(ILdre;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public b()Ldpk;
    .locals 1

    invoke-static {}, Ldpl;->b()[Ldpl;

    move-result-object v0

    iput-object v0, p0, Ldpk;->a:[Ldpl;

    const/4 v0, 0x0

    iput-object v0, p0, Ldpk;->ag:Ldra;

    const/4 v0, -0x1

    iput v0, p0, Ldpk;->ah:I

    return-object p0
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldpk;->a(Ldqv;)Ldpk;

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
    instance-of v2, p1, Ldpk;

    if-eqz v2, :cond_0

    check-cast p1, Ldpk;

    iget-object v2, p0, Ldpk;->a:[Ldpl;

    iget-object v3, p1, Ldpk;->a:[Ldpl;

    invoke-static {v2, v3}, Ldrc;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpk;->ag:Ldra;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldpk;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Ldpk;->ag:Ldra;

    if-eqz v2, :cond_3

    iget-object v2, p1, Ldpk;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldpk;->ag:Ldra;

    iget-object v1, p1, Ldpk;->ag:Ldra;

    invoke-virtual {v0, v1}, Ldra;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldpk;->a:[Ldpl;

    invoke-static {v1}, Ldrc;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Ldpk;->ag:Ldra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldpk;->ag:Ldra;

    invoke-virtual {v0}, Ldra;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Ldpk;->ag:Ldra;

    invoke-virtual {v0}, Ldra;->hashCode()I

    move-result v0

    goto :goto_0
.end method
