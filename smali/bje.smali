.class public final Lbje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/Profile;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/facebook/Profile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/Profile;-><init>(Landroid/os/Parcel;Lbjd;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/Profile;
    .locals 1

    .prologue
    .line 309
    new-array v0, p1, [Lcom/facebook/Profile;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lbje;->a(Landroid/os/Parcel;)Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lbje;->a(I)[Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method
