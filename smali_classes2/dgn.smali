.class public final Ldgn;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldgn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ldgo;

.field public b:Ldgp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldqy;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ldgn;->ah:I

    return-void
.end method

.method public static a([B)Ldgn;
    .locals 1

    new-instance v0, Ldgn;

    invoke-direct {v0}, Ldgn;-><init>()V

    invoke-static {v0, p0}, Ldre;->a(Ldre;[B)Ldre;

    move-result-object v0

    check-cast v0, Ldgn;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 3

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v1, p0, Ldgn;->a:Ldgo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ldgn;->a:Ldgo;

    invoke-static {v1, v2}, Ldqw;->c(ILdre;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldgn;->b:Ldgp;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Ldgn;->b:Ldgp;

    invoke-static {v1, v2}, Ldqw;->c(ILdre;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a(Ldqv;)Ldgn;
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
    iget-object v0, p0, Ldgn;->a:Ldgo;

    if-nez v0, :cond_1

    new-instance v0, Ldgo;

    invoke-direct {v0}, Ldgo;-><init>()V

    iput-object v0, p0, Ldgn;->a:Ldgo;

    :cond_1
    iget-object v0, p0, Ldgn;->a:Ldgo;

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Ldgn;->b:Ldgp;

    if-nez v0, :cond_2

    new-instance v0, Ldgp;

    invoke-direct {v0}, Ldgp;-><init>()V

    iput-object v0, p0, Ldgn;->b:Ldgp;

    :cond_2
    iget-object v0, p0, Ldgn;->b:Ldgp;

    invoke-virtual {p1, v0}, Ldqv;->a(Ldre;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Ldqw;)V
    .locals 2

    iget-object v0, p0, Ldgn;->a:Ldgo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldgn;->a:Ldgo;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILdre;)V

    :cond_0
    iget-object v0, p0, Ldgn;->b:Ldgp;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Ldgn;->b:Ldgp;

    invoke-virtual {p1, v0, v1}, Ldqw;->a(ILdre;)V

    :cond_1
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldgn;->a(Ldqv;)Ldgn;

    move-result-object v0

    return-object v0
.end method
