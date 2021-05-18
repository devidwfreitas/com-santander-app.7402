.class public final Lcbd;
.super Lcaq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcaq",
        "<",
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcbd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/net/Uri;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcaq;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcbd;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcbd;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic b(Lcbd;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcbd;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public static b(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/share/model/ShareMedia;

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 223
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    aput-object v0, v2, v1

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, v2, p1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 226
    return-void
.end method

.method public static c(Landroid/os/Parcel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p0}, Lcbd;->a(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    .line 236
    instance-of v3, v0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v3, :cond_0

    .line 237
    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    return-object v1
.end method

.method public static synthetic c(Lcbd;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcbd;->c:Z

    return v0
.end method

.method public static synthetic d(Lcbd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcbd;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareMedia;)Lcaq;
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcbd;->a(Lcom/facebook/share/model/SharePhoto;)Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcbd;->a(Lcom/facebook/share/model/SharePhoto;)Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcbd;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 142
    iput-object p1, p0, Lcbd;->a:Landroid/graphics/Bitmap;

    .line 143
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcbd;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 153
    iput-object p1, p0, Lcbd;->b:Landroid/net/Uri;

    .line 154
    return-object p0
.end method

.method public a(Lcom/facebook/share/model/SharePhoto;)Lcbd;
    .locals 2

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 200
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcaq;->a(Lcom/facebook/share/model/ShareMedia;)Lcaq;

    move-result-object v0

    check-cast v0, Lcbd;

    .line 201
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbd;->a(Landroid/graphics/Bitmap;)Lcbd;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbd;->a(Landroid/net/Uri;)Lcbd;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcbd;->a(Z)Lcbd;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbd;->a(Ljava/lang/String;)Lcbd;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcbd;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    iput-object p1, p0, Lcbd;->d:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public a(Z)Lcbd;
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lcbd;->c:Z

    .line 165
    return-object p0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcbd;->d()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcbd;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)Lcbd;
    .locals 1

    .prologue
    .line 209
    const-class v0, Lcom/facebook/share/model/SharePhoto;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 209
    invoke-virtual {p0, v0}, Lcbd;->a(Lcom/facebook/share/model/SharePhoto;)Lcbd;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcbd;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Lcom/facebook/share/model/SharePhoto;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/facebook/share/model/SharePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcbd;Lcbc;)V

    return-object v0
.end method
