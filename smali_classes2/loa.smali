.class Lloa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llnt;


# direct methods
.method constructor <init>(Llnt;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lloa;->a:Llnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lloa;->a:Llnt;

    invoke-static {v0}, Llnt;->c(Llnt;)V

    .line 394
    iget-object v0, p0, Lloa;->a:Llnt;

    invoke-static {v0}, Llnt;->d(Llnt;)V

    .line 396
    iget-object v0, p0, Lloa;->a:Llnt;

    invoke-static {v0}, Llnt;->g(Llnt;)Lkry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lloa;->a:Llnt;

    invoke-static {v0}, Llnt;->g(Llnt;)Lkry;

    move-result-object v0

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 397
    iget-object v0, p0, Lloa;->a:Llnt;

    invoke-static {v0}, Llnt;->g(Llnt;)Lkry;

    move-result-object v0

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    iget-object v1, p0, Lloa;->a:Llnt;

    invoke-static {v1}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lloa;->a:Llnt;

    invoke-static {v1}, Llnt;->g(Llnt;)Lkry;

    move-result-object v1

    invoke-virtual {v1}, Lkry;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrz;

    invoke-virtual {v1}, Lkrz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lloi;->a(Lkrz;Ljava/lang/String;Ljava/lang/String;)Lloi;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lloa;->a:Llnt;

    invoke-static {v1}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    const-string v1, "Seguros_Contratacao_AP_Proposta_Acao"

    const-string v2, "VerifiquePossibilidades"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    :goto_0
    iget-object v1, p0, Lloa;->a:Llnt;

    invoke-static {v1}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-string v2, "quotation-is-tag"

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 422
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lloa;->a:Llnt;

    invoke-static {v1}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string v1, "Seguros_Contratacao_Vida_Proposta_Acao"

    const-string v2, "VerifiquePossibilidades"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lloa;->a:Llnt;

    invoke-static {v0}, Llnt;->h(Llnt;)Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e()Lkrz;

    move-result-object v0

    iget-object v1, p0, Lloa;->a:Llnt;

    invoke-static {v1}, Llnt;->a(Llnt;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lloa;->a:Llnt;

    invoke-static {v2}, Llnt;->h(Llnt;)Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e()Lkrz;

    move-result-object v2

    invoke-virtual {v2}, Lkrz;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lloi;->a(Lkrz;Ljava/lang/String;Ljava/lang/String;)Lloi;

    move-result-object v0

    goto :goto_0
.end method
