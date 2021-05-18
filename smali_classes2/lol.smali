.class Llol;
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
    .line 220
    iput-object p1, p0, Llol;->a:Llok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Llol;->a:Llok;

    iget-object v0, v0, Llok;->a:Lloi;

    invoke-static {v0}, Lloi;->b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    sget-object v1, Lmfn;->COMPLETED_GREEN:Lmfn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 224
    return-void
.end method
