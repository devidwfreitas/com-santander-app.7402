.class public Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
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
            "Lbr/com/santander/uisdk/comprovante/SantanderComprovante;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I
    .annotation build Lbr/com/santander/uisdk/comprovante/SantanderComprovante$ComprovanteType;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lamf;

    invoke-direct {v0}, Lamf;-><init>()V

    sput-object v0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->a:I

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->d:Ljava/util/LinkedHashMap;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->a:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->a:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->b:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->c:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->d:Ljava/util/LinkedHashMap;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->e:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->f:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->a:I

    return v0
.end method

.method public a(I)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 0
    .param p1    # I
        .annotation build Lbr/com/santander/uisdk/comprovante/SantanderComprovante$ComprovanteType;
        .end annotation
    .end param

    .prologue
    .line 35
    iput p1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->a:I

    .line 36
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->b:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object p0
.end method

.method public a(Ljava/util/LinkedHashMap;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbr/com/santander/uisdk/comprovante/SantanderComprovante;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 56
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->c:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->e:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->f:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public d()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->d:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->f:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 104
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return-void
.end method
