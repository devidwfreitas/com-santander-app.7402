.class public final enum Ljsy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljsy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljsy;

.field public static final enum CARTOES:Ljsy;

.field public static final enum CONTAS:Ljsy;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Ljsy;

    const-string v1, "CONTAS"

    invoke-direct {v0, v1, v2, v2}, Ljsy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljsy;->CONTAS:Ljsy;

    .line 13
    new-instance v0, Ljsy;

    const-string v1, "CARTOES"

    invoke-direct {v0, v1, v3, v3}, Ljsy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljsy;->CARTOES:Ljsy;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljsy;

    sget-object v1, Ljsy;->CONTAS:Ljsy;

    aput-object v1, v0, v2

    sget-object v1, Ljsy;->CARTOES:Ljsy;

    aput-object v1, v0, v3

    sput-object v0, Ljsy;->$VALUES:[Ljsy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Ljsy;->id:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljsy;
    .locals 1

    .prologue
    .line 11
    const-class v0, Ljsy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljsy;

    return-object v0
.end method

.method public static values()[Ljsy;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Ljsy;->$VALUES:[Ljsy;

    invoke-virtual {v0}, [Ljsy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljsy;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Ljsy;->id:I

    return v0
.end method
