.class public final Lbrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/CustomTabLoginMethodHandler;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/CustomTabLoginMethodHandler;
    .locals 1

    .prologue
    .line 251
    new-array v0, p1, [Lcom/facebook/login/CustomTabLoginMethodHandler;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lbrm;->a(Landroid/os/Parcel;)Lcom/facebook/login/CustomTabLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lbrm;->a(I)[Lcom/facebook/login/CustomTabLoginMethodHandler;

    move-result-object v0

    return-object v0
.end method
