.class public final Lcae;
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
        "Lcom/facebook/share/model/AppInviteContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/share/model/AppInviteContent;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/facebook/share/model/AppInviteContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/share/model/AppInviteContent;
    .locals 1

    .prologue
    .line 123
    new-array v0, p1, [Lcom/facebook/share/model/AppInviteContent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcae;->a(Landroid/os/Parcel;)Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcae;->a(I)[Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method
