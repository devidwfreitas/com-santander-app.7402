.class public Llsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxa;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 687
    iget-object v0, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 688
    :cond_0
    new-instance v0, Lkut;

    invoke-direct {v0}, Lkut;-><init>()V

    .line 690
    invoke-virtual {v0, v3}, Lkut;->c(Z)V

    .line 691
    sget-object v1, Lkuu;->TO_VIEW:Lkuu;

    invoke-virtual {v0, v1}, Lkut;->a(Lkuu;)V

    .line 692
    sget-object v1, Lkuu;->TRASH:Lkuu;

    invoke-virtual {v0, v1}, Lkut;->b(Lkuu;)V

    .line 693
    invoke-virtual {v0, v3}, Lkut;->b(Z)V

    .line 694
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkut;->a(Z)V

    .line 696
    iget-object v1, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;

    move-result-object v1

    iget-object v2, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0, v3}, Lltm;->a(ILkut;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 669
    iget-object v0, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    :goto_0
    return-void

    .line 670
    :cond_0
    new-instance v1, Lkut;

    invoke-direct {v1}, Lkut;-><init>()V

    .line 672
    invoke-virtual {v1, v2}, Lkut;->c(Z)V

    .line 673
    sget-object v0, Lkuu;->GONE:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->a(Lkuu;)V

    .line 674
    sget-object v0, Lkuu;->CAMERA:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->b(Lkuu;)V

    .line 675
    invoke-virtual {v1, v2}, Lkut;->b(Z)V

    .line 676
    invoke-virtual {v1, v2}, Lkut;->a(Z)V

    .line 678
    iget-object v0, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkus;

    .line 679
    iget-object v2, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lkus;)Z

    .line 680
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lkus;->a(I)V

    .line 681
    invoke-virtual {v1, v0}, Lkut;->a(Lkus;)V

    .line 682
    iget-object v0, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;

    move-result-object v0

    iget-object v2, p0, Llsq;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lltm;->a(ILkut;Z)V

    goto :goto_0
.end method
