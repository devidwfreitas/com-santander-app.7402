.class public Llhk;
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
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iput p2, p0, Llhk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 584
    check-cast p1, Lkrg;

    invoke-virtual {p0, p1}, Llhk;->a(Lkrg;)V

    return-void
.end method

.method public a(Lkrg;)V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)I

    move-result v0

    iget v1, p0, Llhk;->a:I

    if-ne v0, v1, :cond_0

    .line 589
    if-nez p1, :cond_2

    .line 590
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->j(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->k(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 592
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iget-object v1, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkrg;)Lkrg;

    .line 595
    invoke-virtual {p1}, Lkrg;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lkrg;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 596
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->j(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lkrg;->e()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqv;

    invoke-virtual {v0}, Lkqv;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :goto_1
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->k(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 598
    :cond_3
    iget-object v0, p0, Llhk;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->j(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
