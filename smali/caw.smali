.class public final Lcaw;
.super Lcbb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcbb",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphAction;",
        "Lcaw;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "og:type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcbb;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/share/model/ShareModel;)Lcau;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphAction;

    invoke-virtual {p0, p1}, Lcaw;->a(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)Lcaw;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 102
    invoke-virtual {p0, v0}, Lcaw;->a(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcaw;
    .locals 2

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-object p0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcbb;->a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcbb;

    move-result-object v0

    check-cast v0, Lcaw;

    .line 97
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphAction;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcaw;->a(Ljava/lang/String;)Lcaw;

    move-result-object p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcaw;
    .locals 1

    .prologue
    .line 81
    const-string v0, "og:type"

    invoke-virtual {p0, v0, p1}, Lcaw;->a(Ljava/lang/String;Ljava/lang/String;)Lcbb;

    .line 82
    return-object p0
.end method

.method public bridge synthetic a(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcbb;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphAction;

    invoke-virtual {p0, p1}, Lcaw;->a(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcaw;->b()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/facebook/share/model/ShareOpenGraphAction;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareOpenGraphAction;-><init>(Lcaw;Lcav;)V

    return-object v0
.end method
