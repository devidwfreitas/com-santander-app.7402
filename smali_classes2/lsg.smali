.class public Llsg;
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
        "Lkwj;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Llsg;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iput-object p2, p0, Llsg;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 757
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Llsg;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkwj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Llsg;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Llsg;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llsg;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 764
    new-instance v0, Llsh;

    invoke-direct {v0, p0}, Llsh;-><init>(Llsg;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 772
    :cond_2
    iget-object v0, p0, Llsg;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    iget-object v1, p0, Llsg;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 774
    iget-object v1, p0, Llsg;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->i(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 775
    iget-object v1, p0, Llsg;->b:Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    invoke-static {v1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V

    goto :goto_0
.end method
