.class Llom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llok;


# direct methods
.method constructor <init>(Llok;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Llom;->a:Llok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Lloz;->a()Lloz;

    move-result-object v0

    .line 229
    iget-object v1, p0, Llom;->a:Llok;

    iget-object v1, v1, Llok;->a:Lloi;

    invoke-static {v1}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-string v2, "contract-summary-step-tag"

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Llom;->a:Llok;

    iget-object v0, v0, Llok;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    sget-object v1, Lmfn;->COMPLETED_GREEN:Lmfn;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 231
    return-void
.end method
