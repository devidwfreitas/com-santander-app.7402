.class Llpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lloy;


# instance fields
.field final synthetic a:Llpf;


# direct methods
.method constructor <init>(Llpf;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Llpg;->a:Llpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Llpg;->a:Llpf;

    iget-object v0, v0, Llpf;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->e()V

    .line 731
    iget-object v0, p0, Llpg;->a:Llpf;

    iget-object v0, v0, Llpf;->a:Lloz;

    invoke-static {v0}, Lloz;->a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->d()V

    .line 732
    return-void
.end method
