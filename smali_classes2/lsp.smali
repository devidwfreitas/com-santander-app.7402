.class public Llsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lltt;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILkus;)V
    .locals 4

    .prologue
    .line 611
    invoke-virtual {p2}, Lkus;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lkus;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    const-string v1, "Seguros_Sinistro_Acionar_Documentacao_Acao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Informativo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    iget-object v0, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {p2}, Llyh;->a(Lkus;)Llyh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Llyh;)Llyh;

    .line 618
    iget-object v0, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Llyh;

    move-result-object v0

    iget-object v1, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "document-info"

    invoke-virtual {v0, v1, v2}, Llyh;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public b(ILkus;)V
    .locals 4

    .prologue
    .line 625
    invoke-virtual {p2}, Lkus;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lkus;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    const-string v1, "Seguros_Sinistro_Acionar_Documentacao_Acao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capturar_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    const-class v2, Lcom/santander/app/seguros/ui/sinister/activities/ScanDocumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    iget-object v1, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v1, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;I)I

    .line 634
    iget-object v1, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    const/16 v2, 0x1642

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 635
    return-void
.end method

.method public c(ILkus;)V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;I)I

    .line 640
    iget-object v0, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0, p2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)V

    .line 642
    return-void
.end method

.method public d(ILkus;)V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;I)I

    .line 647
    iget-object v0, p0, Llsp;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0, p2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Lkus;)V

    .line 649
    return-void
.end method
