.class public Ljnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljni;


# instance fields
.field private a:Ljnc;

.field private b:Ljoh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->z()Ljnc;

    move-result-object v0

    iput-object v0, p0, Ljnk;->a:Ljnc;

    .line 25
    invoke-static {}, Ljoq;->a()Ljoh;

    move-result-object v0

    iput-object v0, p0, Ljnk;->b:Ljoh;

    .line 26
    return-void
.end method

.method private a(Lcom/santander/app/lojaonline/domain/LojaCampaign;I)Ljava/util/List;
    .locals 4
    .param p2    # I
        .annotation build Ljmz;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign;->f()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    .line 66
    invoke-virtual {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->c()I

    move-result v3

    if-ne v3, p2, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 71
    goto :goto_0
.end method

.method static synthetic a(Ljnk;Lcom/santander/app/lojaonline/domain/LojaCampaign;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljnk;->a(Lcom/santander/app/lojaonline/domain/LojaCampaign;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljnj;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Ljnk;->a:Ljnc;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljnb;

    const-string v1, "LojaHome is null"

    invoke-direct {v0, v1}, Ljnb;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljnj;->a(Ljnb;)V

    .line 58
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Ljnk;->b:Ljoh;

    iget-object v1, p0, Ljnk;->a:Ljnc;

    invoke-virtual {v1}, Ljnc;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljnl;

    invoke-direct {v2, p0, p1}, Ljnl;-><init>(Ljnk;Ljnj;)V

    invoke-interface {v0, v1, v2}, Ljoh;->a(Ljava/lang/String;Ljoi;)V

    goto :goto_0
.end method
