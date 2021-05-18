.class public Lcbf;
.super Lcal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcal",
        "<",
        "Lcom/facebook/share/model/SharePhotoContent;",
        "Lcbf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcal;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcbf;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcbf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcbf;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareContent;)Lcal;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p0, p1}, Lcbf;->a(Lcom/facebook/share/model/SharePhotoContent;)Lcbf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p0, p1}, Lcbf;->a(Lcom/facebook/share/model/SharePhotoContent;)Lcbf;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)Lcbf;
    .locals 2
    .param p1    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcbf;->a:Ljava/util/List;

    new-instance v1, Lcbd;

    invoke-direct {v1}, Lcbd;-><init>()V

    invoke-virtual {v1, p1}, Lcbd;->a(Lcom/facebook/share/model/SharePhoto;)Lcbd;

    move-result-object v1

    invoke-virtual {v1}, Lcbd;->d()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-object p0
.end method

.method public a(Lcom/facebook/share/model/SharePhotoContent;)Lcbf;
    .locals 2

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-object p0

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcal;->a(Lcom/facebook/share/model/ShareContent;)Lcal;

    move-result-object v0

    check-cast v0, Lcbf;

    .line 124
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbf;->b(Ljava/util/List;)Lcbf;

    move-result-object p0

    goto :goto_0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcbf;->b()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)Lcbf;
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
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)",
            "Lcbf;"
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 106
    invoke-virtual {p0, v0}, Lcbf;->a(Lcom/facebook/share/model/SharePhoto;)Lcbf;

    goto :goto_0

    .line 109
    :cond_0
    return-object p0
.end method

.method public b()Lcom/facebook/share/model/SharePhotoContent;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhotoContent;-><init>(Lcbf;Lcbe;)V

    return-object v0
.end method

.method public c(Ljava/util/List;)Lcbf;
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
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)",
            "Lcbf;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcbf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    invoke-virtual {p0, p1}, Lcbf;->b(Ljava/util/List;)Lcbf;

    .line 135
    return-object p0
.end method
