.class public final Lcbj;
.super Lcal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcal",
        "<",
        "Lcom/facebook/share/model/ShareVideoContent;",
        "Lcbj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/share/model/SharePhoto;

.field private d:Lcom/facebook/share/model/ShareVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcal;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcbj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcbj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcbj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcbj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcbj;)Lcom/facebook/share/model/SharePhoto;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcbj;->c:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method public static synthetic d(Lcbj;)Lcom/facebook/share/model/ShareVideo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcbj;->d:Lcom/facebook/share/model/ShareVideo;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareContent;)Lcal;
    .locals 1

    .prologue
    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcbj;->a(Lcom/facebook/share/model/ShareVideoContent;)Lcbj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcbj;->a(Lcom/facebook/share/model/ShareVideoContent;)Lcbj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)Lcbj;
    .locals 1
    .param p1    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    iput-object v0, p0, Lcbj;->c:Lcom/facebook/share/model/SharePhoto;

    .line 161
    return-object p0

    .line 157
    :cond_0
    new-instance v0, Lcbd;

    invoke-direct {v0}, Lcbd;-><init>()V

    .line 160
    invoke-virtual {v0, p1}, Lcbd;->a(Lcom/facebook/share/model/SharePhoto;)Lcbd;

    move-result-object v0

    invoke-virtual {v0}, Lcbd;->d()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/share/model/ShareVideo;)Lcbj;
    .locals 1
    .param p1    # Lcom/facebook/share/model/ShareVideo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Lcbh;

    invoke-direct {v0}, Lcbh;-><init>()V

    invoke-virtual {v0, p1}, Lcbh;->a(Lcom/facebook/share/model/ShareVideo;)Lcbh;

    move-result-object v0

    invoke-virtual {v0}, Lcbh;->b()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    iput-object v0, p0, Lcbj;->d:Lcom/facebook/share/model/ShareVideo;

    goto :goto_0
.end method

.method public a(Lcom/facebook/share/model/ShareVideoContent;)Lcbj;
    .locals 2

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-object p0

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lcal;->a(Lcom/facebook/share/model/ShareContent;)Lcal;

    move-result-object v0

    check-cast v0, Lcbj;

    .line 190
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbj;->a(Ljava/lang/String;)Lcbj;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbj;->b(Ljava/lang/String;)Lcbj;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->c()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbj;->a(Lcom/facebook/share/model/SharePhoto;)Lcbj;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->d()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbj;->a(Lcom/facebook/share/model/ShareVideo;)Lcbj;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcbj;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    iput-object p1, p0, Lcbj;->a:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcbj;->b()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcbj;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 147
    iput-object p1, p0, Lcbj;->b:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public b()Lcom/facebook/share/model/ShareVideoContent;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/facebook/share/model/ShareVideoContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareVideoContent;-><init>(Lcbj;Lcbi;)V

    return-object v0
.end method
