.class public final enum Lapy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lapy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapy;

.field public static final enum FileAccepted:Lapy;

.field public static final enum FileDelivered:Lapy;

.field public static final enum FileReceived:Lapy;

.field public static final enum FileRejected:Lapy;

.field public static final enum FileTransferError:Lapy;

.field public static final enum FileTransferRequest:Lapy;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lapy;

    const-string v1, "FileTransferRequest"

    const-string v2, "FileTransferRequest"

    invoke-direct {v0, v1, v4, v2}, Lapy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapy;->FileTransferRequest:Lapy;

    .line 13
    new-instance v0, Lapy;

    const-string v1, "FileReceived"

    const-string v2, "FileReceived"

    invoke-direct {v0, v1, v5, v2}, Lapy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapy;->FileReceived:Lapy;

    .line 14
    new-instance v0, Lapy;

    const-string v1, "FileAccepted"

    const-string v2, "FileAccepted"

    invoke-direct {v0, v1, v6, v2}, Lapy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapy;->FileAccepted:Lapy;

    .line 15
    new-instance v0, Lapy;

    const-string v1, "FileDelivered"

    const-string v2, "FileDelivered"

    invoke-direct {v0, v1, v7, v2}, Lapy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapy;->FileDelivered:Lapy;

    .line 16
    new-instance v0, Lapy;

    const-string v1, "FileRejected"

    const-string v2, "FileRejected"

    invoke-direct {v0, v1, v8, v2}, Lapy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapy;->FileRejected:Lapy;

    .line 17
    new-instance v0, Lapy;

    const-string v1, "FileTransferError"

    const/4 v2, 0x5

    const-string v3, "FileTransferError"

    invoke-direct {v0, v1, v2, v3}, Lapy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapy;->FileTransferError:Lapy;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lapy;

    sget-object v1, Lapy;->FileTransferRequest:Lapy;

    aput-object v1, v0, v4

    sget-object v1, Lapy;->FileReceived:Lapy;

    aput-object v1, v0, v5

    sget-object v1, Lapy;->FileAccepted:Lapy;

    aput-object v1, v0, v6

    sget-object v1, Lapy;->FileDelivered:Lapy;

    aput-object v1, v0, v7

    sget-object v1, Lapy;->FileRejected:Lapy;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lapy;->FileTransferError:Lapy;

    aput-object v2, v0, v1

    sput-object v0, Lapy;->$VALUES:[Lapy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lapy;->value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapy;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lapy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lapy;

    return-object v0
.end method

.method public static values()[Lapy;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lapy;->$VALUES:[Lapy;

    invoke-virtual {v0}, [Lapy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapy;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lapy;->value:Ljava/lang/String;

    return-object v0
.end method
