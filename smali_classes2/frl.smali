.class public Lfrl;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfrk;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lfrk;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lfrl;->a:Lfrk;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 59
    iput-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfrl;->c:Z

    .line 61
    iput-object v1, p0, Lfrl;->h:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 88
    iget-boolean v0, p0, Lfrl;->c:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "dataAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->I(Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "horaAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->L(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    const-string v0, "numProtocoloAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->Q(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    const-string v0, "tipoAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->R(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_4
    const-string v0, "autenticacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_5
    const-string v0, "dataHoraTransacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_6
    const-string v0, "confirmacao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->aq(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_7
    const-string v0, "mensagemErro"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lfrl;->a:Lfrk;

    invoke-static {v0}, Lfrk;->a(Lfrk;)Lfrb;

    move-result-object v0

    iget-object v1, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 68
    const-string v0, "dataAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "horaAgendamento"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numProtocoloAgendamento"

    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tipoAgendamento"

    .line 71
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autenticacao"

    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dataHoraTransacao"

    .line 73
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "confirmacao"

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mensagemErro"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfrl;->c:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfrl;->b:Ljava/lang/StringBuffer;

    .line 81
    :cond_1
    return-void
.end method
