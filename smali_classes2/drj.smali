.class public final Ldrj;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldrj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Ldrj;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldqy;-><init>()V

    invoke-virtual {p0}, Ldrj;->c()Ldrj;

    return-void
.end method

.method public static b()[Ldrj;
    .locals 2

    sget-object v0, Ldrj;->b:[Ldrj;

    if-nez v0, :cond_1

    sget-object v1, Ldrc;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldrj;->b:[Ldrj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ldrj;

    sput-object v0, Ldrj;->b:[Ldrj;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ldrj;->b:[Ldrj;

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

    iget-object v1, p0, Ldrj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldrj;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ldrj;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(Ldqv;)Ldrj;
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
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrj;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 2

    iget-object v0, p0, Ldrj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldrj;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldrj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldrj;->a(Ldqv;)Ldrj;

    move-result-object v0

    return-object v0
.end method

.method public c()Ldrj;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Ldrj;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ldrj;->ag:Ldra;

    const/4 v0, -0x1

    iput v0, p0, Ldrj;->ah:I

    return-object p0
.end method
