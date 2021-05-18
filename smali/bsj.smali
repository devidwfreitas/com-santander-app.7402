.class public final Lbsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Result;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/login/LoginClient$Result;-><init>(Landroid/os/Parcel;Lbsf;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/LoginClient$Result;
    .locals 1

    .prologue
    .line 651
    new-array v0, p1, [Lcom/facebook/login/LoginClient$Result;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lbsj;->a(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lbsj;->a(I)[Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    return-object v0
.end method
