.class Likk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Likg;


# direct methods
.method constructor <init>(Likg;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Likk;->a:Likg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Likk;->a:Likg;

    invoke-static {v0}, Likg;->e(Likg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 147
    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getNomeBanco()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getNomeBanco()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CARTAOPAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Likk;->a:Likg;

    iget-object v1, p0, Likk;->a:Likg;

    invoke-static {v1}, Likg;->f(Likg;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Likg;->a(Landroid/view/View;Z)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Likk;->a:Likg;

    iget-object v1, p0, Likk;->a:Likg;

    invoke-static {v1}, Likg;->f(Likg;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Likg;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method
