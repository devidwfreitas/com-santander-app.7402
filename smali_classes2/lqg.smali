.class public Llqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Llqg;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 330
    if-eqz p2, :cond_0

    .line 331
    iget-object v0, p0, Llqg;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    iget-object v1, p0, Llqg;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lmli;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Lmli;)V

    .line 332
    :cond_0
    return-void
.end method
