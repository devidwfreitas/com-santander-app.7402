.class public final Lcom/facebook/share/model/AppGroupCreationContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/AppGroupCreationContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcab;

    invoke-direct {v0}, Lcab;-><init>()V

    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcac;

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->c:Lcac;

    .line 43
    return-void
.end method

.method private constructor <init>(Lcad;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcad;->a(Lcad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->a:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcad;->b(Lcad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->b:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcad;->c(Lcad;)Lcac;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->c:Lcac;

    .line 37
    return-void
.end method

.method public synthetic constructor <init>(Lcad;Lcab;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/share/model/AppGroupCreationContent;-><init>(Lcad;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcac;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->c:Lcac;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->c:Lcac;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    return-void
.end method
