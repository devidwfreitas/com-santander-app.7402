.class public final enum Lclo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lclo;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum DOUBLECLICK_CONVERSION:Lclo;

.field public static final enum GOOGLE_CONVERSION:Lclo;

.field private static final synthetic a:[Lclo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lclo;

    const-string v1, "GOOGLE_CONVERSION"

    invoke-direct {v0, v1, v2}, Lclo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lclo;->GOOGLE_CONVERSION:Lclo;

    .line 28
    new-instance v0, Lclo;

    const-string v1, "DOUBLECLICK_CONVERSION"

    invoke-direct {v0, v1, v3}, Lclo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lclo;->DOUBLECLICK_CONVERSION:Lclo;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lclo;

    sget-object v1, Lclo;->GOOGLE_CONVERSION:Lclo;

    aput-object v1, v0, v2

    sget-object v1, Lclo;->DOUBLECLICK_CONVERSION:Lclo;

    aput-object v1, v0, v3

    sput-object v0, Lclo;->a:[Lclo;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lclo;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lclo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lclo;

    return-object v0
.end method

.method public static values()[Lclo;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lclo;->a:[Lclo;

    invoke-virtual {v0}, [Lclo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclo;

    return-object v0
.end method
