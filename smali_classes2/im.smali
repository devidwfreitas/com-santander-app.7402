.class public final enum Lim;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lim;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim;

.field public static final enum DELETE:Lim;

.field public static final enum GET:Lim;

.field public static final enum POST:Lim;

.field public static final enum PUT:Lim;


# instance fields
.field private final httpType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lim;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lim;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim;->GET:Lim;

    .line 9
    new-instance v0, Lim;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lim;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim;->POST:Lim;

    .line 10
    new-instance v0, Lim;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v5, v2}, Lim;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim;->DELETE:Lim;

    .line 11
    new-instance v0, Lim;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v6, v2}, Lim;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lim;->PUT:Lim;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lim;

    sget-object v1, Lim;->GET:Lim;

    aput-object v1, v0, v3

    sget-object v1, Lim;->POST:Lim;

    aput-object v1, v0, v4

    sget-object v1, Lim;->DELETE:Lim;

    aput-object v1, v0, v5

    sget-object v1, Lim;->PUT:Lim;

    aput-object v1, v0, v6

    sput-object v0, Lim;->$VALUES:[Lim;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lim;->httpType:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lim;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lim;

    return-object v0
.end method

.method public static values()[Lim;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lim;->$VALUES:[Lim;

    invoke-virtual {v0}, [Lim;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lim;->httpType:Ljava/lang/String;

    return-object v0
.end method
