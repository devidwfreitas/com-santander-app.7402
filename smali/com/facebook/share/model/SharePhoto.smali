.class public final Lcom/facebook/share/model/SharePhoto;
.super Lcom/facebook/share/model/ShareMedia;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/net/Uri;

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcbc;

    invoke-direct {v0}, Lcbc;-><init>()V

    sput-object v0, Lcom/facebook/share/model/SharePhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Landroid/os/Parcel;)V

    .line 53
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->a:Landroid/graphics/Bitmap;

    .line 54
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->c:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->d:Ljava/lang/String;

    .line 57
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcbd;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMedia;-><init>(Lcaq;)V

    .line 45
    invoke-static {p1}, Lcbd;->a(Lcbd;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->a:Landroid/graphics/Bitmap;

    .line 46
    invoke-static {p1}, Lcbd;->b(Lcbd;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/net/Uri;

    .line 47
    invoke-static {p1}, Lcbd;->c(Lcbd;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->c:Z

    .line 48
    invoke-static {p1}, Lcbd;->d(Lcbd;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhoto;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public synthetic constructor <init>(Lcbd;Lcbc;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/share/model/SharePhoto;-><init>(Lcbd;)V

    return-void
.end method


# virtual methods
.method public b()Lcar;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcar;->PHOTO:Lcar;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/share/model/SharePhoto;->c:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->d:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareMedia;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    iget-object v1, p0, Lcom/facebook/share/model/SharePhoto;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v1, p0, Lcom/facebook/share/model/SharePhoto;->b:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-boolean v1, p0, Lcom/facebook/share/model/SharePhoto;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-object v0, p0, Lcom/facebook/share/model/SharePhoto;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return-void
.end method
