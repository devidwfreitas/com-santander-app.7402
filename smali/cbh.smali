.class public final Lcbh;
.super Lcaq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcaq",
        "<",
        "Lcom/facebook/share/model/ShareVideo;",
        "Lcbh;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcaq;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcbh;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcbh;->a:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareMedia;)Lcaq;
    .locals 1

    .prologue
    .line 86
    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p0, p1}, Lcbh;->a(Lcom/facebook/share/model/ShareVideo;)Lcbh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 86
    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p0, p1}, Lcbh;->a(Lcom/facebook/share/model/ShareVideo;)Lcbh;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcbh;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iput-object p1, p0, Lcbh;->a:Landroid/net/Uri;

    .line 96
    return-object p0
.end method

.method public a(Lcom/facebook/share/model/ShareVideo;)Lcbh;
    .locals 2

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcaq;->a(Lcom/facebook/share/model/ShareMedia;)Lcaq;

    move-result-object v0

    check-cast v0, Lcbh;

    .line 110
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcbh;->a(Landroid/net/Uri;)Lcbh;

    move-result-object p0

    goto :goto_0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcbh;->b()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)Lcbh;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/facebook/share/model/ShareVideo;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareVideo;

    .line 114
    invoke-virtual {p0, v0}, Lcbh;->a(Lcom/facebook/share/model/ShareVideo;)Lcbh;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/facebook/share/model/ShareVideo;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/facebook/share/model/ShareVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareVideo;-><init>(Lcbh;Lcbg;)V

    return-object v0
.end method
