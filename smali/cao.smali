.class public final Lcao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareLinkContent;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/share/model/ShareLinkContent;
    .locals 1

    .prologue
    .line 122
    new-array v0, p1, [Lcom/facebook/share/model/ShareLinkContent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcao;->a(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcao;->a(I)[Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method
