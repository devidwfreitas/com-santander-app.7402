.class public final enum Llye;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llye;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llye;

.field public static final enum ADD:Llye;

.field public static final enum EDIT:Llye;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    new-instance v0, Llye;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Llye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llye;->ADD:Llye;

    new-instance v0, Llye;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3}, Llye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llye;->EDIT:Llye;

    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Llye;

    sget-object v1, Llye;->ADD:Llye;

    aput-object v1, v0, v2

    sget-object v1, Llye;->EDIT:Llye;

    aput-object v1, v0, v3

    sput-object v0, Llye;->$VALUES:[Llye;

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
    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llye;
    .locals 1

    .prologue
    .line 255
    const-class v0, Llye;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llye;

    return-object v0
.end method

.method public static values()[Llye;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Llye;->$VALUES:[Llye;

    invoke-virtual {v0}, [Llye;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llye;

    return-object v0
.end method
