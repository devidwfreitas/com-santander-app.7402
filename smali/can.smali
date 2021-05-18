.class public Lcan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcau",
        "<",
        "Lcom/facebook/share/model/ShareHashtag;",
        "Lcan;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcan;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcan;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcan;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/facebook/share/model/ShareHashtag;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareHashtag;

    .line 104
    invoke-virtual {p0, v0}, Lcan;->a(Lcom/facebook/share/model/ShareHashtag;)Lcan;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareHashtag;)Lcan;
    .locals 1

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareHashtag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcan;->a(Ljava/lang/String;)Lcan;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcan;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcan;->a:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 73
    check-cast p1, Lcom/facebook/share/model/ShareHashtag;

    invoke-virtual {p0, p1}, Lcan;->a(Lcom/facebook/share/model/ShareHashtag;)Lcan;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcan;->c()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/facebook/share/model/ShareHashtag;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/facebook/share/model/ShareHashtag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareHashtag;-><init>(Lcan;Lcam;)V

    return-object v0
.end method
