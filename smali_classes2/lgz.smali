.class public Llgz;
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
    .line 1022
    iput-object p1, p0, Llgz;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    iput p2, p0, Llgz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1022
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Llgz;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1025
    iget-object v0, p0, Llgz;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v0, p0, Llgz;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)I

    move-result v0

    iget v1, p0, Llgz;->a:I

    if-ne v0, v1, :cond_0

    .line 1027
    iget-object v0, p0, Llgz;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->h(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 1028
    iget-object v0, p0, Llgz;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->r(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 1029
    iget-object v0, p0, Llgz;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v0, p1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Llgz;->b:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
