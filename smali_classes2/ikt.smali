.class Likt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Likl;


# direct methods
.method constructor <init>(Likl;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Likt;->a:Likl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Likt;->a:Likl;

    invoke-static {v0}, Likl;->j(Likl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuu;

    .line 523
    invoke-virtual {v0}, Lfuu;->getNomeBanco()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lfuu;->getNomeBanco()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CARTAOPAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Likt;->a:Likl;

    iget-object v1, p0, Likt;->a:Likl;

    invoke-static {v1}, Likl;->k(Likl;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Likl;->a(Landroid/view/View;Z)V

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Likt;->a:Likl;

    iget-object v1, p0, Likt;->a:Likl;

    invoke-static {v1}, Likl;->k(Likl;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Likl;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method
