.class Llod;
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
        "Lkrv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lloc;


# direct methods
.method constructor <init>(Lloc;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Llod;->a:Lloc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lkrv;

    invoke-virtual {p0, p1}, Llod;->a(Lkrv;)V

    return-void
.end method

.method public a(Lkrv;)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Llod;->a:Lloc;

    invoke-virtual {p1}, Lkrv;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lloc;->a(Lloc;Ljava/util/List;)Ljava/util/List;

    .line 122
    iget-object v0, p0, Llod;->a:Lloc;

    invoke-static {v0}, Lloc;->b(Lloc;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    iget-object v1, p0, Llod;->a:Lloc;

    iget-object v2, p0, Llod;->a:Lloc;

    invoke-static {v2}, Lloc;->a(Lloc;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lloc;->b(Lloc;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhz;->b(Ljava/util/List;)V

    .line 123
    iget-object v0, p0, Llod;->a:Lloc;

    iget-object v1, p0, Llod;->a:Lloc;

    invoke-static {v1}, Lloc;->a(Lloc;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lloc;->c(Lloc;Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Llod;->a:Lloc;

    invoke-static {v0}, Lloc;->b(Lloc;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 126
    return-void
.end method
