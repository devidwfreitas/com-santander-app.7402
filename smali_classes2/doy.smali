.class public final Ldoy;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldoy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ldoy;


# instance fields
.field public a:Ldpb;

.field public b:Ldoz;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldqy;-><init>()V

    invoke-virtual {p0}, Ldoy;->c()Ldoy;

    return-void
.end method

.method public static b()[Ldoy;
    .locals 2

    sget-object v0, Ldoy;->e:[Ldoy;

    if-nez v0, :cond_1

    sget-object v1, Ldrc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldoy;->e:[Ldoy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ldoy;

    sput-object v0, Ldoy;->e:[Ldoy;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ldoy;->e:[Ldoy;

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

    iget-object v1, p0, Ldoy;->a:Ldpb;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ldoy;->a:Ldpb;

    invoke-static {v1, v2}, Ldqw;->c(ILdre;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldoy;->b:Ldoz;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Ldoy;->b:Ldoz;

    invoke-static {v1, v2}, Ldqw;->c(ILdre;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Ldoy;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Ldoy;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Ldqw;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Ldoy;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Ldoy;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public a(Ldqv;)Ldoy;
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
    iget-object v0, p0, Ldoy;->a:Ldpb;

    if-nez v0, :cond_1

    new-instance v0, Ldpb;

    invoke-direct {v0}, Ldpb;-><init>()V

    iput-object v0, p0, Ldoy;->a:Ldpb;

    :cond_1
    iget-object v0, p0, Ldoy;->a:Ldpb;

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Ldoy;->b:Ldoz;

    if-nez v0, :cond_2

    new-instance v0, Ldoz;

    invoke-direct {v0}, Ldoz;-><init>()V

    iput-object v0, p0, Ldoy;->b:Ldoz;

    :cond_2
    iget-object v0, p0, Ldoy;->b:Ldoz;

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Ldqv;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldoy;->c:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldoy;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 2

    iget-object v0, p0, Ldoy;->a:Ldpb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldoy;->a:Ldpb;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILdre;)V

    :cond_0
    iget-object v0, p0, Ldoy;->b:Ldoz;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Ldoy;->b:Ldoz;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILdre;)V

    :cond_1
    iget-object v0, p0, Ldoy;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Ldoy;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldqw;->a(IZ)V

    :cond_2
    iget-object v0, p0, Ldoy;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Ldoy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldoy;->a(Ldqv;)Ldoy;

    move-result-object v0

    return-object v0
.end method

.method public c()Ldoy;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ldoy;->a:Ldpb;

    iput-object v0, p0, Ldoy;->b:Ldoz;

    iput-object v0, p0, Ldoy;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Ldoy;->d:Ljava/lang/String;

    iput-object v0, p0, Ldoy;->ag:Ldra;

    const/4 v0, -0x1

    iput v0, p0, Ldoy;->ah:I

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
    instance-of v2, p1, Ldoy;

    if-eqz v2, :cond_0

    check-cast p1, Ldoy;

    iget-object v2, p0, Ldoy;->a:Ldpb;

    if-nez v2, :cond_8

    iget-object v2, p1, Ldoy;->a:Ldpb;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Ldoy;->b:Ldoz;

    if-nez v2, :cond_9

    iget-object v2, p1, Ldoy;->b:Ldoz;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Ldoy;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    iget-object v2, p1, Ldoy;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Ldoy;->d:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Ldoy;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Ldoy;->ag:Ldra;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ldoy;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    iget-object v2, p1, Ldoy;->ag:Ldra;

    if-eqz v2, :cond_7

    iget-object v2, p1, Ldoy;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Ldoy;->a:Ldpb;

    iget-object v3, p1, Ldoy;->a:Ldpb;

    invoke-virtual {v2, v3}, Ldpb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_9
    iget-object v2, p0, Ldoy;->b:Ldoz;

    iget-object v3, p1, Ldoy;->b:Ldoz;

    invoke-virtual {v2, v3}, Ldoz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_a
    iget-object v2, p0, Ldoy;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Ldoy;->c:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_b
    iget-object v2, p0, Ldoy;->d:Ljava/lang/String;

    iget-object v3, p1, Ldoy;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_c
    iget-object v0, p0, Ldoy;->ag:Ldra;

    iget-object v1, p1, Ldoy;->ag:Ldra;

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

    iget-object v0, p0, Ldoy;->a:Ldpb;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldoy;->b:Ldoz;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldoy;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ldoy;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldoy;->ag:Ldra;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldoy;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Ldoy;->a:Ldpb;

    invoke-virtual {v0}, Ldpb;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldoy;->b:Ldoz;

    invoke-virtual {v0}, Ldoz;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ldoy;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Ldoy;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Ldoy;->ag:Ldra;

    invoke-virtual {v1}, Ldra;->hashCode()I

    move-result v1

    goto :goto_4
.end method