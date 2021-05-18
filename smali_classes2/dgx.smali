.class public final Ldgx;
.super Ldqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqy",
        "<",
        "Ldgx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ldqy;-><init>()V

    iput-object v0, p0, Ldgx;->a:[B

    iput-object v0, p0, Ldgx;->b:[B

    const/4 v0, -0x1

    iput v0, p0, Ldgx;->ah:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    invoke-super {p0}, Ldqy;->a()I

    move-result v0

    iget-object v1, p0, Ldgx;->a:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Ldgx;->a:[B

    invoke-static {v1, v2}, Ldqw;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldgx;->b:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Ldgx;->b:[B

    invoke-static {v1, v2}, Ldqw;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a(Ldqv;)Ldgx;
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
    invoke-virtual {p1}, Ldqv;->k()[B

    move-result-object v0

    iput-object v0, p0, Ldgx;->a:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Ldqv;->k()[B

    move-result-object v0

    iput-object v0, p0, Ldgx;->b:[B

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

    iget-object v0, p0, Ldgx;->a:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ldgx;->a:[B

    invoke-virtual {p1, v0, v1}, Ldqw;->a(I[B)V

    :cond_0
    iget-object v0, p0, Ldgx;->b:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Ldgx;->b:[B

    invoke-virtual {p1, v0, v1}, Ldqw;->a(I[B)V

    :cond_1
    invoke-super {p0, p1}, Ldqy;->a(Ldqw;)V

    return-void
.end method

.method public synthetic b(Ldqv;)Ldre;
    .locals 1

    invoke-virtual {p0, p1}, Ldgx;->a(Ldqv;)Ldgx;

    move-result-object v0

    return-object v0
.end method
