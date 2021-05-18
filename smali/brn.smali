.class public final enum Lbrn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbrn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbrn;

.field public static final enum EVERYONE:Lbrn;

.field public static final enum FRIENDS:Lbrn;

.field public static final enum NONE:Lbrn;

.field public static final enum ONLY_ME:Lbrn;


# instance fields
.field private final nativeProtocolAudience:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lbrn;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lbrn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbrn;->NONE:Lbrn;

    .line 40
    new-instance v0, Lbrn;

    const-string v1, "ONLY_ME"

    const-string v2, "only_me"

    invoke-direct {v0, v1, v4, v2}, Lbrn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbrn;->ONLY_ME:Lbrn;

    .line 45
    new-instance v0, Lbrn;

    const-string v1, "FRIENDS"

    const-string v2, "friends"

    invoke-direct {v0, v1, v5, v2}, Lbrn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbrn;->FRIENDS:Lbrn;

    .line 50
    new-instance v0, Lbrn;

    const-string v1, "EVERYONE"

    const-string v2, "everyone"

    invoke-direct {v0, v1, v6, v2}, Lbrn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbrn;->EVERYONE:Lbrn;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lbrn;

    sget-object v1, Lbrn;->NONE:Lbrn;

    aput-object v1, v0, v3

    sget-object v1, Lbrn;->ONLY_ME:Lbrn;

    aput-object v1, v0, v4

    sget-object v1, Lbrn;->FRIENDS:Lbrn;

    aput-object v1, v0, v5

    sget-object v1, Lbrn;->EVERYONE:Lbrn;

    aput-object v1, v0, v6

    sput-object v0, Lbrn;->$VALUES:[Lbrn;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lbrn;->nativeProtocolAudience:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbrn;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbrn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbrn;

    return-object v0
.end method

.method public static values()[Lbrn;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbrn;->$VALUES:[Lbrn;

    invoke-virtual {v0}, [Lbrn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbrn;

    return-object v0
.end method


# virtual methods
.method public getNativeProtocolAudience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbrn;->nativeProtocolAudience:Ljava/lang/String;

    return-object v0
.end method
