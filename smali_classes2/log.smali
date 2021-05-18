.class Llog;
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
    .line 183
    iput-object p1, p0, Llog;->a:Lloc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Llog;->a:Lloc;

    invoke-static {v0}, Lloc;->b(Lloc;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    sget-object v1, Lmfn;->COMPLETED_GREEN:Lmfn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 187
    return-void
.end method
