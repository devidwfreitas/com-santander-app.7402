.class public final Ldpa;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldpa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ldpa;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ldoy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldqy;-><init>()V

    invoke-virtual {p0}, Ldpa;->c()Ldpa;

    return-void
.end method

.method public static b()[Ldpa;
    .locals 2

    sget-object v0, Ldpa;->d:[Ldpa;

    if-nez v0, :cond_1

    sget-object v1, Ldrc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldpa;->d:[Ldpa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ldpa;

    sput-object v0, Ldpa;->d:[Ldpa;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ldpa;->d:[Ldpa;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()I
    .locals 3

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v1, p0, Ldpa;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ldpa;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ldqw;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldpa;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Ldpa;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Ldpa;->c:Ldoy;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Ldpa;->c:Ldoy;

    invoke-static {v1, v2}, Ldqw;->c(ILdre;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public a(Ldqv;)Ldpa;
    .locals 1

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
    invoke-virtual {p1}, Ldqv;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldpa;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldpa;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Ldpa;->c:Ldoy;

    if-nez v0, :cond_1

    new-instance v0, Ldoy;

    invoke-direct {v0}, Ldoy;-><init>()V

    iput-object v0, p0, Ldpa;->c:Ldoy;

    :cond_1
    iget-object v0, p0, Ldpa;->c:Ldoy;

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 2

    iget-object v0, p0, Ldpa;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldpa;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldqw;->a(II)V

    :cond_0
    iget-object v0, p0, Ldpa;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Ldpa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ldpa;->c:Ldoy;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Ldpa;->c:Ldoy;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILdre;)V

    :cond_2
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldpa;->a(Ldqv;)Ldpa;

    move-result-object v0

    return-object v0
.end method

.method public c()Ldpa;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ldpa;->a:Ljava/lang/Integer;

    iput-object v0, p0, Ldpa;->b:Ljava/lang/String;

    iput-object v0, p0, Ldpa;->c:Ldoy;

    iput-object v0, p0, Ldpa;->ag:Ldra;

    const/4 v0, -0x1

    iput v0, p0, Ldpa;->ah:I

    return-object p0
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
    instance-of v2, p1, Ldpa;

    if-eqz v2, :cond_0

    check-cast p1, Ldpa;

    iget-object v2, p0, Ldpa;->a:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Ldpa;->a:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Ldpa;->b:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Ldpa;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Ldpa;->c:Ldoy;

    if-nez v2, :cond_9

    iget-object v2, p1, Ldpa;->c:Ldoy;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Ldpa;->ag:Ldra;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldpa;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p1, Ldpa;->ag:Ldra;

    if-eqz v2, :cond_6

    iget-object v2, p1, Ldpa;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Ldpa;->a:Ljava/lang/Integer;

    iget-object v3, p1, Ldpa;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_8
    iget-object v2, p0, Ldpa;->b:Ljava/lang/String;

    iget-object v3, p1, Ldpa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_9
    iget-object v2, p0, Ldpa;->c:Ldoy;

    iget-object v3, p1, Ldpa;->c:Ldoy;

    invoke-virtual {v2, v3}, Ldoy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_a
    iget-object v0, p0, Ldpa;->ag:Ldra;

    iget-object v1, p1, Ldpa;->ag:Ldra;

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

    iget-object v0, p0, Ldpa;->a:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpa;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldpa;->c:Ldoy;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldpa;->ag:Ldra;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldpa;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Ldpa;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldpa;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ldpa;->c:Ldoy;

    invoke-virtual {v0}, Ldoy;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Ldpa;->ag:Ldra;

    invoke-virtual {v1}, Ldra;->hashCode()I

    move-result v1

    goto :goto_3
.end method
