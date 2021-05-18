.class Llny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llnw;


# direct methods
.method constructor <init>(Llnw;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Llny;->a:Llnw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    invoke-static {}, Lloz;->a()Lloz;

    move-result-object v0

    .line 356
    iget-object v1, p0, Llny;->a:Llnw;

    iget-object v1, v1, Llnw;->a:Llnt;

    invoke-static {v1}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v1

    const-string v2, "contract-summary-step-tag"

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Llny;->a:Llnw;

    iget-object v0, v0, Llnw;->a:Llnt;

    invoke-static {v0}, Llnt;->e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    sget-object v1, Lmfn;->COMPLETED_GREEN:Lmfn;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 358
    return-void
.end method
