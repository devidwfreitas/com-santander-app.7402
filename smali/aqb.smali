.class public final enum Laqb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laqb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laqb;

.field public static final enum Agent:Laqb;

.field public static final enum External:Laqb;

.field public static final enum User:Laqb;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Laqb;

    const-string v1, "User"

    const-string v2, "CLIENT"

    invoke-direct {v0, v1, v3, v2}, Laqb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laqb;->User:Laqb;

    new-instance v0, Laqb;

    const-string v1, "Agent"

    const-string v2, "AGENT"

    invoke-direct {v0, v1, v4, v2}, Laqb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laqb;->Agent:Laqb;

    new-instance v0, Laqb;

    const-string v1, "External"

    const-string v2, "EXTERNAL"

    invoke-direct {v0, v1, v5, v2}, Laqb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laqb;->External:Laqb;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Laqb;

    sget-object v1, Laqb;->User:Laqb;

    aput-object v1, v0, v3

    sget-object v1, Laqb;->Agent:Laqb;

    aput-object v1, v0, v4

    sget-object v1, Laqb;->External:Laqb;

    aput-object v1, v0, v5

    sput-object v0, Laqb;->$VALUES:[Laqb;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Laqb;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laqb;
    .locals 1

    .prologue
    .line 10
    const-class v0, Laqb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laqb;

    return-object v0
.end method

.method public static values()[Laqb;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Laqb;->$VALUES:[Laqb;

    invoke-virtual {v0}, [Laqb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laqb;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Laqb;->value:Ljava/lang/String;

    return-object v0
.end method
