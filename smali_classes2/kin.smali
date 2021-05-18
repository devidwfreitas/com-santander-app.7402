.class Lkin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lkik;


# direct methods
.method constructor <init>(Lkik;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lkin;->a:Lkik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 143
    const-string v0, ""

    .line 144
    if-nez p1, :cond_0

    .line 145
    const-string v0, "Hoje"

    .line 149
    :goto_0
    const-string v1, "Outros_RecargaDeTelefone_Recarga_DataDeRecarga_Acao"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 147
    :cond_0
    const-string v0, "Agendado"

    goto :goto_0
.end method
