.class public Lcat;
.super Lcal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcal",
        "<",
        "Lcom/facebook/share/model/ShareMediaContent;",
        "Lcat;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcal;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcat;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcat;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcat;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareContent;)Lcal;
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p0, p1}, Lcat;->a(Lcom/facebook/share/model/ShareMediaContent;)Lcat;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareMedia;)Lcat;
    .locals 2
    .param p1    # Lcom/facebook/share/model/ShareMedia;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 92
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lcbd;

    invoke-direct {v0}, Lcbd;-><init>()V

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v0, p1}, Lcbd;->a(Lcom/facebook/share/model/SharePhoto;)Lcbd;

    move-result-object v0

    invoke-virtual {v0}, Lcbd;->d()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 100
    :goto_0
    iget-object v1, p0, Lcat;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-object p0

    .line 94
    :cond_1
    instance-of v0, p1, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Lcbh;

    invoke-direct {v0}, Lcbh;-><init>()V

    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {v0, p1}, Lcbh;->a(Lcom/facebook/share/model/ShareVideo;)Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->b()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "medium must be either a SharePhoto or ShareVideo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/facebook/share/model/ShareMediaContent;)Lcat;
    .locals 2

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-object p0

    .line 132
    :cond_0
    invoke-super {p0, p1}, Lcal;->a(Lcom/facebook/share/model/ShareContent;)Lcal;

    move-result-object v0

    check-cast v0, Lcat;

    .line 133
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMediaContent;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcat;->b(Ljava/util/List;)Lcat;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p0, p1}, Lcat;->a(Lcom/facebook/share/model/ShareMediaContent;)Lcat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcat;->b()Lcom/facebook/share/model/ShareMediaContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)Lcat;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;)",
            "Lcat;"
        }
    .end annotation

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    .line 115
    invoke-virtual {p0, v0}, Lcat;->a(Lcom/facebook/share/model/ShareMedia;)Lcat;

    goto :goto_0

    .line 118
    :cond_0
    return-object p0
.end method

.method public b()Lcom/facebook/share/model/ShareMediaContent;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/share/model/ShareMediaContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMediaContent;-><init>(Lcat;Lcas;)V

    return-object v0
.end method

.method public c(Ljava/util/List;)Lcat;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;)",
            "Lcat;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcat;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    invoke-virtual {p0, p1}, Lcat;->b(Ljava/util/List;)Lcat;

    .line 146
    return-object p0
.end method
