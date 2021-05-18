.class public Llqc;
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
        "Lkuh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Llqc;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Lkuh;

    invoke-virtual {p0, p1}, Llqc;->a(Lkuh;)V

    return-void
.end method

.method public a(Lkuh;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Llqc;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Llqc;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-virtual {p1}, Lkuh;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Llqc;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V

    goto :goto_0
.end method
