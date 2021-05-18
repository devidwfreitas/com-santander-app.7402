.class public Llqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Llqf;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Llqf;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    iget-object v1, p0, Llqf;->a:Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;)Lmli;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;Lmli;)V

    .line 324
    return-void
.end method
