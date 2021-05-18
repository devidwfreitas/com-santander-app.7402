.class public Llse;
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
        "Ljava/util/List",
        "<",
        "Lkuw;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Llse;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 718
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llse;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Llse;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Llse;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llse;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    :cond_2
    iget-object v0, p0, Llse;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->i(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 727
    iget-object v0, p0, Llse;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V

    goto :goto_0

    .line 729
    :cond_3
    iget-object v0, p0, Llse;->a:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V

    goto :goto_0
.end method
