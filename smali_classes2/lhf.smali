.class public Llhf;
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
        "Lkuh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Llhf;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p1, Lkuh;

    invoke-virtual {p0, p1}, Llhf;->a(Lkuh;)V

    return-void
.end method

.method public a(Lkuh;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Llhf;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {p1}, Lkuh;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Ljava/util/List;)Ljava/util/List;

    .line 379
    iget-object v0, p0, Llhf;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->f(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    .line 380
    iget-object v0, p0, Llhf;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->g(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    .line 381
    iget-object v0, p0, Llhf;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->h(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 382
    return-void
.end method
