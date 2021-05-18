.class public final enum Lgnn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgnn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgnn;

.field public static final enum FINISHED:Lgnn;

.field public static final enum PENDING:Lgnn;

.field public static final enum RUNNING:Lgnn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    new-instance v0, Lgnn;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lgnn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnn;->PENDING:Lgnn;

    .line 265
    new-instance v0, Lgnn;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lgnn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnn;->RUNNING:Lgnn;

    .line 269
    new-instance v0, Lgnn;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lgnn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnn;->FINISHED:Lgnn;

    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Lgnn;

    sget-object v1, Lgnn;->PENDING:Lgnn;

    aput-object v1, v0, v2

    sget-object v1, Lgnn;->RUNNING:Lgnn;

    aput-object v1, v0, v3

    sget-object v1, Lgnn;->FINISHED:Lgnn;

    aput-object v1, v0, v4

    sput-object v0, Lgnn;->$VALUES:[Lgnn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgnn;
    .locals 1

    .prologue
    .line 257
    const-class v0, Lgnn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgnn;

    return-object v0
.end method

.method public static values()[Lgnn;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lgnn;->$VALUES:[Lgnn;

    invoke-virtual {v0}, [Lgnn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgnn;

    return-object v0
.end method
