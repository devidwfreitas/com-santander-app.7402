.class final Lcom/datami/smi/h/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static final b:[B

.field private static c:I


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x47

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/datami/smi/h/e;->b:[B

    const/16 v0, 0x6e

    sput v0, Lcom/datami/smi/h/e;->c:I

    return-void

    :array_0
    .array-data 1
        0x11t
        0x23t
        0x2et
        -0x34t
        -0x11t
        -0x3t
        0x3at
        -0x3et
        -0xdt
        -0x5t
        0x3t
        -0xat
        0x2t
        0x32t
        -0x38t
        -0x12t
        0x5t
        -0x13t
        -0x2t
        0x1t
        0x0t
        0x31t
        -0x3et
        -0xbt
        -0xbt
        0x40t
        -0x38t
        -0x8t
        -0x14t
        0x40t
        -0x40t
        0x0t
        -0x6t
        -0xet
        -0xbt
        0x6t
        -0x2t
        -0x8t
        -0x1t
        -0x12t
        0x3ft
        -0x40t
        -0xat
        -0xbt
        0xat
        -0x12t
        -0x1t
        0x8t
        -0x10t
        0x39t
        -0x20t
        0x3t
        -0x28t
        -0x17t
        0xct
        -0x12t
        -0x7t
        0x6t
        -0xft
        0x5t
        -0xat
        0x2t
        0x19t
        -0x20t
        0xct
        -0x17t
        -0x12t
        -0x9t
        0x8t
        0x1t
        -0x7t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/datami/smi/h/e;->a:Landroid/os/IBinder;

    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x63

    sget-object v6, Lcom/datami/smi/h/e;->b:[B

    new-instance v7, Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v3, v1, 0x44

    mul-int/lit8 v1, p0, 0x3

    rsub-int/lit8 v1, v1, 0x3

    new-array v2, v3, [B

    add-int/lit8 v8, v3, -0x1

    if-nez v6, :cond_1

    move v3, v4

    move v5, v1

    :goto_0
    neg-int v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x5

    :goto_1
    int-to-byte v0, v1

    aput-byte v0, v2, v3

    add-int/lit8 v5, v5, 0x1

    if-ne v3, v8, :cond_0

    invoke-direct {v7, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object v7

    :cond_0
    aget-byte v0, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    sget-object v0, Lcom/datami/smi/h/e;->b:[B

    const/16 v3, 0x14

    aget-byte v0, v0, v3

    invoke-static {v0, v0, v0}, Lcom/datami/smi/h/e;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/datami/smi/h/e;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/datami/smi/h/e;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    sget-object v4, Lcom/datami/smi/h/e;->b:[B

    const/16 v5, 0x14

    aget-byte v4, v4, v5

    invoke-static {v4, v4, v4}, Lcom/datami/smi/h/e;->a(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/datami/smi/h/e;->a:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
