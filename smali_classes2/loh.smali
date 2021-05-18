.class Lloh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lloc;


# direct methods
.method constructor <init>(Lloc;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lloh;->a:Lloc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Lloz;->a()Lloz;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lloh;->a:Lloc;

    invoke-static {v1}, Lloc;->b(Lloc;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-string v2, "contract-summary-step-tag"

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lloh;->a:Lloc;

    invoke-static {v0}, Lloc;->b(Lloc;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    sget-object v1, Lmfn;->COMPLETED_GREEN:Lmfn;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 194
    return-void
.end method
