.class public final Lbtb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/WebViewLoginMethodHandler;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/WebViewLoginMethodHandler;
    .locals 1

    .prologue
    .line 171
    new-array v0, p1, [Lcom/facebook/login/WebViewLoginMethodHandler;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lbtb;->a(Landroid/os/Parcel;)Lcom/facebook/login/WebViewLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lbtb;->a(I)[Lcom/facebook/login/WebViewLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method
