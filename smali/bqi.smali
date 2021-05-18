.class public final enum Lbqi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbqi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbqi;

.field public static final enum PUBLISH:Lbqi;

.field public static final enum READ:Lbqi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lbqi;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lbqi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbqi;->READ:Lbqi;

    .line 30
    new-instance v0, Lbqi;

    const-string v1, "PUBLISH"

    invoke-direct {v0, v1, v3}, Lbqi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbqi;->PUBLISH:Lbqi;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lbqi;

    sget-object v1, Lbqi;->READ:Lbqi;

    aput-object v1, v0, v2

    sget-object v1, Lbqi;->PUBLISH:Lbqi;

    aput-object v1, v0, v3

    sput-object v0, Lbqi;->$VALUES:[Lbqi;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbqi;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lbqi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbqi;

    return-object v0
.end method

.method public static values()[Lbqi;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lbqi;->$VALUES:[Lbqi;

    invoke-virtual {v0}, [Lbqi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbqi;

    return-object v0
.end method
