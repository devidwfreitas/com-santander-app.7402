.class public final Lcba;
.super Lcbb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbb",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphObject;",
        "Lcba;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcbb;-><init>()V

    .line 65
    const-string v0, "fbsdk:create_object"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcba;->a(Ljava/lang/String;Z)Lcbb;

    .line 66
    return-void
.end method


# virtual methods
.method a(Landroid/os/Parcel;)Lcba;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .line 74
    invoke-virtual {p0, v0}, Lcba;->a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcbb;

    move-result-object v0

    check-cast v0, Lcba;

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcba;->b()Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/facebook/share/model/ShareOpenGraphObject;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;-><init>(Lcba;Lcaz;)V

    return-object v0
.end method
