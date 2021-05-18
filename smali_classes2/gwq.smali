.class public final enum Lgwq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgwq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgwq;

.field public static final enum acordoAbandono:Lgwq;

.field public static final enum cardCDB:Lgwq;

.field public static final enum carrinhoAbandonadoPDI:Lgwq;

.field public static final enum carrinhoCP:Lgwq;

.field public static final enum carrinhoPoupanca:Lgwq;

.field public static final enum creditounificado:Lgwq;

.field public static final enum emprestimo:Lgwq;

.field public static final enum formalizacao:Lgwq;

.field public static final enum investimento:Lgwq;

.field public static final enum link:Lgwq;

.field public static final enum lojaOnline:Lgwq;

.field public static final enum parcelamentoFatura:Lgwq;

.field public static final enum poupanca:Lgwq;

.field public static final enum tela:Lgwq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lgwq;

    const-string v1, "emprestimo"

    invoke-direct {v0, v1, v3}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->emprestimo:Lgwq;

    .line 12
    new-instance v0, Lgwq;

    const-string v1, "investimento"

    invoke-direct {v0, v1, v4}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->investimento:Lgwq;

    .line 13
    new-instance v0, Lgwq;

    const-string v1, "poupanca"

    invoke-direct {v0, v1, v5}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->poupanca:Lgwq;

    .line 14
    new-instance v0, Lgwq;

    const-string v1, "carrinhoPoupanca"

    invoke-direct {v0, v1, v6}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->carrinhoPoupanca:Lgwq;

    .line 15
    new-instance v0, Lgwq;

    const-string v1, "tela"

    invoke-direct {v0, v1, v7}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->tela:Lgwq;

    .line 16
    new-instance v0, Lgwq;

    const-string v1, "link"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->link:Lgwq;

    .line 17
    new-instance v0, Lgwq;

    const-string v1, "carrinhoCP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->carrinhoCP:Lgwq;

    .line 18
    new-instance v0, Lgwq;

    const-string v1, "parcelamentoFatura"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->parcelamentoFatura:Lgwq;

    .line 19
    new-instance v0, Lgwq;

    const-string v1, "cardCDB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->cardCDB:Lgwq;

    .line 20
    new-instance v0, Lgwq;

    const-string v1, "acordoAbandono"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->acordoAbandono:Lgwq;

    .line 21
    new-instance v0, Lgwq;

    const-string v1, "formalizacao"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->formalizacao:Lgwq;

    .line 22
    new-instance v0, Lgwq;

    const-string v1, "creditounificado"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->creditounificado:Lgwq;

    .line 23
    new-instance v0, Lgwq;

    const-string v1, "lojaOnline"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->lojaOnline:Lgwq;

    .line 24
    new-instance v0, Lgwq;

    const-string v1, "carrinhoAbandonadoPDI"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lgwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgwq;->carrinhoAbandonadoPDI:Lgwq;

    .line 10
    const/16 v0, 0xe

    new-array v0, v0, [Lgwq;

    sget-object v1, Lgwq;->emprestimo:Lgwq;

    aput-object v1, v0, v3

    sget-object v1, Lgwq;->investimento:Lgwq;

    aput-object v1, v0, v4

    sget-object v1, Lgwq;->poupanca:Lgwq;

    aput-object v1, v0, v5

    sget-object v1, Lgwq;->carrinhoPoupanca:Lgwq;

    aput-object v1, v0, v6

    sget-object v1, Lgwq;->tela:Lgwq;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lgwq;->link:Lgwq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lgwq;->carrinhoCP:Lgwq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lgwq;->parcelamentoFatura:Lgwq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lgwq;->cardCDB:Lgwq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lgwq;->acordoAbandono:Lgwq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lgwq;->formalizacao:Lgwq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lgwq;->creditounificado:Lgwq;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lgwq;->lojaOnline:Lgwq;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lgwq;->carrinhoAbandonadoPDI:Lgwq;

    aput-object v2, v0, v1

    sput-object v0, Lgwq;->$VALUES:[Lgwq;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgwq;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgwq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgwq;

    return-object v0
.end method

.method public static values()[Lgwq;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgwq;->$VALUES:[Lgwq;

    invoke-virtual {v0}, [Lgwq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgwq;

    return-object v0
.end method
