.class public final enum Lapu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lapu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapu;

.field public static final enum AgentJoined:Lapu;

.field public static final enum AgentLeft:Lapu;

.field public static final enum FileTransfer:Lapu;

.field public static final enum SessionDisconnected:Lapu;

.field public static final enum TextMessageSent:Lapu;

.field public static final enum TypingStarted:Lapu;

.field public static final enum TypingStopped:Lapu;


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
    new-instance v0, Lapu;

    const-string v1, "TypingStarted"

    const-string v2, "TypingStarted"

    invoke-direct {v0, v1, v4, v2}, Lapu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapu;->TypingStarted:Lapu;

    .line 13
    new-instance v0, Lapu;

    const-string v1, "TypingStopped"

    const-string v2, "TypingStopped"

    invoke-direct {v0, v1, v5, v2}, Lapu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapu;->TypingStopped:Lapu;

    .line 14
    new-instance v0, Lapu;

    const-string v1, "TextMessageSent"

    const-string v2, "TextMessageSent"

    invoke-direct {v0, v1, v6, v2}, Lapu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapu;->TextMessageSent:Lapu;

    .line 15
    new-instance v0, Lapu;

    const-string v1, "AgentJoined"

    const-string v2, "Joined"

    invoke-direct {v0, v1, v7, v2}, Lapu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapu;->AgentJoined:Lapu;

    .line 16
    new-instance v0, Lapu;

    const-string v1, "AgentLeft"

    const-string v2, "Left"

    invoke-direct {v0, v1, v8, v2}, Lapu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapu;->AgentLeft:Lapu;

    .line 17
    new-instance v0, Lapu;

    const-string v1, "SessionDisconnected"

    const/4 v2, 0x5

    const-string v3, "SessionDisconnected"

    invoke-direct {v0, v1, v2, v3}, Lapu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapu;->SessionDisconnected:Lapu;

    .line 19
    new-instance v0, Lapu;

    const-string v1, "FileTransfer"

    const/4 v2, 0x6

    const-string v3, "FileTransfer"

    invoke-direct {v0, v1, v2, v3}, Lapu;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapu;->FileTransfer:Lapu;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lapu;

    sget-object v1, Lapu;->TypingStarted:Lapu;

    aput-object v1, v0, v4

    sget-object v1, Lapu;->TypingStopped:Lapu;

    aput-object v1, v0, v5

    sget-object v1, Lapu;->TextMessageSent:Lapu;

    aput-object v1, v0, v6

    sget-object v1, Lapu;->AgentJoined:Lapu;

    aput-object v1, v0, v7

    sget-object v1, Lapu;->AgentLeft:Lapu;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lapu;->SessionDisconnected:Lapu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lapu;->FileTransfer:Lapu;

    aput-object v2, v0, v1

    sput-object v0, Lapu;->$VALUES:[Lapu;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lapu;->value:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapu;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lapu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lapu;

    return-object v0
.end method

.method public static values()[Lapu;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lapu;->$VALUES:[Lapu;

    invoke-virtual {v0}, [Lapu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapu;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lapu;->value:Ljava/lang/String;

    return-object v0
.end method
