.class public Llsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Llsn;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llsn;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ConfirmationPaymentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    const-string v1, "sinister-code"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Llsn;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lkve;

    move-result-object v3

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    const-string v1, "details_certificate_key"

    iget-object v2, p0, Llsn;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Llsn;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 434
    return-void
.end method
