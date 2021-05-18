.class Liww;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyx;


# instance fields
.field final synthetic a:Liwu;


# direct methods
.method constructor <init>(Liwu;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Liww;->a:Liwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 75
    check-cast p1, Ljava/lang/String;

    .line 76
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    sget-object v1, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    .line 79
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-object v0, p0, Liww;->a:Liwu;

    invoke-static {v0}, Liwu;->c(Liwu;)Ljay;

    move-result-object v0

    invoke-interface {v0, p1}, Ljay;->a(Ljava/lang/String;)V

    .line 83
    return-void
.end method
