.class public final enum Lbpv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbpv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbpv;

.field public static final enum PUBLISH:Lbpv;

.field public static final enum READ:Lbpv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lbpv;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lbpv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpv;->READ:Lbpv;

    .line 30
    new-instance v0, Lbpv;

    const-string v1, "PUBLISH"

    invoke-direct {v0, v1, v3}, Lbpv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbpv;->PUBLISH:Lbpv;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lbpv;

    sget-object v1, Lbpv;->READ:Lbpv;

    aput-object v1, v0, v2

    sget-object v1, Lbpv;->PUBLISH:Lbpv;

    aput-object v1, v0, v3

    sput-object v0, Lbpv;->$VALUES:[Lbpv;

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

.method public static valueOf(Ljava/lang/String;)Lbpv;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lbpv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbpv;

    return-object v0
.end method

.method public static values()[Lbpv;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lbpv;->$VALUES:[Lbpv;

    invoke-virtual {v0}, [Lbpv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpv;

    return-object v0
.end method
