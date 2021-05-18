.class public Lljd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lloy;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lljd;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p2, p0, Lljd;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lljd;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lljd;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 365
    :cond_0
    return-void
.end method
