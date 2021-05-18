.class public final enum Lkwi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkwi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkwi;

.field public static final enum EDIT:Lkwi;

.field public static final enum SEND:Lkwi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lkwi;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v2}, Lkwi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwi;->EDIT:Lkwi;

    new-instance v0, Lkwi;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v3}, Lkwi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwi;->SEND:Lkwi;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lkwi;

    sget-object v1, Lkwi;->EDIT:Lkwi;

    aput-object v1, v0, v2

    sget-object v1, Lkwi;->SEND:Lkwi;

    aput-object v1, v0, v3

    sput-object v0, Lkwi;->$VALUES:[Lkwi;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkwi;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lkwi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkwi;

    return-object v0
.end method

.method public static values()[Lkwi;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lkwi;->$VALUES:[Lkwi;

    invoke-virtual {v0}, [Lkwi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkwi;

    return-object v0
.end method
