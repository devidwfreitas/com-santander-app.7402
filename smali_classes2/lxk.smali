.class Llxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxk;


# instance fields
.field final synthetic a:Llxc;


# direct methods
.method constructor <init>(Llxc;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Llxk;->a:Llxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Llxk;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Llxk;->a:Llxc;

    invoke-static {v0}, Llxc;->a(Llxc;)Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->b()Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0
.end method
