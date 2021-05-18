.class public final enum Labs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Labs;

.field public static final enum CDB:Labs;

.field public static final enum COE:Labs;

.field public static final enum CORRETORA:Labs;

.field public static final enum FUNDS:Labs;

.field public static final enum LCA:Labs;

.field public static final enum LCI:Labs;

.field public static final enum PENSION:Labs;

.field public static final enum SAVINGS:Labs;


# instance fields
.field private code:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 9
    new-instance v0, Labs;

    const-string v1, "FUNDS"

    const/4 v2, 0x0

    const-string v3, "FUNDOS"

    invoke-direct {v0, v1, v2, v3, v5}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->FUNDS:Labs;

    .line 10
    new-instance v0, Labs;

    const-string v1, "SAVINGS"

    const-string v2, "POUPAN\u00c7A"

    invoke-direct {v0, v1, v5, v2, v6}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->SAVINGS:Labs;

    .line 11
    new-instance v0, Labs;

    const-string v1, "PENSION"

    const-string v2, "PREVID\u00caNCIA"

    invoke-direct {v0, v1, v6, v2, v7}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->PENSION:Labs;

    .line 12
    new-instance v0, Labs;

    const-string v1, "CDB"

    const-string v2, "CDB"

    invoke-direct {v0, v1, v7, v2, v8}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->CDB:Labs;

    .line 13
    new-instance v0, Labs;

    const-string v1, "LCI"

    const-string v2, "LCI"

    invoke-direct {v0, v1, v8, v2, v9}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->LCI:Labs;

    .line 14
    new-instance v0, Labs;

    const-string v1, "LCA"

    const-string v2, "LCA"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v9, v2, v3}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->LCA:Labs;

    .line 15
    new-instance v0, Labs;

    const-string v1, "COE"

    const/4 v2, 0x6

    const-string v3, "COE"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->COE:Labs;

    .line 16
    new-instance v0, Labs;

    const-string v1, "CORRETORA"

    const/4 v2, 0x7

    const-string v3, "CORRETORA"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Labs;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Labs;->CORRETORA:Labs;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Labs;

    const/4 v1, 0x0

    sget-object v2, Labs;->FUNDS:Labs;

    aput-object v2, v0, v1

    sget-object v1, Labs;->SAVINGS:Labs;

    aput-object v1, v0, v5

    sget-object v1, Labs;->PENSION:Labs;

    aput-object v1, v0, v6

    sget-object v1, Labs;->CDB:Labs;

    aput-object v1, v0, v7

    sget-object v1, Labs;->LCI:Labs;

    aput-object v1, v0, v8

    sget-object v1, Labs;->LCA:Labs;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Labs;->COE:Labs;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labs;->CORRETORA:Labs;

    aput-object v2, v0, v1

    sput-object v0, Labs;->$VALUES:[Labs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Labs;->name:Ljava/lang/String;

    .line 23
    iput p4, p0, Labs;->code:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labs;
    .locals 1

    .prologue
    .line 7
    const-class v0, Labs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labs;

    return-object v0
.end method

.method public static values()[Labs;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Labs;->$VALUES:[Labs;

    invoke-virtual {v0}, [Labs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labs;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Labs;->code:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Labs;->name:Ljava/lang/String;

    return-object v0
.end method
