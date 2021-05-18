.class public final enum Lmge;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmge;

.field public static final enum INSTANCE:Lmge;


# instance fields
.field private bankData:Lkum;

.field private codeNameBank:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lmge;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmge;->INSTANCE:Lmge;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lmge;

    sget-object v1, Lmge;->INSTANCE:Lmge;

    aput-object v1, v0, v2

    sput-object v0, Lmge;->$VALUES:[Lmge;

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

.method public static valueOf(Ljava/lang/String;)Lmge;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lmge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmge;

    return-object v0
.end method

.method public static values()[Lmge;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lmge;->$VALUES:[Lmge;

    invoke-virtual {v0}, [Lmge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmge;

    return-object v0
.end method


# virtual methods
.method public getBankData()Lkum;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmge;->bankData:Lkum;

    return-object v0
.end method

.method public getCodeNameBank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmge;->codeNameBank:Ljava/lang/String;

    return-object v0
.end method

.method public setBankData(Lkum;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lmge;->bankData:Lkum;

    .line 34
    return-void
.end method

.method public setCodeNameBank(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lmge;->codeNameBank:Ljava/lang/String;

    .line 22
    return-void
.end method
