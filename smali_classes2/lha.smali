.class public Llha;
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
        "Lkpv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1266
    check-cast p1, Lkpv;

    invoke-virtual {p0, p1}, Llha;->a(Lkpv;)V

    return-void
.end method

.method public a(Lkpv;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1269
    iget-object v0, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v0, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->r(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 1271
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1272
    iget-object v0, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkpv;)Lkpv;

    .line 1273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1274
    :goto_1
    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1275
    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpz;

    .line 1276
    invoke-virtual {v0}, Lkpz;->a()Lkqa;

    move-result-object v4

    invoke-virtual {v4}, Lkqa;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmgh;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1277
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1280
    :cond_2
    iget-object v0, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->s(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lkpv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkpv;->a(Ljava/util/List;)V

    .line 1281
    iget-object v0, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Z)V

    .line 1286
    :goto_2
    iget-object v0, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->r(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 1283
    :cond_4
    iget-object v0, p0, Llha;->a:Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-static {v0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Z)V

    goto :goto_2
.end method
