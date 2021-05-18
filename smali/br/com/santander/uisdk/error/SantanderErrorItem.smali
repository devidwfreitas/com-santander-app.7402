.class public Lbr/com/santander/uisdk/error/SantanderErrorItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbr/com/santander/uisdk/error/SantanderErrorItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lanl;

    invoke-direct {v0}, Lanl;-><init>()V

    sput-object v0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->a:I

    .line 21
    iput-object p2, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->c:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->d:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->a:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lanl;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lbr/com/santander/uisdk/error/SantanderErrorItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 58
    iget v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 62
    iput p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->a:I

    .line 63
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->d:Landroid/view/View$OnClickListener;

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->b:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->c:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lbr/com/santander/uisdk/error/SantanderErrorItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
