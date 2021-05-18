.class Lhfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxv;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhfi;


# direct methods
.method constructor <init>(Lhfi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lhfj;->c:Lhfi;

    iput-object p2, p0, Lhfj;->a:Ljava/lang/String;

    iput-object p3, p0, Lhfj;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodigoRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lhfj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lhfj;->b:Ljava/lang/String;

    return-object v0
.end method
