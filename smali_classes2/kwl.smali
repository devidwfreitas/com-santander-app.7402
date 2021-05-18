.class public final enum Lkwl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkwl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkwl;

.field public static final enum AUDIO:Lkwl;

.field public static final enum JPG:Lkwl;

.field public static final enum PDF:Lkwl;

.field public static final enum PNG:Lkwl;


# instance fields
.field private nameFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lkwl;

    const-string v1, "JPG"

    const-string v2, "JPG"

    invoke-direct {v0, v1, v3, v2}, Lkwl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwl;->JPG:Lkwl;

    new-instance v0, Lkwl;

    const-string v1, "PNG"

    const-string v2, "PNG"

    invoke-direct {v0, v1, v4, v2}, Lkwl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwl;->PNG:Lkwl;

    new-instance v0, Lkwl;

    const-string v1, "PDF"

    const-string v2, "PDF"

    invoke-direct {v0, v1, v5, v2}, Lkwl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwl;->PDF:Lkwl;

    new-instance v0, Lkwl;

    const-string v1, "AUDIO"

    const-string v2, "AUDIO"

    invoke-direct {v0, v1, v6, v2}, Lkwl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkwl;->AUDIO:Lkwl;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lkwl;

    sget-object v1, Lkwl;->JPG:Lkwl;

    aput-object v1, v0, v3

    sget-object v1, Lkwl;->PNG:Lkwl;

    aput-object v1, v0, v4

    sget-object v1, Lkwl;->PDF:Lkwl;

    aput-object v1, v0, v5

    sget-object v1, Lkwl;->AUDIO:Lkwl;

    aput-object v1, v0, v6

    sput-object v0, Lkwl;->$VALUES:[Lkwl;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lkwl;->nameFile:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkwl;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lkwl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkwl;

    return-object v0
.end method

.method public static values()[Lkwl;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lkwl;->$VALUES:[Lkwl;

    invoke-virtual {v0}, [Lkwl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkwl;

    return-object v0
.end method


# virtual methods
.method public getNameFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lkwl;->nameFile:Ljava/lang/String;

    return-object v0
.end method

.method public setNameFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lkwl;->nameFile:Ljava/lang/String;

    .line 27
    return-void
.end method
