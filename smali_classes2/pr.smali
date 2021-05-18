.class Lpr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laas;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lpr;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lpr;->a:Lpc;

    invoke-static {v0}, Lpc;->V(Lpc;)V

    .line 1045
    iget-object v0, p0, Lpr;->a:Lpc;

    invoke-static {v0}, Lpc;->W(Lpc;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpr;->a:Lpc;

    invoke-static {v1}, Lpc;->D(Lpc;)Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    iget-object v0, p0, Lpr;->a:Lpc;

    invoke-static {v0}, Lpc;->X(Lpc;)V

    .line 1048
    return-void
.end method
