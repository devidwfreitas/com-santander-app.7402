.class public final Lcas;
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
        "Lcom/facebook/share/model/ShareMediaContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMediaContent;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/share/model/ShareMediaContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareMediaContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/share/model/ShareMediaContent;
    .locals 1

    .prologue
    .line 73
    new-array v0, p1, [Lcom/facebook/share/model/ShareMediaContent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcas;->a(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMediaContent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcas;->a(I)[Lcom/facebook/share/model/ShareMediaContent;

    move-result-object v0

    return-object v0
.end method
