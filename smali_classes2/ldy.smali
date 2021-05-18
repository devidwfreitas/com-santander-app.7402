.class public Lldy;
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
        "Lkpv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lldy;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Lkpv;

    invoke-virtual {p0, p1}, Lldy;->a(Lkpv;)V

    return-void
.end method

.method public a(Lkpv;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lldy;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lldy;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    iget-object v2, p0, Lldy;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/util/List;)Ljava/util/List;

    .line 211
    iget-object v0, p0, Lldy;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    iget-object v1, p0, Lldy;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lldy;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
