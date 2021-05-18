.class public Llsr;
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
    .line 719
    iput-object p1, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 742
    :cond_0
    new-instance v1, Lkut;

    invoke-direct {v1}, Lkut;-><init>()V

    .line 744
    invoke-virtual {v1, v2}, Lkut;->c(Z)V

    .line 745
    sget-object v0, Lkuu;->GONE:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->a(Lkuu;)V

    .line 746
    sget-object v0, Lkuu;->CAMERA:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->b(Lkuu;)V

    .line 747
    invoke-virtual {v1, v2}, Lkut;->b(Z)V

    .line 748
    invoke-virtual {v1, v3}, Lkut;->a(Z)V

    .line 750
    iget-object v0, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkus;

    .line 751
    iget-object v2, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lkus;)Z

    .line 752
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lkus;->a(I)V

    .line 753
    invoke-virtual {v1, v0}, Lkut;->a(Lkus;)V

    .line 754
    iget-object v0, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;

    move-result-object v0

    iget-object v2, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    invoke-virtual {v0, v2, v1, v3}, Lltm;->a(ILkut;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 724
    :cond_0
    new-instance v1, Lkut;

    invoke-direct {v1}, Lkut;-><init>()V

    .line 726
    invoke-virtual {v1, v2}, Lkut;->c(Z)V

    .line 727
    sget-object v0, Lkuu;->GONE:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->a(Lkuu;)V

    .line 728
    sget-object v0, Lkuu;->CAMERA:Lkuu;

    invoke-virtual {v1, v0}, Lkut;->b(Lkuu;)V

    .line 729
    invoke-virtual {v1, v2}, Lkut;->b(Z)V

    .line 730
    invoke-virtual {v1, v2}, Lkut;->a(Z)V

    .line 732
    iget-object v0, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkus;

    .line 733
    iget-object v2, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->a(Lkus;)Z

    .line 734
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lkus;->a(I)V

    .line 735
    invoke-virtual {v1, v0}, Lkut;->a(Lkus;)V

    .line 736
    iget-object v0, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;

    move-result-object v0

    iget-object v2, p0, Llsr;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;->c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lltm;->a(ILkut;Z)V

    goto :goto_0
.end method
