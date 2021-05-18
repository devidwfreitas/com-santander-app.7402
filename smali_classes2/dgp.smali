.class public final Ldgp;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldgp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ldqy;-><init>()V

    iput-object v0, p0, Ldgp;->a:Ljava/lang/String;

    iput-object v0, p0, Ldgp;->b:Ljava/lang/String;

    iput-object v0, p0, Ldgp;->c:Ljava/lang/String;

    iput-object v0, p0, Ldgp;->d:Ljava/lang/String;

    iput-object v0, p0, Ldgp;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ldgp;->ah:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v1, p0, Ldgp;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ldgp;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldgp;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Ldgp;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Ldgp;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Ldgp;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Ldgp;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Ldgp;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Ldgp;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Ldgp;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Ldqw;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public a(Ldqv;)Ldgp;
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

    iput-object v0, p0, Ldgp;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldgp;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldgp;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldgp;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Ldqv;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldgp;->e:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 2

    iget-object v0, p0, Ldgp;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldgp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ldgp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Ldgp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ldgp;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Ldgp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Ldgp;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Ldgp;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Ldgp;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Ldgp;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILjava/lang/String;)V

    :cond_4
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldgp;->a(Ldqv;)Ldgp;

    move-result-object v0

    return-object v0
.end method
