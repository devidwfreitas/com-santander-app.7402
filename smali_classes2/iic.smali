.class public final enum Liic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Liic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Liic;

.field public static final enum FORMALIZACAO_AUTHORIZE_PROPOSAL:Liic;

.field public static final enum FORMALIZACAO_CANCEL_PROPOSAL:Liic;

.field public static final enum FORMALIZACAO_CHECK_PROPOSAL:Liic;

.field public static final enum FORMALIZACAO_FIND_PROPOSAL:Liic;

.field public static final enum FORMALIZACAO_FIND_PROPOSALS:Liic;

.field public static final enum FORMALIZACAO_REASONS_PROPOSAL:Liic;

.field public static final enum FORMALIZACAO_UPDATE_PROPOSAL:Liic;


# instance fields
.field private endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Liic;

    const-string v1, "FORMALIZACAO_CHECK_PROPOSAL"

    const-string v2, "omni-channel-proposal/v1/countProposal"

    invoke-direct {v0, v1, v4, v2}, Liic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Liic;->FORMALIZACAO_CHECK_PROPOSAL:Liic;

    .line 14
    new-instance v0, Liic;

    const-string v1, "FORMALIZACAO_FIND_PROPOSALS"

    const-string v2, "omni-channel-proposal/v1/findProposals"

    invoke-direct {v0, v1, v5, v2}, Liic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Liic;->FORMALIZACAO_FIND_PROPOSALS:Liic;

    .line 15
    new-instance v0, Liic;

    const-string v1, "FORMALIZACAO_FIND_PROPOSAL"

    const-string v2, "omni-channel-proposal/v1/findProposal"

    invoke-direct {v0, v1, v6, v2}, Liic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Liic;->FORMALIZACAO_FIND_PROPOSAL:Liic;

    .line 16
    new-instance v0, Liic;

    const-string v1, "FORMALIZACAO_AUTHORIZE_PROPOSAL"

    const-string v2, "omni-channel-proposal/v1/authorizeProposal"

    invoke-direct {v0, v1, v7, v2}, Liic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Liic;->FORMALIZACAO_AUTHORIZE_PROPOSAL:Liic;

    .line 17
    new-instance v0, Liic;

    const-string v1, "FORMALIZACAO_UPDATE_PROPOSAL"

    const-string v2, "omni-channel-proposal/v1/updateProposal"

    invoke-direct {v0, v1, v8, v2}, Liic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Liic;->FORMALIZACAO_UPDATE_PROPOSAL:Liic;

    .line 18
    new-instance v0, Liic;

    const-string v1, "FORMALIZACAO_REASONS_PROPOSAL"

    const/4 v2, 0x5

    const-string v3, "omni-channel-proposal/v1/reasons"

    invoke-direct {v0, v1, v2, v3}, Liic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Liic;->FORMALIZACAO_REASONS_PROPOSAL:Liic;

    .line 19
    new-instance v0, Liic;

    const-string v1, "FORMALIZACAO_CANCEL_PROPOSAL"

    const/4 v2, 0x6

    const-string v3, "omni-channel-proposal/v1/proposal/cancel"

    invoke-direct {v0, v1, v2, v3}, Liic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Liic;->FORMALIZACAO_CANCEL_PROPOSAL:Liic;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Liic;

    sget-object v1, Liic;->FORMALIZACAO_CHECK_PROPOSAL:Liic;

    aput-object v1, v0, v4

    sget-object v1, Liic;->FORMALIZACAO_FIND_PROPOSALS:Liic;

    aput-object v1, v0, v5

    sget-object v1, Liic;->FORMALIZACAO_FIND_PROPOSAL:Liic;

    aput-object v1, v0, v6

    sget-object v1, Liic;->FORMALIZACAO_AUTHORIZE_PROPOSAL:Liic;

    aput-object v1, v0, v7

    sget-object v1, Liic;->FORMALIZACAO_UPDATE_PROPOSAL:Liic;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Liic;->FORMALIZACAO_REASONS_PROPOSAL:Liic;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Liic;->FORMALIZACAO_CANCEL_PROPOSAL:Liic;

    aput-object v2, v0, v1

    sput-object v0, Liic;->$VALUES:[Liic;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Liic;->endpoint:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Liic;
    .locals 1

    .prologue
    .line 10
    const-class v0, Liic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Liic;

    return-object v0
.end method

.method public static values()[Liic;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Liic;->$VALUES:[Liic;

    invoke-virtual {v0}, [Liic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liic;

    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Liic;->endpoint:Ljava/lang/String;

    return-object v0
.end method
