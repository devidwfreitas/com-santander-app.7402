.class Llpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkxl",
        "<",
        "Lkrg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lloz;


# direct methods
.method constructor <init>(Lloz;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Llpa;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Lkrg;

    invoke-virtual {p0, p1}, Llpa;->a(Lkrg;)V

    return-void
.end method

.method public a(Lkrg;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1}, Lkrg;->b()Lkqt;

    move-result-object v0

    invoke-virtual {v0}, Lkqt;->a()Lkqh;

    move-result-object v0

    invoke-virtual {v0}, Lkqh;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 185
    sget-object v0, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v0, p1}, Lksq;->setDetailsResponse(Lkrg;)V

    .line 186
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmhz;->a(Lkrg;)V

    .line 187
    invoke-virtual {p1}, Lkrg;->b()Lkqt;

    move-result-object v0

    invoke-virtual {v0}, Lkqt;->a()Lkqh;

    move-result-object v0

    invoke-virtual {v0}, Lkqh;->a()Ljava/util/List;

    move-result-object v0

    .line 188
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setContracts(Ljava/util/List;)V

    .line 189
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v1

    invoke-virtual {p1}, Lkrg;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setCreditCards(Ljava/util/List;)V

    .line 190
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v1

    iget-object v2, p0, Llpa;->a:Lloz;

    invoke-static {v2}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setAccountPos(I)V

    .line 194
    :cond_0
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v1

    new-instance v2, Llpb;

    invoke-direct {v2, p0}, Llpb;-><init>(Llpa;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setListener(Lmbl;)V

    .line 212
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->q()Lksd;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p1}, Lkrg;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Llpa;->a:Lloz;

    invoke-static {v2}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->q()Lksd;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v1

    iget-object v2, p0, Llpa;->a:Lloz;

    invoke-static {v2}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->q()Lksd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setCreditCardSelected(Lksd;)V

    .line 225
    :goto_0
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->p()Lkql;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->p()Lkql;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v0

    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->p()Lkql;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setContractsGetDetails(Lkql;)V

    .line 238
    :goto_1
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->g()V

    .line 245
    :goto_2
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 246
    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmhz;->a(Lksd;)V

    .line 217
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setCreditCardSelected(Lksd;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-static {v1}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setCreditCardSelected(Lksd;)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmhz;->a(Lkql;)V

    .line 231
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setContractsGetDetails(Lkql;)V

    goto :goto_1

    .line 234
    :cond_4
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setContractsGetDetails(Lkql;)V

    goto :goto_1

    .line 240
    :cond_5
    iget-object v0, p0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    iget-object v1, p0, Llpa;->a:Lloz;

    invoke-virtual {v1}, Lloz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090263

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method
