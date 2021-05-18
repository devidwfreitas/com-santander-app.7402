.class public abstract Ldqy;
.super Ldre;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ldqy",
        "<TM;>;>",
        "Ldre;"
    }
.end annotation


# instance fields
.field protected ag:Ldra;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldre;-><init>()V

    return-void
.end method

.method private a(ILdrg;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ldqy;->ag:Ldra;

    if-nez v1, :cond_1

    new-instance v1, Ldra;

    invoke-direct {v1}, Ldra;-><init>()V

    iput-object v1, p0, Ldqy;->ag:Ldra;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ldrb;

    invoke-direct {v0}, Ldrb;-><init>()V

    iget-object v1, p0, Ldqy;->ag:Ldra;

    invoke-virtual {v1, p1, v0}, Ldra;->a(ILdrb;)V

    :cond_0
    invoke-virtual {v0, p2}, Ldrb;->a(Ldrg;)V

    return-void

    :cond_1
    iget-object v0, p0, Ldqy;->ag:Ldra;

    invoke-virtual {v0, p1}, Ldra;->a(I)Ldrb;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ldqy;->ag:Ldra;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ldqy;->ag:Ldra;

    invoke-virtual {v2}, Ldra;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ldqy;->ag:Ldra;

    invoke-virtual {v2, v0}, Ldra;->b(I)Ldrb;

    move-result-object v2

    invoke-virtual {v2}, Ldrb;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public final a(Ldqz;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldqz",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Ldqy;->ag:Ldra;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Ldqy;->ag:Ldra;

    iget v2, p1, Ldqz;->c:I

    invoke-static {v2}, Ldrh;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ldra;->a(I)Ldrb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ldrb;->a(Ldqz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ldqw;)V
    .locals 2

    iget-object v0, p0, Ldqy;->ag:Ldra;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldqy;->ag:Ldra;

    invoke-virtual {v1}, Ldra;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ldqy;->ag:Ldra;

    invoke-virtual {v1, v0}, Ldra;->b(I)Ldrb;

    move-result-object v1

    invoke-virtual {v1, p1}, Ldrb;->a(Ldqw;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Ldqv;I)Z
    .locals 3

    invoke-virtual {p1}, Ldqv;->t()I

    move-result v0

    invoke-virtual {p1, p2}, Ldqv;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Ldrh;->b(I)I

    move-result v1

    invoke-virtual {p1}, Ldqv;->t()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Ldqv;->a(II)[B

    move-result-object v0

    new-instance v2, Ldrg;

    invoke-direct {v2, p2, v0}, Ldrg;-><init>(I[B)V

    invoke-direct {p0, v1, v2}, Ldqy;->a(ILdrg;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldqy;->d()Ldqy;

    move-result-object v0

    return-object v0
.end method

.method public d()Ldqy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Ldre;->e()Ldre;

    move-result-object v0

    check-cast v0, Ldqy;

    invoke-static {p0, v0}, Ldrc;->a(Ldqy;Ldqy;)V

    return-object v0
.end method

.method public synthetic e()Ldre;
    .locals 1

    invoke-virtual {p0}, Ldqy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqy;

    return-object v0
.end method
