.class public final Lbsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Request;
    .locals 2

    .prologue
    .line 543
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/login/LoginClient$Request;-><init>(Landroid/os/Parcel;Lbsf;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/LoginClient$Request;
    .locals 1

    .prologue
    .line 548
    new-array v0, p1, [Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lbsi;->a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lbsi;->a(I)[Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0
.end method
