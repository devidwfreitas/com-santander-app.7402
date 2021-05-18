.class public final enum Lgba;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgba;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Element;
    required = false
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgba;

.field public static final enum outra:Lgba;

.field public static final enum real:Lgba;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lgba;

    const-string v1, "real"

    invoke-direct {v0, v1, v2}, Lgba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgba;->real:Lgba;

    .line 25
    new-instance v0, Lgba;

    const-string v1, "outra"

    invoke-direct {v0, v1, v3}, Lgba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgba;->outra:Lgba;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lgba;

    sget-object v1, Lgba;->real:Lgba;

    aput-object v1, v0, v2

    sget-object v1, Lgba;->outra:Lgba;

    aput-object v1, v0, v3

    sput-object v0, Lgba;->$VALUES:[Lgba;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgba;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lgba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgba;

    return-object v0
.end method

.method public static values()[Lgba;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lgba;->$VALUES:[Lgba;

    invoke-virtual {v0}, [Lgba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgba;

    return-object v0
.end method
