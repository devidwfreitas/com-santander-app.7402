.class Llpm;
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
        "Lktj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lloz;


# direct methods
.method constructor <init>(Lloz;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Llpm;->a:Lloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 415
    check-cast p1, Lktj;

    invoke-virtual {p0, p1}, Llpm;->a(Lktj;)V

    return-void
.end method

.method public a(Lktj;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 419
    sget-object v0, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v0, p1}, Lksq;->setGetPreporsalResp(Lktj;)V

    .line 421
    iget-object v0, p0, Llpm;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Llpm;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->m()Lktl;

    move-result-object v0

    invoke-virtual {v0}, Lktl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lktj;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktm;

    invoke-virtual {v0}, Lktm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v1, p0, Llpm;->a:Lloz;

    invoke-virtual {p1}, Lktj;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktm;

    invoke-virtual {v0}, Lktm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lloz;->a(Lloz;Ljava/lang/String;)V

    .line 423
    return-void
.end method
