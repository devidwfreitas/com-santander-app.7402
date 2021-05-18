.class public Llqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Llqj;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    check-cast p1, Lmli;

    .line 394
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lmkq;

    invoke-direct {v0}, Lmkq;-><init>()V

    .line 397
    const-string v1, "Ver todos os bancos"

    invoke-virtual {v0, v1}, Lmkq;->b(Ljava/lang/String;)V

    .line 398
    const-string v1, "99999"

    invoke-virtual {v0, v1}, Lmkq;->a(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lmli;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Llqj;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Lmli;)Lmli;

    goto :goto_0
.end method
