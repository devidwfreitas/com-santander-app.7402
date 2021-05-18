.class public abstract Lcal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareContent;",
        "E:",
        "Lcal;",
        ">",
        "Ljava/lang/Object;",
        "Lcau",
        "<TP;TE;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/share/model/ShareHashtag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcal;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcal;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic b(Lcal;)Ljava/util/List;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcal;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcal;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcal;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcal;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcal;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcal;)Lcom/facebook/share/model/ShareHashtag;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcal;->e:Lcom/facebook/share/model/ShareHashtag;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcal;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcal;->a:Landroid/net/Uri;

    .line 155
    return-object p0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;)Lcal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TE;"
        }
    .end annotation

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 208
    :goto_0
    return-object p0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcal;->a(Landroid/net/Uri;)Lcal;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcal;->a(Ljava/util/List;)Lcal;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcal;->h(Ljava/lang/String;)Lcal;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcal;->i(Ljava/lang/String;)Lcal;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Lcom/facebook/share/model/ShareHashtag;)Lcal;
    .locals 0
    .param p1    # Lcom/facebook/share/model/ShareHashtag;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareHashtag;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lcal;->e:Lcom/facebook/share/model/ShareHashtag;

    .line 200
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcal;
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
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcal;->b:Ljava/util/List;

    .line 166
    return-object p0

    .line 165
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 139
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcal;->a(Lcom/facebook/share/model/ShareContent;)Lcal;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcal;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 176
    iput-object p1, p0, Lcal;->c:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcal;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcal;->d:Ljava/lang/String;

    .line 189
    return-object p0
.end method
