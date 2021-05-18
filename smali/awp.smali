.class public final enum Lawp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lawp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lawp;

.field public static final enum None:Lawp;

.field public static final enum Strong:Lawp;

.field public static final enum Weak:Lawp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lawp;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lawp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp;->None:Lawp;

    .line 53
    new-instance v0, Lawp;

    const-string v1, "Weak"

    invoke-direct {v0, v1, v3}, Lawp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp;->Weak:Lawp;

    .line 54
    new-instance v0, Lawp;

    const-string v1, "Strong"

    invoke-direct {v0, v1, v4}, Lawp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp;->Strong:Lawp;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lawp;

    sget-object v1, Lawp;->None:Lawp;

    aput-object v1, v0, v2

    sget-object v1, Lawp;->Weak:Lawp;

    aput-object v1, v0, v3

    sget-object v1, Lawp;->Strong:Lawp;

    aput-object v1, v0, v4

    sput-object v0, Lawp;->$VALUES:[Lawp;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lawp;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lawp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lawp;

    return-object v0
.end method

.method public static values()[Lawp;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lawp;->$VALUES:[Lawp;

    invoke-virtual {v0}, [Lawp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawp;

    return-object v0
.end method
