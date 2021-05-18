.class public Llgv;
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
        "Ljava/lang/String;",
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
    .line 604
    iput-object p1, p0, Llgv;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iput p2, p0, Llgv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 604
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llgv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Llgv;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v0, p0, Llgv;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)I

    move-result v0

    iget v1, p0, Llgv;->a:I

    if-ne v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Llgv;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->j(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Llgv;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->k(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 611
    iget-object v0, p0, Llgv;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Llgv;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
