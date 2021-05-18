.class Llpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmbl;


# instance fields
.field final synthetic a:Llpa;


# direct methods
.method constructor <init>(Llpa;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Llpb;->a:Llpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Llpb;->a:Llpa;

    iget-object v0, v0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhz;->a(Ljava/lang/Integer;)V

    .line 208
    return-void
.end method

.method public a(Lkql;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Llpb;->a:Llpa;

    iget-object v0, v0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmhz;->a(Lkql;)V

    .line 198
    return-void
.end method

.method public a(Lksd;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Llpb;->a:Llpa;

    iget-object v0, v0, Llpa;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmhz;->a(Lksd;)V

    .line 203
    return-void
.end method
