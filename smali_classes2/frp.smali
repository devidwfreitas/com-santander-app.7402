.class public Lfrp;
.super Ljxk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfro;

.field private b:Ljava/lang/StringBuffer;

.field private c:Z

.field private h:Lfrb;


# direct methods
.method public constructor <init>(Lfro;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iput-object p1, p0, Lfrp;->a:Lfro;

    invoke-direct {p0}, Ljxk;-><init>()V

    .line 55
    iput-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfrp;->c:Z

    .line 58
    iput-object v1, p0, Lfrp;->h:Lfrb;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Ljxk;->characters([CII)V

    .line 78
    iget-boolean v0, p0, Lfrp;->c:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 81
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
    const/4 v1, 0x0

    .line 85
    invoke-super {p0, p1, p2, p3}, Ljxk;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "listaAgendamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lfrp;->a:Lfro;

    invoke-static {v0}, Lfro;->a(Lfro;)Lfrc;

    move-result-object v0

    invoke-virtual {v0}, Lfrc;->ai()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfrp;->h:Lfrb;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "dataAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 92
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->I(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "dataSolicitada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 96
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->J(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "descricao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 100
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->K(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    const-string v0, "horaAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 104
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->L(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_5
    const-string v0, "horaSolicitada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 108
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->M(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_6
    const-string v0, "numProtocolo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 112
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->N(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_7
    const-string v0, "status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 116
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->O(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_8
    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iput-boolean v1, p0, Lfrp;->c:Z

    .line 120
    iget-object v0, p0, Lfrp;->h:Lfrb;

    iget-object v1, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfrb;->P(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Ljxk;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 63
    const-string v0, "listaAgendamentos"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lfrb;

    invoke-direct {v0}, Lfrb;-><init>()V

    iput-object v0, p0, Lfrp;->h:Lfrb;

    .line 67
    :cond_0
    const-string v0, "dataAgendamento"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataSolicitada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "descricao"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "horaAgendamento"

    .line 68
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "horaSolicitada"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "numProtocolo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "status"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "valor"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfrp;->c:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lfrp;->b:Ljava/lang/StringBuffer;

    .line 73
    :cond_2
    return-void
.end method
