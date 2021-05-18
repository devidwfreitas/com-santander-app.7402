.class public final Lcap;
.super Lcal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcal",
        "<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "Lcap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcal;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcap;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcap;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcap;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic d(Lcap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcap;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareContent;)Lcal;
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcap;->a(Lcom/facebook/share/model/ShareLinkContent;)Lcap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareLinkContent;)Lcap;
    .locals 2

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 197
    :goto_0
    return-object p0

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lcal;->a(Lcom/facebook/share/model/ShareContent;)Lcal;

    move-result-object v0

    check-cast v0, Lcap;

    .line 199
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcap;->a(Ljava/lang/String;)Lcap;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcap;->b(Landroid/net/Uri;)Lcap;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcap;->b(Ljava/lang/String;)Lcap;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcap;->c(Ljava/lang/String;)Lcap;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcap;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcap;->a:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcap;->a(Lcom/facebook/share/model/ShareLinkContent;)Lcap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcap;->b()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Lcap;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcap;->c:Landroid/net/Uri;

    .line 174
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcap;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Lcap;->b:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public b()Lcom/facebook/share/model/ShareLinkContent;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Lcap;Lcao;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcap;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    iput-object p1, p0, Lcap;->d:Ljava/lang/String;

    .line 184
    return-object p0
.end method
